package com.google.common.io;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;

/* JADX INFO: compiled from: MultiReader.java */
/* JADX INFO: loaded from: classes3.dex */
class m extends Reader {
    private final Iterator<? extends CharSource> a;
    private Reader b;

    m(Iterator<? extends CharSource> it) throws IOException {
        this.a = it;
        d();
    }

    private void d() throws IOException {
        close();
        if (this.a.hasNext()) {
            this.b = this.a.next().c();
        }
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        Reader reader = this.b;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.b = null;
            }
        }
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) throws IOException {
        Preconditions.checkNotNull(cArr);
        Reader reader = this.b;
        if (reader == null) {
            return -1;
        }
        int i3 = reader.read(cArr, i, i2);
        if (i3 != -1) {
            return i3;
        }
        d();
        return read(cArr, i, i2);
    }

    @Override // java.io.Reader
    public boolean ready() throws IOException {
        Reader reader = this.b;
        return reader != null && reader.ready();
    }

    @Override // java.io.Reader
    public long skip(long j) throws IOException {
        Preconditions.checkArgument(j >= 0, "n is negative");
        if (j > 0) {
            while (true) {
                Reader reader = this.b;
                if (reader == null) {
                    break;
                }
                long jSkip = reader.skip(j);
                if (jSkip > 0) {
                    return jSkip;
                }
                d();
            }
        }
        return 0L;
    }
}
