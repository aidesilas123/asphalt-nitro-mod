package g.a.a;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes5.dex */
public class b extends InputStream {
    private final c a;
    private volatile InputStream b;

    protected b(InputStream inputStream, a aVar) throws IOException {
        c cVar = new c(aVar, inputStream);
        this.a = cVar;
        this.b = cVar.f();
        cVar.start();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.b.close();
        try {
            this.a.join();
            this.a.c();
        } catch (InterruptedException e2) {
            throw new IOException(e2);
        }
    }

    @Override // java.io.InputStream
    public synchronized void mark(int i) {
        this.b.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.b.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.b.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.b.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.b.skip(j);
    }
}
