package com.applovin.exoplayer2.i.a;

import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class d implements com.applovin.exoplayer2.i.f {
    private final List<com.applovin.exoplayer2.i.a> OV;

    public d(List<com.applovin.exoplayer2.i.a> list) {
        this.OV = list;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int be(long j) {
        return j < 0 ? 0 : -1;
    }

    @Override // com.applovin.exoplayer2.i.f
    public List<com.applovin.exoplayer2.i.a> bf(long j) {
        return j >= 0 ? this.OV : Collections.emptyList();
    }

    @Override // com.applovin.exoplayer2.i.f
    public long ej(int i) {
        com.applovin.exoplayer2.l.a.checkArgument(i == 0);
        return 0L;
    }

    @Override // com.applovin.exoplayer2.i.f
    public int lX() {
        return 1;
    }
}
