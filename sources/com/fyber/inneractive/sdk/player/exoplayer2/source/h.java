package com.fyber.inneractive.sdk.player.exoplayer2.source;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements p {
    public final p[] a;

    public h(p[] pVarArr) {
        this.a = pVarArr;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.p
    public long a() {
        long jMin = Long.MAX_VALUE;
        for (p pVar : this.a) {
            long jA = pVar.a();
            if (jA != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jA);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.fyber.inneractive.sdk.player.exoplayer2.source.p
    public boolean a(long j) {
        boolean zA;
        boolean z = false;
        do {
            long jA = a();
            if (jA == Long.MIN_VALUE) {
                break;
            }
            zA = false;
            for (p pVar : this.a) {
                if (pVar.a() == jA) {
                    zA |= pVar.a(j);
                }
            }
            z |= zA;
        } while (zA);
        return z;
    }
}
