package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: CharSequenceReader.java */
/* JADX INFO: loaded from: classes3.dex */
final class f extends Reader {
    private CharSequence a;
    private int b;
    private int c;

    public f(CharSequence charSequence) {
        this.a = (CharSequence) Preconditions.checkNotNull(charSequence);
    }

    private void d() throws IOException {
        if (this.a == null) {
            throw new IOException("reader closed");
        }
    }

    private boolean e() {
        return f() > 0;
    }

    private int f() {
        Objects.requireNonNull(this.a);
        return this.a.length() - this.b;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.a = null;
    }

    @Override // java.io.Reader
    public synchronized void mark(int i) throws IOException {
        Preconditions.checkArgument(i >= 0, "readAheadLimit (%s) may not be negative", i);
        d();
        this.c = this.b;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public synchronized int read() throws IOException {
        int iCharAt;
        d();
        Objects.requireNonNull(this.a);
        if (e()) {
            CharSequence charSequence = this.a;
            int i = this.b;
            this.b = i + 1;
            iCharAt = charSequence.charAt(i);
        } else {
            iCharAt = -1;
        }
        return iCharAt;
    }

    @Override // java.io.Reader, java.lang.Readable
    public synchronized int read(CharBuffer charBuffer) throws IOException {
        Preconditions.checkNotNull(charBuffer);
        d();
        Objects.requireNonNull(this.a);
        if (!e()) {
            return -1;
        }
        int iMin = Math.min(charBuffer.remaining(), f());
        for (int i = 0; i < iMin; i++) {
            CharSequence charSequence = this.a;
            int i2 = this.b;
            this.b = i2 + 1;
            charBuffer.put(charSequence.charAt(i2));
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized int read(char[] cArr, int i, int i2) throws IOException {
        Preconditions.checkPositionIndexes(i, i + i2, cArr.length);
        d();
        Objects.requireNonNull(this.a);
        if (!e()) {
            return -1;
        }
        int iMin = Math.min(i2, f());
        for (int i3 = 0; i3 < iMin; i3++) {
            CharSequence charSequence = this.a;
            int i4 = this.b;
            this.b = i4 + 1;
            cArr[i + i3] = charSequence.charAt(i4);
        }
        return iMin;
    }

    @Override // java.io.Reader
    public synchronized boolean ready() throws IOException {
        d();
        return true;
    }

    @Override // java.io.Reader
    public synchronized void reset() throws IOException {
        d();
        this.b = this.c;
    }

    @Override // java.io.Reader
    public synchronized long skip(long j) throws IOException {
        int iMin;
        Preconditions.checkArgument(j >= 0, "n (%s) may not be negative", j);
        d();
        iMin = (int) Math.min(f(), j);
        this.b += iMin;
        return iMin;
    }
}
