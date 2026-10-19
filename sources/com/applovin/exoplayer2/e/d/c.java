package com.applovin.exoplayer2.e.d;

import com.applovin.exoplayer2.e.i;
import com.applovin.exoplayer2.e.q;

/* JADX INFO: loaded from: classes.dex */
final class c extends q {
    private final long wE;

    public c(i iVar, long j) {
        super(iVar);
        com.applovin.exoplayer2.l.a.checkArgument(iVar.ie() >= j);
        this.wE = j;
    }

    @Override // com.applovin.exoplayer2.e.q, com.applovin.exoplayer2.e.i
    public long id() {
        return super.id() - this.wE;
    }

    @Override // com.applovin.exoplayer2.e.q, com.applovin.exoplayer2.e.i
    public long ie() {
        return super.ie() - this.wE;
    }

    @Override // com.applovin.exoplayer2.e.q, com.applovin.exoplayer2.e.i
    /* JADX INFO: renamed from: if, reason: not valid java name */
    public long mo28if() {
        return super.mo28if() - this.wE;
    }
}
