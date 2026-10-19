package com.applovin.exoplayer2;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.p;
import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
final class ae {
    public final long de;
    public final p.a fE;
    public final long fF;
    public final long fG;
    public final long fH;
    public final boolean fI;
    public final boolean fJ;
    public final boolean fK;
    public final boolean fL;

    ae(p.a aVar, long j, long j2, long j3, long j4, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5 = false;
        com.applovin.exoplayer2.l.a.checkArgument(!z4 || z2);
        com.applovin.exoplayer2.l.a.checkArgument(!z3 || z2);
        if (!z || (!z2 && !z3 && !z4)) {
            z5 = true;
        }
        com.applovin.exoplayer2.l.a.checkArgument(z5);
        this.fE = aVar;
        this.fF = j;
        this.de = j2;
        this.fG = j3;
        this.fH = j4;
        this.fI = z;
        this.fJ = z2;
        this.fK = z3;
        this.fL = z4;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ae.class != obj.getClass()) {
            return false;
        }
        ae aeVar = (ae) obj;
        return this.fF == aeVar.fF && this.de == aeVar.de && this.fG == aeVar.fG && this.fH == aeVar.fH && this.fI == aeVar.fI && this.fJ == aeVar.fJ && this.fK == aeVar.fK && this.fL == aeVar.fL && com.applovin.exoplayer2.l.ai.r(this.fE, aeVar.fE);
    }

    public int hashCode() {
        return ((((((((((((((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.fE.hashCode()) * 31) + ((int) this.fF)) * 31) + ((int) this.de)) * 31) + ((int) this.fG)) * 31) + ((int) this.fH)) * 31) + (this.fI ? 1 : 0)) * 31) + (this.fJ ? 1 : 0)) * 31) + (this.fK ? 1 : 0)) * 31) + (this.fL ? 1 : 0);
    }

    public ae v(long j) {
        return j == this.fF ? this : new ae(this.fE, j, this.de, this.fG, this.fH, this.fI, this.fJ, this.fK, this.fL);
    }

    public ae w(long j) {
        return j == this.de ? this : new ae(this.fE, this.fF, j, this.fG, this.fH, this.fI, this.fJ, this.fK, this.fL);
    }
}
