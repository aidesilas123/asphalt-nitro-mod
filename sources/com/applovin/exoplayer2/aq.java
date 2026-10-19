package com.applovin.exoplayer2;

import android.os.Bundle;
import com.applovin.exoplayer2.g;

/* JADX INFO: loaded from: classes.dex */
public abstract class aq implements g {
    public static final g.a<aq> br = new g.a() { // from class: com.applovin.exoplayer2.m0
        @Override // com.applovin.exoplayer2.g.a
        public final g fromBundle(Bundle bundle) {
            return aq.n(bundle);
        }
    };

    aq() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static aq n(Bundle bundle) {
        int i = bundle.getInt(t(0), -1);
        if (i == 0) {
            return (aq) x.br.fromBundle(bundle);
        }
        if (i == 1) {
            return (aq) aj.br.fromBundle(bundle);
        }
        if (i == 2) {
            return (aq) ax.br.fromBundle(bundle);
        }
        if (i == 3) {
            return (aq) az.br.fromBundle(bundle);
        }
        throw new IllegalArgumentException("Encountered unknown rating type: " + i);
    }

    private static String t(int i) {
        return Integer.toString(i, 36);
    }
}
