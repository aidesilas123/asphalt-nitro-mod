package com.applovin.exoplayer2.j;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.h.ac;
import com.applovin.exoplayer2.v;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public abstract class b implements d {
    private final v[] NF;
    protected final ac Ud;
    protected final int[] Ue;
    private final long[] Uf;
    private final int bs;
    private int dS;
    protected final int fR;

    public b(ac acVar, int[] iArr, int i) {
        int i2 = 0;
        com.applovin.exoplayer2.l.a.checkState(iArr.length > 0);
        this.bs = i;
        this.Ud = (ac) com.applovin.exoplayer2.l.a.checkNotNull(acVar);
        int length = iArr.length;
        this.fR = length;
        this.NF = new v[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.NF[i3] = acVar.dZ(iArr[i3]);
        }
        Arrays.sort(this.NF, new Comparator() { // from class: com.applovin.exoplayer2.j.l
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return b.b((v) obj, (v) obj2);
            }
        });
        this.Ue = new int[this.fR];
        while (true) {
            int i4 = this.fR;
            if (i2 >= i4) {
                this.Uf = new long[i4];
                return;
            } else {
                this.Ue[i2] = acVar.w(this.NF[i2]);
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(v vVar, v vVar2) {
        return vVar2.dv - vVar.dv;
    }

    @Override // com.applovin.exoplayer2.j.d
    public void X() {
    }

    @Override // com.applovin.exoplayer2.j.d
    public /* synthetic */ void am(boolean z) {
        r.a(this, z);
    }

    @Override // com.applovin.exoplayer2.j.g
    public final v dZ(int i) {
        return this.NF[i];
    }

    @Override // com.applovin.exoplayer2.j.g
    public final int eP(int i) {
        return this.Ue[i];
    }

    @Override // com.applovin.exoplayer2.j.d
    public void enable() {
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        return this.Ud == bVar.Ud && Arrays.equals(this.Ue, bVar.Ue);
    }

    public int hashCode() {
        if (this.dS == 0) {
            this.dS = (System.identityHashCode(this.Ud) * 31) + Arrays.hashCode(this.Ue);
        }
        return this.dS;
    }

    @Override // com.applovin.exoplayer2.j.g
    public final int kD() {
        return this.Ue.length;
    }

    @Override // com.applovin.exoplayer2.j.g
    public final ac nf() {
        return this.Ud;
    }

    @Override // com.applovin.exoplayer2.j.d
    public final v ng() {
        return this.NF[ne()];
    }

    @Override // com.applovin.exoplayer2.j.d
    public /* synthetic */ void nn() {
        r.b(this);
    }

    @Override // com.applovin.exoplayer2.j.d
    public /* synthetic */ void no() {
        r.c(this);
    }

    @Override // com.applovin.exoplayer2.j.d
    public void v(float f2) {
    }
}
