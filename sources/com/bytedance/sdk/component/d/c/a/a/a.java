package com.bytedance.sdk.component.d.c.a.a;

import android.util.Log;
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
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: DiskLruCache.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements Closeable {
    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream c = new OutputStream() { // from class: com.bytedance.sdk.component.d.c.a.a.a.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };
    final ExecutorService b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f937d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final File f938e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final File f939f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final File f940g;
    private final int h;
    private long i;
    private final int j;
    private Writer l;
    private int n;
    private long k = 0;
    private final LinkedHashMap<String, b> m = new LinkedHashMap<>(0, 0.75f, true);
    private long o = -1;
    private long p = 0;
    private final Callable<Void> q = new Callable<Void>() { // from class: com.bytedance.sdk.component.d.c.a.a.a.1
        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws Exception {
            synchronized (a.this) {
                if (a.this.l == null) {
                    return null;
                }
                a.this.h();
                if (a.this.f()) {
                    a.this.e();
                    a.this.n = 0;
                }
                return null;
            }
        }
    };

    /* JADX INFO: renamed from: com.bytedance.sdk.component.d.c.a.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class C0113a {
        private final b b;
        private final boolean[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f941d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f942e;

        /* JADX INFO: renamed from: com.bytedance.sdk.component.d.c.a.a.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DiskLruCache.java */
        private class C0114a extends FilterOutputStream {
            private C0114a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0113a.this.f941d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0113a.this.f941d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    C0113a.this.f941d = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    C0113a.this.f941d = true;
                }
            }
        }

        private C0113a(b bVar) {
            this.b = bVar;
            this.c = bVar.f943d ? null : new boolean[a.this.j];
        }

        public OutputStream a(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C0114a c0114a;
            if (i < 0 || i >= a.this.j) {
                throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + a.this.j);
            }
            synchronized (a.this) {
                if (this.b.f944e != this) {
                    throw new IllegalStateException();
                }
                if (!this.b.f943d) {
                    this.c[i] = true;
                }
                File fileB = this.b.b(i);
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException unused) {
                    a.this.f937d.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileB);
                    } catch (FileNotFoundException unused2) {
                        return a.c;
                    }
                }
                c0114a = new C0114a(fileOutputStream);
            }
            return c0114a;
        }

        public void a() throws IOException {
            if (this.f941d) {
                a.this.a(this, false);
                a.this.c(this.b.b);
            } else {
                a.this.a(this, true);
            }
            this.f942e = true;
        }

        public void b() throws IOException {
            a.this.a(this, false);
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    private final class b {
        private final String b;
        private final long[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f943d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private C0113a f944e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f945f;

        private b(String str) {
            this.b = str;
            this.c = new long[a.this.j];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String[] strArr) throws IOException {
            if (strArr.length != a.this.j) {
                throw b(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.c[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw b(strArr);
                }
            }
        }

        private IOException b(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public File a(int i) {
            return new File(a.this.f937d, this.b + "." + i);
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.c) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public File b(int i) {
            return new File(a.this.f937d, this.b + "." + i + ".tmp");
        }
    }

    /* JADX INFO: compiled from: DiskLruCache.java */
    public final class c implements Closeable {
        private final String b;
        private final long c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final InputStream[] f946d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final long[] f947e;

        private c(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.b = str;
            this.c = j;
            this.f946d = inputStreamArr;
            this.f947e = jArr;
        }

        public InputStream a(int i) {
            return this.f946d[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f946d) {
                com.bytedance.sdk.component.d.c.c.b.a(inputStream);
            }
        }
    }

    private a(File file, int i, int i2, long j, ExecutorService executorService) {
        this.f937d = file;
        this.h = i;
        this.f938e = new File(file, "journal");
        this.f939f = new File(file, "journal.tmp");
        this.f940g = new File(file, "journal.bkp");
        this.j = i2;
        this.i = j;
        this.b = executorService;
    }

    private synchronized C0113a a(String str, long j) throws IOException {
        g();
        e(str);
        b bVar = this.m.get(str);
        if (j != -1 && (bVar == null || bVar.f945f != j)) {
            return null;
        }
        if (bVar == null) {
            bVar = new b(str);
            this.m.put(str, bVar);
        } else if (bVar.f944e != null) {
            return null;
        }
        C0113a c0113a = new C0113a(bVar);
        bVar.f944e = c0113a;
        this.l.write("DIRTY " + str + '\n');
        this.l.flush();
        return c0113a;
    }

    public static a a(File file, int i, int i2, long j, ExecutorService executorService) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                a(file2, file3, false);
            }
        }
        a aVar = new a(file, i, i2, j, executorService);
        if (aVar.f938e.exists()) {
            try {
                aVar.c();
                aVar.d();
                return aVar;
            } catch (IOException e2) {
                Log.w("DiskLruCache ", file + " is corrupt: " + e2.getMessage() + ", removing");
                aVar.b();
            }
        }
        file.mkdirs();
        a aVar2 = new a(file, i, i2, j, executorService);
        aVar2.e();
        return aVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(C0113a c0113a, boolean z) throws IOException {
        b bVar = c0113a.b;
        if (bVar.f944e != c0113a) {
            throw new IllegalStateException();
        }
        if (z && !bVar.f943d) {
            for (int i = 0; i < this.j; i++) {
                if (!c0113a.c[i]) {
                    c0113a.b();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                if (!bVar.b(i).exists()) {
                    c0113a.b();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.j; i2++) {
            File fileB = bVar.b(i2);
            if (!z) {
                a(fileB);
            } else if (fileB.exists()) {
                File fileA = bVar.a(i2);
                fileB.renameTo(fileA);
                long j = bVar.c[i2];
                long length = fileA.length();
                bVar.c[i2] = length;
                this.k = (this.k - j) + length;
            }
        }
        this.n++;
        bVar.f944e = null;
        if (bVar.f943d || z) {
            bVar.f943d = true;
            this.l.write("CLEAN " + bVar.b + bVar.a() + '\n');
            if (z) {
                long j2 = this.p;
                this.p = 1 + j2;
                bVar.f945f = j2;
            }
        } else {
            this.m.remove(bVar.b);
            this.l.write("REMOVE " + bVar.b + '\n');
        }
        this.l.flush();
        if (this.k > this.i || f()) {
            this.b.submit(this.q);
        }
    }

    private static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void c() throws IOException {
        com.bytedance.sdk.component.d.c.a.a.c cVar = new com.bytedance.sdk.component.d.c.a.a.c(new FileInputStream(this.f938e), d.a);
        try {
            String strA = cVar.a();
            String strA2 = cVar.a();
            String strA3 = cVar.a();
            String strA4 = cVar.a();
            String strA5 = cVar.a();
            if (!"libcore.io.DiskLruCache".equals(strA) || !"1".equals(strA2) || !Integer.toString(this.h).equals(strA3) || !Integer.toString(this.j).equals(strA4) || !"".equals(strA5)) {
                throw new IOException("unexpected journal header: [" + strA + ", " + strA2 + ", " + strA4 + ", " + strA5 + o2.i.f6491e);
            }
            int i = 0;
            while (true) {
                try {
                    d(cVar.a());
                    i++;
                } catch (EOFException unused) {
                    this.n = i - this.m.size();
                    if (cVar.b()) {
                        e();
                    } else {
                        this.l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f938e, true), d.a));
                    }
                    com.bytedance.sdk.component.d.c.c.b.a(cVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.d.c.c.b.a(cVar);
            throw th;
        }
    }

    private void d() throws IOException {
        a(this.f939f);
        Iterator<b> it = this.m.values().iterator();
        while (it.hasNext()) {
            b next = it.next();
            int i = 0;
            if (next.f944e == null) {
                while (i < this.j) {
                    this.k += next.c[i];
                    i++;
                }
            } else {
                next.f944e = null;
                while (i < this.j) {
                    a(next.a(i));
                    a(next.b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    private void d(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.m.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        b bVar = this.m.get(strSubstring);
        if (bVar == null) {
            bVar = new b(strSubstring);
            this.m.put(strSubstring, bVar);
        }
        if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            bVar.f943d = true;
            bVar.f944e = null;
            bVar.a(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
            bVar.f944e = new C0113a(bVar);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
            return;
        }
        throw new IOException("unexpected journal line: " + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() throws IOException {
        Writer writer = this.l;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f939f), d.a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.h));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.j));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (b bVar : this.m.values()) {
                if (bVar.f944e != null) {
                    bufferedWriter.write("DIRTY " + bVar.b + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + bVar.b + bVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f938e.exists()) {
                a(this.f938e, this.f940g, true);
            }
            a(this.f939f, this.f938e, false);
            this.f940g.delete();
            this.l = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f938e, true), d.a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    private void e(String str) {
        if (a.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        int i = this.n;
        return i >= 2000 && i >= this.m.size();
    }

    private void g() {
        if (this.l == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() throws IOException {
        long j = this.i;
        long j2 = this.o;
        if (j2 >= 0) {
            j = j2;
        }
        while (this.k > j) {
            c(this.m.entrySet().iterator().next().getKey());
        }
        this.o = -1L;
    }

    public synchronized c a(String str) throws IOException {
        g();
        e(str);
        b bVar = this.m.get(str);
        if (bVar == null) {
            return null;
        }
        if (!bVar.f943d) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.j];
        for (int i = 0; i < this.j; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(bVar.a(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.j && inputStreamArr[i2] != null; i2++) {
                    com.bytedance.sdk.component.d.c.c.b.a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.n++;
        this.l.append((CharSequence) ("READ " + str + '\n'));
        if (f()) {
            this.b.submit(this.q);
        }
        return new c(str, bVar.f945f, inputStreamArr, bVar.c);
    }

    public synchronized void a() throws IOException {
        g();
        h();
        this.l.flush();
    }

    public C0113a b(String str) throws IOException {
        return a(str, -1L);
    }

    public void b() throws IOException {
        close();
        d.a(this.f937d);
    }

    public synchronized boolean c(String str) throws IOException {
        g();
        e(str);
        b bVar = this.m.get(str);
        if (bVar != null && bVar.f944e == null) {
            for (int i = 0; i < this.j; i++) {
                File fileA = bVar.a(i);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                this.k -= bVar.c[i];
                bVar.c[i] = 0;
            }
            this.n++;
            this.l.append((CharSequence) ("REMOVE " + str + '\n'));
            this.m.remove(str);
            if (f()) {
                this.b.submit(this.q);
            }
            return true;
        }
        return false;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.l == null) {
            return;
        }
        for (b bVar : new ArrayList(this.m.values())) {
            if (bVar.f944e != null) {
                bVar.f944e.b();
            }
        }
        h();
        this.l.close();
        this.l = null;
    }
}
