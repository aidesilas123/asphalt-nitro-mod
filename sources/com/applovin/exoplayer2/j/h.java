package com.applovin.exoplayer2.j;

import androidx.annotation.Nullable;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class h {
    private final g[] Vc;
    private int dS;
    public final int fR;

    public h(g... gVarArr) {
        this.Vc = gVarArr;
        this.fR = gVarArr.length;
    }

    @Nullable
    public g eU(int i) {
        return this.Vc[i];
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.Vc, ((h) obj).Vc);
    }

    public int hashCode() {
        if (this.dS == 0) {
            this.dS = IronSourceError.ERROR_NON_EXISTENT_INSTANCE + Arrays.hashCode(this.Vc);
        }
        return this.dS;
    }
}
