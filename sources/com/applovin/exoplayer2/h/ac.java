package com.applovin.exoplayer2.h;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g;
import com.json.mediationsdk.logger.IronSourceError;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ac implements com.applovin.exoplayer2.g {
    public static final g.a<ac> br = new g.a() { // from class: com.applovin.exoplayer2.h.b0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            return ac.v(bundle);
        }
    };
    private final com.applovin.exoplayer2.v[] NF;
    private int dS;
    public final int fR;

    public ac(com.applovin.exoplayer2.v... vVarArr) {
        com.applovin.exoplayer2.l.a.checkArgument(vVarArr.length > 0);
        this.NF = vVarArr;
        this.fR = vVarArr.length;
        lL();
    }

    private static void a(String str, @Nullable String str2, @Nullable String str3, int i) {
        com.applovin.exoplayer2.l.q.c("TrackGroup", "", new IllegalStateException("Different " + str + " combined in one TrackGroup: '" + str2 + "' (track 0) and '" + str3 + "' (track " + i + ")"));
    }

    private static String aa(@Nullable String str) {
        return (str == null || str.equals(C.LANGUAGE_UNDETERMINED)) ? "" : str;
    }

    private static int ea(int i) {
        return i | 16384;
    }

    private void lL() {
        String strAa = aa(this.NF[0].dq);
        int iEa = ea(this.NF[0].ds);
        int i = 1;
        while (true) {
            com.applovin.exoplayer2.v[] vVarArr = this.NF;
            if (i >= vVarArr.length) {
                return;
            }
            if (!strAa.equals(aa(vVarArr[i].dq))) {
                com.applovin.exoplayer2.v[] vVarArr2 = this.NF;
                a("languages", vVarArr2[0].dq, vVarArr2[i].dq, i);
                return;
            } else {
                if (iEa != ea(this.NF[i].ds)) {
                    a("role flags", Integer.toBinaryString(this.NF[0].ds), Integer.toBinaryString(this.NF[i].ds), i);
                    return;
                }
                i++;
            }
        }
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ac v(Bundle bundle) {
        return new ac((com.applovin.exoplayer2.v[]) com.applovin.exoplayer2.l.c.a(com.applovin.exoplayer2.v.br, bundle.getParcelableArrayList(t(0)), com.applovin.exoplayer2.common.a.s.ga()).toArray(new com.applovin.exoplayer2.v[0]));
    }

    public com.applovin.exoplayer2.v dZ(int i) {
        return this.NF[i];
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ac.class != obj.getClass()) {
            return false;
        }
        ac acVar = (ac) obj;
        return this.fR == acVar.fR && Arrays.equals(this.NF, acVar.NF);
    }

    public int hashCode() {
        if (this.dS == 0) {
            this.dS = IronSourceError.ERROR_NON_EXISTENT_INSTANCE + Arrays.hashCode(this.NF);
        }
        return this.dS;
    }

    public int w(com.applovin.exoplayer2.v vVar) {
        int i = 0;
        while (true) {
            com.applovin.exoplayer2.v[] vVarArr = this.NF;
            if (i >= vVarArr.length) {
                return -1;
            }
            if (vVar == vVarArr[i]) {
                return i;
            }
            i++;
        }
    }
}
