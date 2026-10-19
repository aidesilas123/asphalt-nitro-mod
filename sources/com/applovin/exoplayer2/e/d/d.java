package com.applovin.exoplayer2.e.d;

import com.applovin.exoplayer2.e.j;
import com.applovin.exoplayer2.e.v;
import com.applovin.exoplayer2.e.w;
import com.applovin.exoplayer2.e.x;

/* JADX INFO: loaded from: classes.dex */
public final class d implements j {
    private final j vG;
    private final long wE;

    public d(long j, j jVar) {
        this.wE = j;
        this.vG = jVar;
    }

    @Override // com.applovin.exoplayer2.e.j
    public void a(final v vVar) {
        this.vG.a(new v() { // from class: com.applovin.exoplayer2.e.d.d.1
            @Override // com.applovin.exoplayer2.e.v
            public v.a ai(long j) {
                v.a aVarAi = vVar.ai(j);
                w wVar = aVarAi.uQ;
                w wVar2 = new w(wVar.rJ, wVar.uc + d.this.wE);
                w wVar3 = aVarAi.uR;
                return new v.a(wVar2, new w(wVar3.rJ, wVar3.uc + d.this.wE));
            }

            @Override // com.applovin.exoplayer2.e.v
            public long dd() {
                return vVar.dd();
            }

            @Override // com.applovin.exoplayer2.e.v
            public boolean hU() {
                return vVar.hU();
            }
        });
    }

    @Override // com.applovin.exoplayer2.e.j
    public void ig() {
        this.vG.ig();
    }

    @Override // com.applovin.exoplayer2.e.j
    public x y(int i, int i2) {
        return this.vG.y(i, i2);
    }
}
