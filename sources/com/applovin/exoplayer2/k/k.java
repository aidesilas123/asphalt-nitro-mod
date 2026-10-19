package com.applovin.exoplayer2.k;

import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes.dex */
public final class k extends InputStream {
    private final i LR;
    private long Zw;
    private final l tw;
    private boolean Zk = false;
    private boolean Zv = false;
    private final byte[] Zu = new byte[1];

    public k(i iVar, l lVar) {
        this.LR = iVar;
        this.tw = lVar;
    }

    private void og() throws IOException {
        if (this.Zk) {
            return;
        }
        this.LR.a(this.tw);
        this.Zk = true;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.Zv) {
            return;
        }
        this.LR.close();
        this.Zv = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.Zu) == -1) {
            return -1;
        }
        return this.Zu[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        com.applovin.exoplayer2.l.a.checkState(!this.Zv);
        og();
        int i3 = this.LR.read(bArr, i, i2);
        if (i3 == -1) {
            return -1;
        }
        this.Zw += (long) i3;
        return i3;
    }
}
