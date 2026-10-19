package com.applovin.exoplayer2.l;

import android.os.Trace;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
public final class ah {
    public static void bg(String str) {
        if (ai.acV >= 18) {
            bh(str);
        }
    }

    @RequiresApi(18)
    private static void bh(String str) {
        Trace.beginSection(str);
    }

    public static void pV() {
        if (ai.acV >= 18) {
            pW();
        }
    }

    @RequiresApi(18)
    private static void pW() {
        Trace.endSection();
    }
}
