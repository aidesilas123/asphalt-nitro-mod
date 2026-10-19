package com.applovin.exoplayer2.g;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public abstract class g implements b {
    @Override // com.applovin.exoplayer2.g.b
    @Nullable
    public final a a(d dVar) {
        ByteBuffer byteBuffer = (ByteBuffer) com.applovin.exoplayer2.l.a.checkNotNull(dVar.rH);
        com.applovin.exoplayer2.l.a.checkArgument(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (dVar.gX()) {
            return null;
        }
        return a(dVar, byteBuffer);
    }

    @Nullable
    protected abstract a a(d dVar, ByteBuffer byteBuffer);
}
