package com.applovin.exoplayer2.k;

import androidx.annotation.Nullable;
import com.applovin.exoplayer2.l.ai;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class m implements b {
    private final boolean ZD;
    private final int ZE;

    @Nullable
    private final byte[] ZF;
    private final a[] ZG;
    private int ZH;
    private int ZI;
    private int ZJ;
    private a[] ZK;

    public m(boolean z, int i) {
        this(z, i, 0);
    }

    public m(boolean z, int i, int i2) {
        com.applovin.exoplayer2.l.a.checkArgument(i > 0);
        com.applovin.exoplayer2.l.a.checkArgument(i2 >= 0);
        this.ZD = z;
        this.ZE = i;
        this.ZJ = i2;
        this.ZK = new a[i2 + 100];
        if (i2 > 0) {
            this.ZF = new byte[i2 * i];
            for (int i3 = 0; i3 < i2; i3++) {
                this.ZK[i3] = new a(this.ZF, i3 * i);
            }
        } else {
            this.ZF = null;
        }
        this.ZG = new a[1];
    }

    public synchronized void Y() {
        if (this.ZD) {
            fj(0);
        }
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized void a(a aVar) {
        a[] aVarArr = this.ZG;
        aVarArr[0] = aVar;
        a(aVarArr);
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized void a(a[] aVarArr) {
        int i = this.ZJ;
        int length = aVarArr.length + i;
        a[] aVarArr2 = this.ZK;
        if (length >= aVarArr2.length) {
            this.ZK = (a[]) Arrays.copyOf(aVarArr2, Math.max(aVarArr2.length * 2, i + aVarArr.length));
        }
        for (a aVar : aVarArr) {
            a[] aVarArr3 = this.ZK;
            int i2 = this.ZJ;
            this.ZJ = i2 + 1;
            aVarArr3[i2] = aVar;
        }
        this.ZI -= aVarArr.length;
        notifyAll();
    }

    public synchronized void fj(int i) {
        boolean z = i < this.ZH;
        this.ZH = i;
        if (z) {
            ob();
        }
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized a oa() {
        a aVar;
        this.ZI++;
        int i = this.ZJ;
        if (i > 0) {
            a[] aVarArr = this.ZK;
            int i2 = i - 1;
            this.ZJ = i2;
            aVar = (a) com.applovin.exoplayer2.l.a.checkNotNull(aVarArr[i2]);
            this.ZK[this.ZJ] = null;
        } else {
            aVar = new a(new byte[this.ZE], 0);
        }
        return aVar;
    }

    @Override // com.applovin.exoplayer2.k.b
    public synchronized void ob() {
        int i = 0;
        int iMax = Math.max(0, ai.N(this.ZH, this.ZE) - this.ZI);
        int i2 = this.ZJ;
        if (iMax >= i2) {
            return;
        }
        if (this.ZF != null) {
            int i3 = i2 - 1;
            while (i <= i3) {
                a aVar = (a) com.applovin.exoplayer2.l.a.checkNotNull(this.ZK[i]);
                if (aVar.tf == this.ZF) {
                    i++;
                } else {
                    a aVar2 = (a) com.applovin.exoplayer2.l.a.checkNotNull(this.ZK[i3]);
                    if (aVar2.tf != this.ZF) {
                        i3--;
                    } else {
                        a[] aVarArr = this.ZK;
                        aVarArr[i] = aVar2;
                        aVarArr[i3] = aVar;
                        i3--;
                        i++;
                    }
                }
            }
            iMax = Math.max(iMax, i);
            if (iMax >= this.ZJ) {
                return;
            }
        }
        Arrays.fill(this.ZK, iMax, this.ZJ, (Object) null);
        this.ZJ = iMax;
    }

    @Override // com.applovin.exoplayer2.k.b
    public int oc() {
        return this.ZE;
    }

    public synchronized int ok() {
        return this.ZI * this.ZE;
    }
}
