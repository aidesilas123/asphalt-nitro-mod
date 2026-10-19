package com.applovin.impl.sdk;

import android.content.Context;
import android.net.Uri;
import android.support.v4.media.session.PlaybackStateCompat;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.r;
import com.applovin.impl.sdk.utils.StringUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class t {
    private final String TAG = "FileManager";
    private final Object aEU = new Object();
    private final Set<String> aEV = new HashSet();
    private final x logger;
    private final n sdk;

    t(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.BN();
    }

    private long EZ() {
        long jLongValue = ((Long) this.sdk.a(com.applovin.impl.sdk.c.b.aLJ)).longValue();
        if (jLongValue < 0 || !Fa()) {
            return -1L;
        }
        return jLongValue;
    }

    private boolean Fa() {
        return ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aLI)).booleanValue();
    }

    private long I(Context context) {
        boolean zB;
        long jEZ = EZ();
        boolean z = jEZ != -1;
        long seconds = TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis());
        List<String> listB = this.sdk.b(com.applovin.impl.sdk.c.b.aLO);
        long length = 0;
        for (File file : J(context)) {
            if (!z || listB.contains(file.getName()) || e(file) || seconds - TimeUnit.MILLISECONDS.toSeconds(file.lastModified()) <= jEZ) {
                zB = false;
            } else {
                if (x.Fn()) {
                    this.logger.f("FileManager", "File " + file.getName() + " has expired, removing...");
                }
                zB = b(file);
            }
            if (zB) {
                this.sdk.BR().a(com.applovin.impl.sdk.d.f.aSY);
            } else {
                length += file.length();
            }
        }
        return length;
    }

    private List<File> J(Context context) {
        File[] fileArrListFiles;
        File fileK = K(context);
        return (!fileK.isDirectory() || (fileArrListFiles = fileK.listFiles()) == null) ? Collections.emptyList() : Arrays.asList(fileArrListFiles);
    }

    private File K(Context context) {
        return new File(context.getFilesDir(), CampaignEx.JSON_KEY_AD_AL);
    }

    private File a(String str, boolean z, Context context) {
        if (!StringUtils.isValidString(str)) {
            if (x.Fn()) {
                this.logger.f("FileManager", "Nothing to look up, skipping...");
            }
            return null;
        }
        if (x.Fn()) {
            this.logger.f("FileManager", "Looking up cached resource: " + str);
        }
        String strReplace = str.contains("icon") ? str.replace("/", "_").replace(".", "_") : str;
        File fileK = K(context);
        File file = new File(fileK, strReplace);
        if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLU, this.sdk)) {
            boolean z2 = file.length() == 0;
            boolean zEquals = str.equals(".nomedia");
            if (file.exists() && z2 && !zEquals) {
                this.sdk.Cs().a(r.a.FILE_ERROR, "removeEmptyCachedResource", file.getAbsolutePath());
                b(file);
            }
        }
        if (z) {
            try {
                fileK.mkdirs();
            } catch (Throwable th) {
                if (x.Fn()) {
                    this.logger.c("FileManager", "Unable to make cache directory at " + fileK, th);
                }
                this.sdk.Cs().d("FileManager", "createCacheDir", th);
                return null;
            }
        }
        return file;
    }

    private void a(long j, Context context) {
        if (Fa()) {
            long jIntValue = ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aLK)).intValue();
            if (jIntValue == -1) {
                if (x.Fn()) {
                    this.logger.f("FileManager", "Cache has no maximum size set; skipping drop...");
                }
            } else if (bO(j) <= jIntValue) {
                if (x.Fn()) {
                    this.logger.f("FileManager", "Cache is present but under size limit; not dropping...");
                }
            } else {
                if (x.Fn()) {
                    this.logger.f("FileManager", "Cache has exceeded maximum size; dropping...");
                }
                Iterator<File> it = J(context).iterator();
                while (it.hasNext()) {
                    b(it.next());
                }
                this.sdk.BR().a(com.applovin.impl.sdk.d.f.aSZ);
            }
        }
    }

    private boolean a(File file, String str, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar) {
        if (!g(file)) {
            InputStream inputStreamA = null;
            try {
                inputStreamA = a(str, list, z, eVar);
                return a(inputStreamA, file);
            } finally {
                com.applovin.impl.sdk.utils.u.a((Closeable) inputStreamA, this.sdk);
            }
        }
        if (x.Fn()) {
            this.logger.f("FileManager", "File exists for " + str);
        }
        if (eVar == null) {
            return true;
        }
        eVar.bX(file.length());
        return true;
    }

    private boolean b(File file) {
        if (x.Fn()) {
            this.logger.f("FileManager", "Removing file " + file.getName() + " from filesystem...");
        }
        try {
            c(file);
            boolean zDelete = file.delete();
            if (!zDelete) {
                this.sdk.Cs().a(r.a.FILE_ERROR, "removeFile", file.getAbsolutePath());
            }
            return zDelete;
        } catch (Throwable th) {
            try {
                if (x.Fn()) {
                    this.logger.c("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th);
                }
                this.sdk.Cs().d("FileManager", "removeFile", th);
                return false;
            } finally {
                d(file);
            }
        }
    }

    private long bO(long j) {
        return j / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
    }

    private void c(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.aEU) {
            boolean zAdd = this.aEV.add(absolutePath);
            while (!zAdd) {
                try {
                    this.aEU.wait();
                    zAdd = this.aEV.add(absolutePath);
                } catch (InterruptedException e2) {
                    if (x.Fn()) {
                        this.logger.c("FileManager", "Lock '" + absolutePath + "' interrupted", e2);
                    }
                    throw new RuntimeException(e2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(com.applovin.impl.sdk.ad.e eVar, Context context) {
        b(a(eVar.FI().getLastPathSegment(), context));
    }

    private void d(File file) {
        String absolutePath = file.getAbsolutePath();
        synchronized (this.aEU) {
            if (!this.aEV.remove(absolutePath)) {
                this.sdk.Cs().a(r.a.FILE_ERROR, "unlockFile", absolutePath);
            }
            this.aEU.notifyAll();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(com.applovin.impl.sdk.ad.e eVar, Context context) {
        ArrayList arrayList = new ArrayList(eVar.Gn());
        arrayList.add(eVar.FI());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            b(a(((Uri) it.next()).getLastPathSegment(), context));
        }
    }

    private boolean e(File file) {
        boolean zContains;
        String absolutePath = file.getAbsolutePath();
        synchronized (this.aEU) {
            zContains = this.aEV.contains(absolutePath);
        }
        return zContains;
    }

    private boolean f(File file) {
        if (file == null) {
            return false;
        }
        String absolutePath = file.getAbsolutePath();
        synchronized (this.aEU) {
            if (this.aEV.contains(absolutePath)) {
                return false;
            }
            c(file);
            return true;
        }
    }

    public void H(Context context) {
        if (Fa() && this.sdk.Bp()) {
            if (x.Fn()) {
                this.logger.f("FileManager", "Compacting cache...");
            }
            a(I(context), context);
        }
    }

    public void L(Context context) {
        try {
            a(".nomedia", context);
            File file = new File(K(context), ".nomedia");
            if (g(file)) {
                return;
            }
            if (x.Fn()) {
                this.logger.f("FileManager", "Creating .nomedia file at " + file.getAbsolutePath());
            }
            if (file.createNewFile()) {
                return;
            }
            if (x.Fn()) {
                this.logger.i("FileManager", "Failed to create .nomedia file");
            }
            this.sdk.Cs().a(r.a.FILE_ERROR, "createNoMediaFile", (String) null);
        } catch (IOException e2) {
            if (x.Fn()) {
                this.logger.c("FileManager", "Failed to create .nomedia file", e2);
            }
        }
    }

    public File a(String str, Context context) {
        return a(str, true, context);
    }

    public InputStream a(String str, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar) {
        if (z && !com.applovin.impl.sdk.utils.u.d(str, list)) {
            if (x.Fn()) {
                this.logger.f("FileManager", "Domain is not whitelisted, skipping precache for url: " + str);
            }
            return null;
        }
        if (((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.aNN)).booleanValue() && !str.contains("https://")) {
            if (x.Fn()) {
                this.logger.h("FileManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            }
            str = str.replace("http://", "https://");
        }
        if (x.Fn()) {
            this.logger.f("FileManager", "Loading " + str + "...");
        }
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.setConnectTimeout(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNL)).intValue());
            httpURLConnection.setReadTimeout(((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.aNM)).intValue());
            httpURLConnection.setDefaultUseCaches(true);
            httpURLConnection.setUseCaches(true);
            httpURLConnection.setAllowUserInteraction(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            int responseCode = httpURLConnection.getResponseCode();
            eVar.gO(responseCode);
            this.sdk.Cs().b(str, "loadResource", responseCode);
            if (responseCode >= 200 && responseCode < 300) {
                if (x.Fn()) {
                    this.logger.f("FileManager", "Opened stream to resource " + str);
                }
                return httpURLConnection.getInputStream();
            }
            return null;
        } catch (Throwable th) {
            if (x.Fn()) {
                this.logger.c("FileManager", "Error loading " + str, th);
            }
            this.sdk.Cs().d("FileManager", "loadResource-" + str, th);
            eVar.p(th);
            return null;
        }
    }

    public String a(Context context, String str, String str2, List<String> list, boolean z, com.applovin.impl.sdk.d.e eVar) {
        return a(context, str, str2, list, z, false, eVar);
    }

    public String a(Context context, String str, String str2, List<String> list, boolean z, boolean z2, com.applovin.impl.sdk.d.e eVar) {
        if (!StringUtils.isValidString(str)) {
            if (x.Fn()) {
                this.logger.f("FileManager", "Nothing to cache, skipping...");
            }
            this.sdk.Cs().a(r.a.FILE_ERROR, "cacheResource", (String) null);
            return null;
        }
        String strA = com.applovin.impl.sdk.utils.u.a(Uri.parse(str), str2, this.sdk);
        File fileA = a(strA, context);
        if (!a(fileA, str, list, z, eVar)) {
            return null;
        }
        if (x.Fn()) {
            this.logger.f("FileManager", "Caching succeeded for file " + strA);
        }
        return z2 ? Uri.fromFile(fileA).toString() : strA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    public String a(File file) {
        FileInputStream fileInputStream;
        if (file == null) {
            return null;
        }
        boolean zFn = x.Fn();
        ?? r2 = zFn;
        if (zFn) {
            x xVar = this.logger;
            xVar.f("FileManager", "Reading resource from filesystem: " + file.getName());
            r2 = xVar;
        }
        try {
            try {
                c(file);
                fileInputStream = new FileInputStream(file);
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int i = fileInputStream.read(bArr, 0, 8192);
                        if (i < 0) {
                            String string = byteArrayOutputStream.toString(C.UTF8_NAME);
                            com.applovin.impl.sdk.utils.u.a((Closeable) fileInputStream, this.sdk);
                            d(file);
                            return string;
                        }
                        try {
                            byteArrayOutputStream.write(bArr, 0, i);
                        } catch (Throwable th) {
                            com.applovin.impl.sdk.utils.u.a((Closeable) byteArrayOutputStream, this.sdk);
                            this.sdk.Cs().d("FileManager", "readFile", th);
                            com.applovin.impl.sdk.utils.u.a((Closeable) fileInputStream, this.sdk);
                            d(file);
                            return null;
                        }
                    }
                } catch (FileNotFoundException e2) {
                    e = e2;
                    if (x.Fn()) {
                        this.logger.g("FileManager", "File not found. " + e);
                    }
                    this.sdk.Cs().d("FileManager", "readFileNotFound", e);
                    com.applovin.impl.sdk.utils.u.a((Closeable) fileInputStream, this.sdk);
                    d(file);
                    return null;
                } catch (IOException e3) {
                    e = e3;
                    if (x.Fn()) {
                        this.logger.f("FileManager", "Failed to read file: " + file.getName() + e);
                    }
                    this.sdk.Cs().d("FileManager", "readFileIO", e);
                    com.applovin.impl.sdk.utils.u.a((Closeable) fileInputStream, this.sdk);
                    d(file);
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    if (x.Fn()) {
                        this.logger.c("FileManager", "Unknown failure to read file.", th);
                    }
                    this.sdk.Cs().d("FileManager", "readFile", th);
                    com.applovin.impl.sdk.utils.u.a((Closeable) fileInputStream, this.sdk);
                    d(file);
                    return null;
                }
            } catch (Throwable th3) {
                com.applovin.impl.sdk.utils.u.a((Closeable) r2, this.sdk);
                d(file);
                throw th3;
            }
        } catch (FileNotFoundException e4) {
            e = e4;
            fileInputStream = null;
        } catch (IOException e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th4) {
            th = th4;
            fileInputStream = null;
        }
    }

    public boolean a(File file, String str, List<String> list, com.applovin.impl.sdk.d.e eVar) {
        return a(file, str, list, true, eVar);
    }

    public boolean a(InputStream inputStream, File file) {
        if (file == null) {
            return false;
        }
        if (x.Fn()) {
            this.logger.f("FileManager", "Caching " + file.getAbsolutePath() + "...");
        }
        if (!a(inputStream, file, false)) {
            if (x.Fn()) {
                this.logger.i("FileManager", "Unable to cache " + file.getAbsolutePath());
            }
            return false;
        }
        if (!x.Fn()) {
            return true;
        }
        this.logger.f("FileManager", "Caching completed for " + file);
        return true;
    }

    public boolean a(InputStream inputStream, File file, boolean z) throws Throwable {
        boolean z2;
        byte[] bArr;
        if (x.Fn()) {
            this.logger.f("FileManager", "Writing resource to filesystem: " + file.getName());
        }
        FileOutputStream fileOutputStream = null;
        boolean z3 = true;
        try {
            c(file);
        } catch (Throwable th) {
            th = th;
        }
        if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aMa, this.sdk) && !z && file.exists()) {
            if (x.Fn()) {
                this.logger.f("FileManager", "Overwrite not allowed for local resource: " + file.getName() + " - aborting write.");
            }
            this.sdk.Cs().a(r.a.FILE_ERROR, "cacheResourceOverwriteAttempted", file.getAbsolutePath());
            com.applovin.impl.sdk.utils.u.a((Closeable) null, this.sdk);
            d(file);
            return true;
        }
        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
        try {
            bArr = new byte[8192];
        } catch (Throwable th2) {
            th = th2;
            fileOutputStream = fileOutputStream2;
            z2 = false;
        }
        while (true) {
            int i = inputStream.read(bArr, 0, 8192);
            if (i < 0) {
                com.applovin.impl.sdk.utils.u.a((Closeable) fileOutputStream2, this.sdk);
                d(file);
                return true;
            }
            try {
                fileOutputStream2.write(bArr, 0, i);
            } catch (Throwable th3) {
                if (x.Fn()) {
                    this.logger.c("FileManager", "Failed to write next buffer to file", th3);
                }
                try {
                    this.sdk.Cs().d("FileManager", "writeResourceStream", th3);
                    com.applovin.impl.sdk.utils.u.a((Closeable) fileOutputStream2, this.sdk);
                    if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLT, this.sdk)) {
                        try {
                            if (!file.delete()) {
                                this.sdk.Cs().a(r.a.FILE_ERROR, "removeFileAfterCacheFail", file.getAbsolutePath());
                            }
                        } catch (Throwable th4) {
                            if (x.Fn()) {
                                this.logger.c("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th4);
                            }
                            this.sdk.Cs().d("FileManager", "removeFileAfterCacheFail", th4);
                        }
                    }
                    d(file);
                    return false;
                } catch (Throwable th5) {
                    th = th5;
                    fileOutputStream = fileOutputStream2;
                    z2 = true;
                }
            }
            try {
                if (x.Fn()) {
                    this.logger.c("FileManager", "Unknown failure to write file.", th);
                }
            } catch (Throwable th6) {
                th = th6;
                z3 = z2;
            }
            try {
                this.sdk.Cs().d("FileManager", "writeResource", th);
                com.applovin.impl.sdk.utils.u.a((Closeable) fileOutputStream, this.sdk);
                if (com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLT, this.sdk)) {
                    try {
                        if (!file.delete()) {
                            this.sdk.Cs().a(r.a.FILE_ERROR, "removeFileAfterCacheFail", file.getAbsolutePath());
                        }
                    } catch (Throwable th7) {
                        if (x.Fn()) {
                            this.logger.c("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th7);
                        }
                        this.sdk.Cs().d("FileManager", "removeFileAfterCacheFail", th7);
                    }
                }
                d(file);
                return false;
            } catch (Throwable th8) {
                th = th8;
                com.applovin.impl.sdk.utils.u.a((Closeable) fileOutputStream, this.sdk);
                if (z3 && com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLT, this.sdk)) {
                    try {
                        if (!file.delete()) {
                            this.sdk.Cs().a(r.a.FILE_ERROR, "removeFileAfterCacheFail", file.getAbsolutePath());
                        }
                    } catch (Throwable th9) {
                        if (x.Fn()) {
                            this.logger.c("FileManager", "Failed to remove file " + file.getName() + " from filesystem!", th9);
                        }
                        this.sdk.Cs().d("FileManager", "removeFileAfterCacheFail", th9);
                    }
                }
                d(file);
                throw th;
            }
        }
    }

    public void b(final com.applovin.impl.sdk.ad.e eVar, final Context context) {
        this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, false, "removeCachedResourcesForAd", new Runnable() { // from class: com.applovin.impl.sdk.s1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.e(eVar, context);
            }
        }), q.b.BACKGROUND);
    }

    public boolean b(String str, Context context) {
        boolean z = false;
        File fileA = a(str, false, context);
        if (!f(fileA)) {
            return false;
        }
        if (fileA.exists() && !fileA.isDirectory()) {
            z = true;
        }
        d(fileA);
        return z;
    }

    public void c(final com.applovin.impl.sdk.ad.e eVar, final Context context) {
        this.sdk.BO().a(new com.applovin.impl.sdk.e.ab(this.sdk, false, "removeCachedVideoResourceForAd", new Runnable() { // from class: com.applovin.impl.sdk.t1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.d(eVar, context);
            }
        }), q.b.BACKGROUND);
    }

    public boolean c(String str, Context context) {
        return g(a(str, false, context));
    }

    public boolean g(File file) {
        if (!com.applovin.impl.sdk.utils.u.a(com.applovin.impl.sdk.c.b.aLZ, this.sdk)) {
            return (file == null || !file.exists() || file.isDirectory()) ? false : true;
        }
        if (file == null) {
            return false;
        }
        com.applovin.impl.sdk.utils.u.LE();
        c(file);
        boolean z = file.exists() && !file.isDirectory();
        d(file);
        return z;
    }
}
