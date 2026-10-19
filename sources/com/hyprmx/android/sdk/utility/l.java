package com.hyprmx.android.sdk.utility;

import com.json.o2;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class l implements Closeable {
    public static final Pattern p = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final a q = new a();
    public final File b;
    public final File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f4721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final File f4722e;
    public BufferedWriter l;
    public int m;
    public final ThreadPoolExecutor a = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final LinkedHashMap<String, d> h = new LinkedHashMap<>(0, 0.75f, true);
    public long k = 0;
    public final b n = new b();
    public long o = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f4723f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f4724g = 1;
    public final long j = 0;
    public final boolean i = false;

    public class a extends OutputStream {
        @Override // java.io.OutputStream
        public final void write(int i) {
        }
    }

    public class b implements Callable<Void> {
        public b() {
        }

        @Override // java.util.concurrent.Callable
        public final Void call() {
            synchronized (l.this) {
                l lVar = l.this;
                if (lVar.l != null) {
                    if (lVar.i) {
                        while (lVar.k > lVar.j) {
                            lVar.l(lVar.h.entrySet().iterator().next().getKey());
                        }
                    }
                    l lVar2 = l.this;
                    int i = lVar2.m;
                    if (i >= 2000 && i >= lVar2.h.size()) {
                        l.this.f();
                        l.this.m = 0;
                    }
                }
            }
            return null;
        }
    }

    public final class c {
        public final d a;
        public final boolean[] b;
        public boolean c;

        public class a extends FilterOutputStream {
            public a(FileOutputStream fileOutputStream) {
                super(fileOutputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public final void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }
        }

        public c(d dVar) {
            this.a = dVar;
            this.b = dVar.c ? null : new boolean[l.this.f4724g];
        }

        public final void a() {
            l.a(l.this, this, false);
        }

        public final OutputStream b() {
            FileOutputStream fileOutputStream;
            a aVar;
            l lVar = l.this;
            if (lVar.f4724g <= 0) {
                throw new IllegalArgumentException("Expected index 0 to be greater than 0 and less than the maximum value count of " + l.this.f4724g);
            }
            synchronized (lVar) {
                d dVar = this.a;
                if (dVar.f4726d != this) {
                    throw new IllegalStateException();
                }
                if (!dVar.c) {
                    this.b[0] = true;
                }
                File fileB = dVar.b(0);
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException unused) {
                    l.this.b.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileB);
                    } catch (FileNotFoundException unused2) {
                        return l.q;
                    }
                }
                aVar = new a(fileOutputStream);
            }
            return aVar;
        }
    }

    public final class d {
        public final String a;
        public final long[] b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c f4726d;

        public /* synthetic */ d() {
            throw null;
        }

        public d(String str) {
            this.a = str;
            this.b = new long[l.this.f4724g];
        }

        public final File a(int i) {
            return new File(l.this.b, this.a + "." + i);
        }

        public final File b(int i) {
            return new File(l.this.b, this.a + "." + i + ".tmp");
        }
    }

    public final class e implements Closeable {
        public final InputStream[] a;
        public final long[] b;

        public e(InputStream[] inputStreamArr, long[] jArr) {
            this.a = inputStreamArr;
            this.b = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            for (InputStream inputStream : this.a) {
                Charset charset = u0.a;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused) {
                    }
                }
            }
        }
    }

    public l(File file) {
        this.b = file;
        this.c = new File(file, "journal");
        this.f4721d = new File(file, "journal.tmp");
        this.f4722e = new File(file, "journal.bkp");
    }

    public static l a(File file) throws IOException {
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else if (!file2.renameTo(file3)) {
                throw new IOException();
            }
        }
        l lVar = new l(file);
        if (lVar.c.exists()) {
            try {
                lVar.e();
                lVar.d();
                return lVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                lVar.close();
                u0.a(lVar.b);
            }
        }
        file.mkdirs();
        l lVar2 = new l(file);
        lVar2.f();
        return lVar2;
    }

    /* JADX WARN: Removed duplicated region for block: B:57:0x0118 A[Catch: all -> 0x0127, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x000a, B:10:0x000f, B:12:0x0013, B:14:0x0019, B:16:0x0023, B:20:0x002c, B:21:0x0042, B:23:0x0044, B:25:0x0048, B:27:0x004e, B:29:0x0054, B:37:0x0081, B:30:0x006e, B:32:0x0074, B:35:0x007b, B:36:0x0080, B:38:0x0084, B:40:0x0094, B:42:0x00af, B:43:0x00bc, B:45:0x00cf, B:47:0x00f6, B:49:0x00ff, B:51:0x0107, B:53:0x010d, B:57:0x0118, B:46:0x00d7, B:60:0x0121, B:61:0x0126), top: B:65:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void a(com.hyprmx.android.sdk.utility.l r11, com.hyprmx.android.sdk.utility.l.c r12, boolean r13) {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.utility.l.a(com.hyprmx.android.sdk.utility.l, com.hyprmx.android.sdk.utility.l$c, boolean):void");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.l == null) {
            return;
        }
        Iterator it = new ArrayList(this.h.values()).iterator();
        while (it.hasNext()) {
            c cVar = ((d) it.next()).f4726d;
            if (cVar != null) {
                cVar.a();
            }
        }
        if (this.i) {
            while (this.k > this.j) {
                l(this.h.entrySet().iterator().next().getKey());
            }
        }
        this.l.close();
        this.l = null;
    }

    public final void d() throws IOException {
        File file = this.f4721d;
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
        Iterator<d> it = this.h.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.f4726d == null) {
                while (i < this.f4724g) {
                    this.k += next.b[i];
                    i++;
                }
            } else {
                next.f4726d = null;
                while (i < this.f4724g) {
                    File fileA = next.a(i);
                    if (fileA.exists() && !fileA.delete()) {
                        throw new IOException();
                    }
                    File fileB = next.b(i);
                    if (fileB.exists() && !fileB.delete()) {
                        throw new IOException();
                    }
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void e() {
        q0 q0Var = new q0(new FileInputStream(this.c), u0.a);
        try {
            String strD = q0Var.d();
            String strD2 = q0Var.d();
            String strD3 = q0Var.d();
            String strD4 = q0Var.d();
            String strD5 = q0Var.d();
            if (!"libcore.io.DiskLruCache".equals(strD) || !"1".equals(strD2) || !Integer.toString(this.f4723f).equals(strD3) || !Integer.toString(this.f4724g).equals(strD4) || !"".equals(strD5)) {
                throw new IOException("unexpected journal header: [" + strD + ", " + strD2 + ", " + strD4 + ", " + strD5 + o2.i.f6491e);
            }
            int i = 0;
            while (true) {
                try {
                    k(q0Var.d());
                    i++;
                } catch (EOFException unused) {
                    this.m = i - this.h.size();
                    if (q0Var.f4730e == -1) {
                        f();
                    } else {
                        this.l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), u0.a));
                    }
                    try {
                        q0Var.close();
                        return;
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            try {
                q0Var.close();
            } catch (RuntimeException e3) {
                throw e3;
            } catch (Exception unused3) {
            }
            throw th;
        }
    }

    public final synchronized void f() {
        StringBuilder sb;
        BufferedWriter bufferedWriter = this.l;
        if (bufferedWriter != null) {
            bufferedWriter.close();
        }
        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f4721d), u0.a));
        try {
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write("\n");
            bufferedWriter2.write("1");
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f4723f));
            bufferedWriter2.write("\n");
            bufferedWriter2.write(Integer.toString(this.f4724g));
            bufferedWriter2.write("\n");
            bufferedWriter2.write("\n");
            for (d dVar : this.h.values()) {
                if (dVar.f4726d != null) {
                    sb = new StringBuilder();
                    sb.append("DIRTY ");
                    sb.append(dVar.a);
                    sb.append('\n');
                } else {
                    sb = new StringBuilder();
                    sb.append("CLEAN ");
                    sb.append(dVar.a);
                    StringBuilder sb2 = new StringBuilder();
                    for (long j : dVar.b) {
                        sb2.append(' ');
                        sb2.append(j);
                    }
                    sb.append(sb2.toString());
                    sb.append('\n');
                }
                bufferedWriter2.write(sb.toString());
            }
            bufferedWriter2.close();
            if (this.c.exists()) {
                File file = this.c;
                File file2 = this.f4722e;
                if (file2.exists() && !file2.delete()) {
                    throw new IOException();
                }
                if (!file.renameTo(file2)) {
                    throw new IOException();
                }
            }
            if (!this.f4721d.renameTo(this.c)) {
                throw new IOException();
            }
            this.f4722e.delete();
            this.l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c, true), u0.a));
        } catch (Throwable th) {
            bufferedWriter2.close();
            throw th;
        }
    }

    public final c i(String str) {
        synchronized (this) {
            if (this.l == null) {
                throw new IllegalStateException("cache is closed");
            }
            if (!p.matcher(str).matches()) {
                throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
            }
            d dVar = this.h.get(str);
            if (dVar == null) {
                dVar = new d(str);
                this.h.put(str, dVar);
            } else if (dVar.f4726d != null) {
                return null;
            }
            c cVar = new c(dVar);
            dVar.f4726d = cVar;
            this.l.write("DIRTY " + str + '\n');
            this.l.flush();
            return cVar;
        }
    }

    public final synchronized e j(String str) {
        InputStream inputStream;
        if (this.l == null) {
            throw new IllegalStateException("cache is closed");
        }
        if (!p.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
        d dVar = this.h.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f4724g];
        int i = 0;
        for (int i2 = 0; i2 < this.f4724g; i2++) {
            try {
                inputStreamArr[i2] = new FileInputStream(dVar.a(i2));
            } catch (FileNotFoundException unused) {
                while (i < this.f4724g && (inputStream = inputStreamArr[i]) != null) {
                    Charset charset = u0.a;
                    try {
                        inputStream.close();
                    } catch (RuntimeException e2) {
                        throw e2;
                    } catch (Exception unused2) {
                    }
                    i++;
                }
                return null;
            }
        }
        this.m++;
        this.l.append((CharSequence) ("READ " + str + '\n'));
        int i3 = this.m;
        if (i3 >= 2000 && i3 >= this.h.size()) {
            i = 1;
        }
        if (i != 0) {
            this.a.submit(this.n);
        }
        return new e(inputStreamArr, dVar.b);
    }

    public final void k(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.h.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = this.h.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring);
            this.h.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f4726d = new c(dVar);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.c = true;
        dVar.f4726d = null;
        if (strArrSplit.length != l.this.f4724g) {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                dVar.b[i2] = Long.parseLong(strArrSplit[i2]);
            } catch (NumberFormatException unused) {
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
        }
    }

    public final synchronized boolean l(String str) {
        if (this.l == null) {
            throw new IllegalStateException("cache is closed");
        }
        if (!p.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
        }
        d dVar = this.h.get(str);
        boolean z = false;
        if (dVar != null && dVar.f4726d == null) {
            for (int i = 0; i < this.f4724g; i++) {
                File fileA = dVar.a(i);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                long j = this.k;
                long[] jArr = dVar.b;
                this.k = j - jArr[i];
                jArr[i] = 0;
            }
            this.m++;
            this.l.append((CharSequence) ("REMOVE " + str + '\n'));
            this.h.remove(str);
            int i2 = this.m;
            if (i2 >= 2000 && i2 >= this.h.size()) {
                z = true;
            }
            if (z) {
                this.a.submit(this.n);
            }
            return true;
        }
        return false;
    }
}
