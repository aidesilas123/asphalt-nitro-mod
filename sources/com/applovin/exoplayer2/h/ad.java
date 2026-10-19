package com.applovin.exoplayer2.h;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.applovin.exoplayer2.g;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class ad implements com.applovin.exoplayer2.g {
    public static final ad NG = new ad(new ac[0]);
    public static final g.a<ad> br = new g.a() { // from class: com.applovin.exoplayer2.h.c0
        @Override // com.applovin.exoplayer2.g.a
        public final com.applovin.exoplayer2.g fromBundle(Bundle bundle) {
            return ad.w(bundle);
        }
    };
    private final ac[] NH;
    private int dS;
    public final int fR;

    public ad(ac... acVarArr) {
        this.NH = acVarArr;
        this.fR = acVarArr.length;
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ad w(Bundle bundle) {
        return new ad((ac[]) com.applovin.exoplayer2.l.c.a(ac.br, bundle.getParcelableArrayList(t(0)), com.applovin.exoplayer2.common.a.s.ga()).toArray(new ac[0]));
    }

    public int a(ac acVar) {
        for (int i = 0; i < this.fR; i++) {
            if (this.NH[i] == acVar) {
                return i;
            }
        }
        return -1;
    }

    public ac eb(int i) {
        return this.NH[i];
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ad.class != obj.getClass()) {
            return false;
        }
        ad adVar = (ad) obj;
        return this.fR == adVar.fR && Arrays.equals(this.NH, adVar.NH);
    }

    public int hashCode() {
        if (this.dS == 0) {
            this.dS = Arrays.hashCode(this.NH);
        }
        return this.dS;
    }

    public boolean isEmpty() {
        return this.fR == 0;
    }
}
