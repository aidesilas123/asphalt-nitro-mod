package com.applovin.exoplayer2.e;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.e.x;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class g implements x {
    private final byte[] uv = new byte[4096];

    @Override // com.applovin.exoplayer2.e.x
    public /* synthetic */ int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z) {
        return d0.a(this, gVar, i, z);
    }

    @Override // com.applovin.exoplayer2.e.x
    public int a(com.applovin.exoplayer2.k.g gVar, int i, boolean z, int i2) throws IOException {
        int i3 = gVar.read(this.uv, 0, Math.min(this.uv.length, i));
        if (i3 != -1) {
            return i3;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    @Override // com.applovin.exoplayer2.e.x
    public void a(long j, int i, int i2, int i3, @Nullable x.a aVar) {
    }

    @Override // com.applovin.exoplayer2.e.x
    public void a(com.applovin.exoplayer2.l.y yVar, int i, int i2) {
        yVar.fz(i);
    }

    @Override // com.applovin.exoplayer2.e.x
    public /* synthetic */ void c(com.applovin.exoplayer2.l.y yVar, int i) {
        d0.b(this, yVar, i);
    }

    @Override // com.applovin.exoplayer2.e.x
    public void j(com.applovin.exoplayer2.v vVar) {
    }
}
