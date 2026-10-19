package com.fyber.inneractive.sdk.player.cache;

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
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Closeable {
    public static final Pattern p = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream q = new b();
    public final File a;
    public final File b;
    public final File c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final File f2143d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2144e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2145f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f2146g;
    public Writer i;
    public int k;
    public e l;
    public long h = 0;
    public final LinkedHashMap<String, d> j = new LinkedHashMap<>(0, 0.75f, true);
    public long m = 0;
    public final ThreadPoolExecutor n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final Callable<Void> o = new a();

    public class a implements Callable<Void> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (c.this) {
                c cVar = c.this;
                if (cVar.i == null) {
                    return null;
                }
                cVar.f();
                if (c.this.b()) {
                    c.this.e();
                    c.this.k = 0;
                }
                return null;
            }
        }
    }

    public class b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.cache.c$c, reason: collision with other inner class name */
    public final class C0170c {
        public final d a;
        public final boolean[] b;
        public boolean c;

        /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.cache.c$c$a */
        public class a extends FilterOutputStream {
            public a(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0170c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0170c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    C0170c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    C0170c.this.c = true;
                }
            }
        }

        public C0170c(d dVar) {
            this.a = dVar;
            this.b = dVar.c ? null : new boolean[c.this.f2146g];
        }

        public OutputStream a(int i) throws IOException {
            FileOutputStream fileOutputStream;
            a aVar;
            if (i >= 0) {
                c cVar = c.this;
                if (i < cVar.f2146g) {
                    synchronized (cVar) {
                        d dVar = this.a;
                        if (dVar.f2148d != this) {
                            throw new IllegalStateException();
                        }
                        if (!dVar.c) {
                            this.b[i] = true;
                        }
                        File fileB = dVar.b(i);
                        try {
                            fileOutputStream = new FileOutputStream(fileB);
                        } catch (FileNotFoundException unused) {
                            c.this.a.mkdirs();
                            try {
                                fileOutputStream = new FileOutputStream(fileB);
                            } catch (FileNotFoundException unused2) {
                                return c.q;
                            }
                        }
                        aVar = new a(fileOutputStream);
                    }
                    return aVar;
                }
            }
            throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + c.this.f2146g);
        }

        public void a() throws IOException {
            c.a(c.this, this, false);
        }
    }

    public final class d {
        public final String a;
        public final long[] b;
        public boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public C0170c f2148d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f2149e;

        public d(String str) {
            this.a = str;
            this.b = new long[c.this.f2146g];
        }

        public File a(int i) {
            return new File(c.this.a, this.a + "." + i);
        }

        public String a() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public File b(int i) {
            return new File(c.this.a, this.a + "." + i + ".tmp");
        }
    }

    public interface e {
    }

    public final class f implements Closeable {
        public final InputStream[] a;

        public f(c cVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.a = inputStreamArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.a) {
                m.a(inputStream);
            }
        }
    }

    public c(File file, int i, int i2, long j) {
        this.a = file;
        this.f2144e = i;
        this.b = new File(file, "journal");
        this.c = new File(file, "journal.tmp");
        this.f2143d = new File(file, "journal.bkp");
        this.f2146g = i2;
        this.f2145f = j;
    }

    public static c a(File file, int i, int i2, long j) throws IOException {
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
        c cVar = new c(file, i, i2, j);
        if (cVar.b.exists()) {
            try {
                cVar.d();
                cVar.c();
                return cVar;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                cVar.close();
                m.a(cVar.a);
            }
        }
        file.mkdirs();
        c cVar2 = new c(file, i, i2, j);
        cVar2.e();
        return cVar2;
    }

    public static void a(c cVar, C0170c c0170c, boolean z) throws IOException {
        synchronized (cVar) {
            d dVar = c0170c.a;
            if (dVar.f2148d != c0170c) {
                throw new IllegalStateException();
            }
            if (z && !dVar.c) {
                for (int i = 0; i < cVar.f2146g; i++) {
                    if (!c0170c.b[i]) {
                        c0170c.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!dVar.b(i).exists()) {
                        c0170c.a();
                        return;
                    }
                }
            }
            for (int i2 = 0; i2 < cVar.f2146g; i2++) {
                File fileB = dVar.b(i2);
                if (!z) {
                    a(fileB);
                } else if (fileB.exists()) {
                    File fileA = dVar.a(i2);
                    fileB.renameTo(fileA);
                    long j = dVar.b[i2];
                    long length = fileA.length();
                    dVar.b[i2] = length;
                    cVar.h = (cVar.h - j) + length;
                }
            }
            cVar.k++;
            dVar.f2148d = null;
            if (dVar.c || z) {
                dVar.c = true;
                cVar.i.write("CLEAN " + dVar.a + dVar.a() + '\n');
                if (z) {
                    long j2 = cVar.m;
                    cVar.m = 1 + j2;
                    dVar.f2149e = j2;
                }
            } else {
                cVar.j.remove(dVar.a);
                cVar.i.write("REMOVE " + dVar.a + '\n');
            }
            cVar.i.flush();
            if (cVar.h > cVar.f2145f || cVar.b()) {
                cVar.n.submit(cVar.o);
            }
        }
    }

    public static void a(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static void a(File file, File file2, boolean z) throws IOException {
        if (z) {
            a(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public C0170c a(String str) throws IOException {
        synchronized (this) {
            a();
            e(str);
            d dVar = this.j.get(str);
            if (dVar == null) {
                dVar = new d(str);
                this.j.put(str, dVar);
            } else if (dVar.f2148d != null) {
                return null;
            }
            C0170c c0170c = new C0170c(dVar);
            dVar.f2148d = c0170c;
            this.i.write("DIRTY " + str + '\n');
            this.i.flush();
            return c0170c;
        }
    }

    public File a(String str, int i) {
        a();
        e(str);
        d dVar = this.j.get(str);
        if (dVar == null) {
            return null;
        }
        return dVar.a(i);
    }

    public final void a() {
        if (this.i == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public synchronized f b(String str) throws IOException {
        a();
        e(str);
        d dVar = this.j.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.c) {
            return null;
        }
        InputStream[] inputStreamArr = new InputStream[this.f2146g];
        for (int i = 0; i < this.f2146g; i++) {
            try {
                inputStreamArr[i] = new FileInputStream(dVar.a(i));
            } catch (FileNotFoundException unused) {
                for (int i2 = 0; i2 < this.f2146g && inputStreamArr[i2] != null; i2++) {
                    m.a(inputStreamArr[i2]);
                }
                return null;
            }
        }
        this.k++;
        this.i.append((CharSequence) ("READ " + str + '\n'));
        if (b()) {
            this.n.submit(this.o);
        }
        return new f(this, str, dVar.f2149e, inputStreamArr, dVar.b);
    }

    public final boolean b() {
        int i = this.k;
        return i >= 2000 && i >= this.j.size();
    }

    public final void c() throws IOException {
        a(this.c);
        Iterator<d> it = this.j.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.f2148d == null) {
                while (i < this.f2146g) {
                    this.h += next.b[i];
                    i++;
                }
            } else {
                next.f2148d = null;
                while (i < this.f2146g) {
                    a(next.a(i));
                    a(next.b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void c(String str) throws IOException {
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
                this.j.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = this.j.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring);
            this.j.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.f2148d = new C0170c(dVar);
                return;
            }
            if (iIndexOf2 == -1 && iIndexOf == 4 && str.startsWith("READ")) {
                return;
            }
            throw new IOException("unexpected journal line: " + str);
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
        dVar.c = true;
        dVar.f2148d = null;
        if (strArrSplit.length != c.this.f2146g) {
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

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.i == null) {
            return;
        }
        Iterator it = new ArrayList(this.j.values()).iterator();
        while (it.hasNext()) {
            C0170c c0170c = ((d) it.next()).f2148d;
            if (c0170c != null) {
                c0170c.a();
            }
        }
        f();
        this.i.close();
        this.i = null;
    }

    public final void d() throws IOException {
        l lVar = new l(new FileInputStream(this.b), 8192, m.a);
        try {
            String strB = lVar.b();
            String strB2 = lVar.b();
            String strB3 = lVar.b();
            String strB4 = lVar.b();
            String strB5 = lVar.b();
            if (!"libcore.io.DiskLruCache".equals(strB) || !"1".equals(strB2) || !Integer.toString(this.f2144e).equals(strB3) || !Integer.toString(this.f2146g).equals(strB4) || !"".equals(strB5)) {
                throw new IOException("unexpected journal header: [" + strB + ", " + strB2 + ", " + strB4 + ", " + strB5 + o2.i.f6491e);
            }
            int i = 0;
            while (true) {
                try {
                    c(lVar.b());
                    i++;
                } catch (EOFException unused) {
                    this.k = i - this.j.size();
                    if (lVar.f2166e == -1) {
                        e();
                    } else {
                        this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), m.a));
                    }
                    m.a(lVar);
                    return;
                }
            }
        } catch (Throwable th) {
            m.a(lVar);
            throw th;
        }
    }

    public synchronized boolean d(String str) throws IOException {
        a();
        e(str);
        d dVar = this.j.get(str);
        if (dVar != null && dVar.f2148d == null) {
            for (int i = 0; i < this.f2146g; i++) {
                File fileA = dVar.a(i);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                long j = this.h;
                long[] jArr = dVar.b;
                this.h = j - jArr[i];
                jArr[i] = 0;
            }
            this.k++;
            this.i.append((CharSequence) ("REMOVE " + str + '\n'));
            this.j.remove(str);
            if (b()) {
                this.n.submit(this.o);
            }
            return true;
        }
        return false;
    }

    public final synchronized void e() throws IOException {
        Writer writer = this.i;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.c), m.a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f2144e));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f2146g));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.j.values()) {
                if (dVar.f2148d != null) {
                    bufferedWriter.write("DIRTY " + dVar.a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.a + dVar.a() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.b.exists()) {
                a(this.b, this.f2143d, true);
            }
            a(this.c, this.b, false);
            this.f2143d.delete();
            this.i = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.b, true), m.a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    public final void e(String str) {
        if (p.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,120}: \"" + str + "\"");
    }

    public final void f() throws IOException {
        while (this.h > this.f2145f) {
            String key = this.j.entrySet().iterator().next().getKey();
            e eVar = this.l;
            if (eVar == null) {
                d(key);
            } else if (((n) eVar).a(this, key)) {
                d(key);
            } else {
                boolean zD = false;
                for (String str : this.j.keySet()) {
                    if (((n) this.l).a(this, str)) {
                        zD |= d(str);
                    }
                }
                if (!zD) {
                    return;
                }
            }
        }
    }
}
