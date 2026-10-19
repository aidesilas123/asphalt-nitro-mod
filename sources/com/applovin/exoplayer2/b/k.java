package com.applovin.exoplayer2.b;

import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;

/* JADX INFO: loaded from: classes.dex */
public final class k {
    public final int kM;
    public final float kN;

    public k(int i, float f2) {
        this.kM = i;
        this.kN = f2;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        return this.kM == kVar.kM && Float.compare(kVar.kN, this.kN) == 0;
    }

    public int hashCode() {
        return ((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.kM) * 31) + Float.floatToIntBits(this.kN);
    }
}
