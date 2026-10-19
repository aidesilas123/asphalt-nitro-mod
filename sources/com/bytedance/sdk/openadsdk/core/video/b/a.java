package com.bytedance.sdk.openadsdk.core.video.b;

import android.text.TextUtils;
import android.webkit.WebResourceResponse;
import androidx.webkit.ProxyConfig;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.utils.f;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.n;
import com.bytedance.sdk.component.utils.y;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.json.b4;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: compiled from: PlayableCache.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static volatile a a;
    private String b;
    private final Map<q, b> c = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<String, JSONObject> f1699d = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f1700e = new AtomicBoolean(false);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<String> f1701f = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.video.b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PlayableCache.java */
    public interface InterfaceC0141a {
        void a(boolean z);
    }

    /* JADX INFO: compiled from: PlayableCache.java */
    private static class b {
        long a;
        long b;
        long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        long f1704d;

        private b() {
        }

        public long a() {
            return this.b - this.a;
        }

        public b a(long j) {
            this.a = j;
            return this;
        }

        public long b() {
            return this.f1704d - this.c;
        }

        public b b(long j) {
            this.b = j;
            return this;
        }

        public b c(long j) {
            this.c = j;
            return this;
        }

        public b d(long j) {
            this.f1704d = j;
            return this;
        }
    }

    private a() {
    }

    public static a a() {
        if (a == null) {
            synchronized (a.class) {
                if (a == null) {
                    a = new a();
                }
            }
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File a(File file) {
        File file2 = new File(file, "tt_open_ad_sdk_check_res.dat");
        return b(file2) ? file2 : new File(file, "tt_open_ad_sdk_check_res.dat");
    }

    private String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split("\\?");
        if (strArrSplit != null && strArrSplit.length == 2) {
            if (strArrSplit[0] != null && strArrSplit[0].endsWith("/")) {
                str = str.substring(0, strArrSplit.length - 1);
            }
            if (strArrSplit[0] != null && strArrSplit[0].endsWith("index.html")) {
                str = strArrSplit[0];
            }
        }
        return str.replace("index.html", "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject a(File file, boolean z) {
        byte[] bArrD;
        try {
            if (!b(file) || (bArrD = f.d(file)) == null || bArrD.length <= 0) {
                return null;
            }
            String strC = TextUtils.equals(file.getName(), "tt_open_ad_sdk_check_res.dat") ? com.bytedance.sdk.component.utils.a.c(new String(bArrD)) : com.bytedance.sdk.component.c.a.b(new String(bArrD), com.bytedance.sdk.openadsdk.core.a.b());
            if (TextUtils.isEmpty(strC)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(strC);
            if (z && jSONObject.length() > 0) {
                this.f1699d.put(file.getParentFile().getName(), jSONObject);
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final InterfaceC0141a interfaceC0141a, final boolean z) {
        aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.3
            @Override // java.lang.Runnable
            public void run() {
                InterfaceC0141a interfaceC0141a2 = interfaceC0141a;
                if (interfaceC0141a2 != null) {
                    interfaceC0141a2.a(z);
                }
            }
        });
    }

    private boolean a(String str, String str2, File file) {
        JSONObject jSONObject;
        String strOptString;
        return (file == null || !file.exists() || (jSONObject = this.f1699d.get(str)) == null || (strOptString = jSONObject.optString(str2)) == null || !strOptString.equalsIgnoreCase(e.a(file))) ? false : true;
    }

    private boolean b(File file) {
        return file != null && file.exists() && file.isFile() && file.canRead();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String c() {
        File file = new File(d(), "games");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(File file) {
        d(file);
        try {
            h.b().n().a(file);
        } catch (Throwable unused) {
        }
    }

    private String d() {
        if (TextUtils.isEmpty(this.b)) {
            try {
                File file = new File(o.a().getCacheDir(), "playable");
                if (!file.exists()) {
                    file.mkdirs();
                }
                this.b = file.getAbsolutePath();
            } catch (Throwable th) {
                l.e("PlayableCache", "init root path error: " + th);
            }
        }
        return this.b;
    }

    private void d(File file) {
        try {
            if (!file.exists() || file.setLastModified(System.currentTimeMillis())) {
                return;
            }
            file.renameTo(file);
            file.lastModified();
        } catch (Throwable unused) {
        }
    }

    private boolean e(File file) {
        String[] list;
        if (file == null || !file.isDirectory() || (list = file.list()) == null || list.length <= 0) {
            return false;
        }
        return Arrays.asList(list).contains("index.html");
    }

    public WebResourceResponse a(String str, String str2, String str3) {
        try {
            if (!this.f1700e.get() || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
                return null;
            }
            try {
                if (str3.startsWith(ProxyConfig.MATCH_HTTP) && str3.contains("?")) {
                    str3 = str3.split("\\?")[0];
                    if (str3.endsWith("/")) {
                        str3 = str3.substring(0, str3.length() - 1);
                    }
                }
            } catch (Throwable unused) {
            }
            String strA = n.a(o.a(), str3);
            if (TextUtils.isEmpty(strA)) {
                return null;
            }
            String strA2 = e.a(str);
            if (TextUtils.isEmpty(strA2)) {
                return null;
            }
            File file = new File(c(), strA2);
            if (e(file)) {
                String strA3 = a(str2);
                if (TextUtils.isEmpty(strA3)) {
                    return null;
                }
                String strReplace = str3.replace(strA3, "");
                if (TextUtils.isEmpty(strReplace)) {
                    return null;
                }
                File file2 = new File(file, strReplace);
                if (a(strA2, strReplace, file2) && file2.getCanonicalPath().startsWith(file.getCanonicalPath())) {
                    return new WebResourceResponse(strA, b4.L, new FileInputStream(file2));
                }
            }
        } catch (Throwable th) {
            l.c("PlayableCache", "playable intercept error: ", th);
        }
        return null;
    }

    public void a(final q qVar, final InterfaceC0141a interfaceC0141a) {
        if (qVar == null || qVar.K() == null || TextUtils.isEmpty(qVar.K().m())) {
            com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar, -701, (String) null);
            a(interfaceC0141a, false);
            return;
        }
        final String strM = qVar.K().m();
        if (this.f1701f.contains(strM)) {
            return;
        }
        this.c.put(qVar, new b().a(System.currentTimeMillis()));
        com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar);
        String strA = e.a(strM);
        final File file = new File(c(), strA);
        if (e(file)) {
            com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar, -702, (String) null);
            d(file);
            this.c.remove(qVar);
            a(interfaceC0141a, true);
            return;
        }
        try {
            f.c(file);
        } catch (Throwable unused) {
        }
        this.f1701f.add(strM);
        File file2 = new File(d(), strA + ".zip");
        com.bytedance.sdk.component.f.b.a aVarD = com.bytedance.sdk.openadsdk.k.c.a().b().d();
        aVarD.a(strM);
        aVarD.a(file2.getParent(), file2.getName());
        aVarD.a(new com.bytedance.sdk.component.f.a.a() { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.2
            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, final com.bytedance.sdk.component.f.b bVar) {
                a.this.f1701f.remove(strM);
                final b bVar2 = (b) a.this.c.remove(qVar);
                if (bVar2 != null) {
                    bVar2.b(System.currentTimeMillis());
                }
                if (bVar.f() && bVar.e() != null && bVar.e().exists()) {
                    l.c("PlayableCache", "onResponse: Playable zip download success");
                    aa.b(new com.bytedance.sdk.component.g.h("downloadZip") { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            long jB;
                            boolean z = true;
                            try {
                                b bVar3 = bVar2;
                                if (bVar3 != null) {
                                    bVar3.c(System.currentTimeMillis());
                                }
                                y.a(bVar.e().getAbsolutePath(), a.this.c());
                                b bVar4 = bVar2;
                                if (bVar4 != null) {
                                    bVar4.d(System.currentTimeMillis());
                                }
                                b bVar5 = bVar2;
                                long jA = 0;
                                if (bVar5 != null) {
                                    jA = bVar5.a();
                                    jB = bVar2.b();
                                } else {
                                    jB = 0;
                                }
                                com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar, jA, jB);
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                a.this.c(file);
                                try {
                                    AnonymousClass2 anonymousClass22 = AnonymousClass2.this;
                                    a.this.a(a.this.a(file), true);
                                } catch (Throwable unused2) {
                                }
                            } catch (Throwable th) {
                                l.c("PlayableCache", "unzip error: ", th);
                                com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar, -704, th.getMessage());
                                z = false;
                            }
                            try {
                                bVar.e().delete();
                            } catch (Throwable unused3) {
                            }
                            AnonymousClass2 anonymousClass23 = AnonymousClass2.this;
                            a.this.a(interfaceC0141a, z);
                        }
                    });
                } else {
                    com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar, bVar.a() != 0 ? bVar.a() : -700, (String) null);
                    l.c("PlayableCache", "onResponse: Playable zip download fail");
                    a.this.a(interfaceC0141a, false);
                }
            }

            @Override // com.bytedance.sdk.component.f.a.a
            public void a(com.bytedance.sdk.component.f.b.c cVar, IOException iOException) {
                a.this.f1701f.remove(strM);
                a.this.c.remove(qVar);
                com.bytedance.sdk.openadsdk.core.video.b.b.a(qVar, -700, iOException.getMessage());
                a.this.a(interfaceC0141a, false);
                l.c("PlayableCache", "onFailure: Playable zip download fail");
            }
        });
    }

    public boolean a(q qVar) {
        if (this.f1700e.get() && qVar != null && qVar.K() != null && qVar.K().m() != null) {
            try {
                String strA = e.a(qVar.K().m());
                if (this.f1699d.get(strA) == null) {
                    return false;
                }
                return e(new File(c(), strA));
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public void b() {
        if (this.f1700e.get()) {
            return;
        }
        aa.a(new com.bytedance.sdk.component.g.h("PlayableCache_init") { // from class: com.bytedance.sdk.openadsdk.core.video.b.a.1
            @Override // java.lang.Runnable
            public void run() {
                File[] fileArrListFiles;
                try {
                    String strC = a.this.c();
                    if (!TextUtils.isEmpty(strC)) {
                        File file = new File(strC);
                        if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                            for (File file2 : fileArrListFiles) {
                                try {
                                    a.this.a(a.this.a(file2), true);
                                } catch (Throwable unused) {
                                }
                            }
                        }
                    }
                } catch (Throwable unused2) {
                }
                a.this.f1700e.set(true);
            }
        });
    }
}
