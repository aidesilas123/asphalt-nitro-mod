package com.squareup.imagelib;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MarkableInputStream.java */
/* JADX INFO: loaded from: classes4.dex */
final class o extends InputStream {
    private final InputStream a;
    private long b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f7757d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f7758e;

    public o(InputStream inputStream) {
        this(inputStream, 4096);
    }

    public o(InputStream inputStream, int i) {
        this.f7758e = -1L;
        this.a = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i);
    }

    private void c(long j) {
        try {
            long j2 = this.c;
            long j3 = this.b;
            if (j2 >= j3 || j3 > this.f7757d) {
                this.c = j3;
                this.a.mark((int) (j - j3));
            } else {
                this.a.reset();
                this.a.mark((int) (j - this.c));
                d(this.c, this.b);
            }
            this.f7757d = j;
        } catch (IOException e2) {
            throw new IllegalStateException("Unable to mark: " + e2);
        }
    }

    private void d(long j, long j2) throws IOException {
        while (j < j2) {
            long jSkip = this.a.skip(j2 - j);
            if (jSkip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    jSkip = 1;
                }
            }
            j += jSkip;
        }
    }

    public void a(long j) throws IOException {
        if (this.b > this.f7757d || j < this.c) {
            throw new IOException("Cannot reset");
        }
        this.a.reset();
        d(this.c, j);
        this.b = j;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.a.available();
    }

    public long b(int i) {
        long j = this.b + ((long) i);
        if (this.f7757d < j) {
            c(j);
        }
        return this.b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.a.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f7758e = b(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.a.read();
        if (i != -1) {
            this.b++;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i = this.a.read(bArr);
        if (i != -1) {
            this.b += (long) i;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.a.read(bArr, i, i2);
        if (i3 != -1) {
            this.b += (long) i3;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        a(this.f7758e);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = this.a.skip(j);
        this.b += jSkip;
        return jSkip;
    }
}
