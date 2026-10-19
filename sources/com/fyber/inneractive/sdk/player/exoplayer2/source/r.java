package com.fyber.inneractive.sdk.player.exoplayer2.source;

import com.json.mediationsdk.logger.IronSourceError;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class r {
    public final int a;
    public final com.fyber.inneractive.sdk.player.exoplayer2.i[] b;
    public int c;

    public r(com.fyber.inneractive.sdk.player.exoplayer2.i... iVarArr) {
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(iVarArr.length > 0);
        this.b = iVarArr;
        this.a = iVarArr.length;
    }

    public int a(com.fyber.inneractive.sdk.player.exoplayer2.i iVar) {
        int i = 0;
        while (true) {
            com.fyber.inneractive.sdk.player.exoplayer2.i[] iVarArr = this.b;
            if (i >= iVarArr.length) {
                return -1;
            }
            if (iVar == iVarArr[i]) {
                return i;
            }
            i++;
        }
    }

    public com.fyber.inneractive.sdk.player.exoplayer2.i a(int i) {
        return this.b[i];
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r.class != obj.getClass()) {
            return false;
        }
        r rVar = (r) obj;
        return this.a == rVar.a && Arrays.equals(this.b, rVar.b);
    }

    public int hashCode() {
        if (this.c == 0) {
            this.c = Arrays.hashCode(this.b) + IronSourceError.ERROR_NON_EXISTENT_INSTANCE;
        }
        return this.c;
    }
}
