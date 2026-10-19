package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import androidx.annotation.NonNull;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends InputStream {
    public final g a;
    public final j b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f2571f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2569d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2570e = false;
    public final byte[] c = new byte[1];

    public i(g gVar, j jVar) {
        this.a = gVar;
        this.b = jVar;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f2570e) {
            return;
        }
        this.a.close();
        this.f2570e = true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (read(this.c) == -1) {
            return -1;
        }
        return this.c[0] & 255;
    }

    @Override // java.io.InputStream
    public int read(@NonNull byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(!this.f2570e);
        if (!this.f2569d) {
            this.a.a(this.b);
            this.f2569d = true;
        }
        int iA = this.a.a(bArr, i, i2);
        if (iA == -1) {
            return -1;
        }
        this.f2571f += (long) iA;
        return iA;
    }
}
