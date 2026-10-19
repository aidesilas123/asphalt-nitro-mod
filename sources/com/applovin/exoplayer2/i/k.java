package com.applovin.exoplayer2.i;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class k extends com.applovin.exoplayer2.c.i implements f {

    @Nullable
    private f Ou;
    private long dD;

    public void a(long j, f fVar, long j2) {
        this.rJ = j;
        this.Ou = fVar;
        if (j2 != Long.MAX_VALUE) {
            j = j2;
        }
        this.dD = j;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int be(long j) {
        return ((f) com.applovin.exoplayer2.l.a.checkNotNull(this.Ou)).be(j - this.dD);
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<a> bf(long j) {
        return ((f) com.applovin.exoplayer2.l.a.checkNotNull(this.Ou)).bf(j - this.dD);
    }

    @Override // com.applovin.exoplayer2.c.a
    public void clear() {
        super.clear();
        this.Ou = null;
    }

    @Override // com.applovin.exoplayer2.i.f
    public long ej(int i) {
        return ((f) com.applovin.exoplayer2.l.a.checkNotNull(this.Ou)).ej(i) + this.dD;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int lX() {
        return ((f) com.applovin.exoplayer2.l.a.checkNotNull(this.Ou)).lX();
    }
}
