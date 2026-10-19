package com.facebook.ads.redexgen.X;

import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class JN {
    public static JL A00(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.widthPixels / displayMetrics.density);
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        return C1149Kv.A04(i, i2) ? JL.A0H : i2 > i ? JL.A0J : JL.A0G;
    }

    public static void A01(DisplayMetrics displayMetrics, View view, JJ jj) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(((int) (((float) displayMetrics.widthPixels) / displayMetrics.density)) >= jj.A03() ? displayMetrics.widthPixels : (int) Math.ceil(jj.A03() * displayMetrics.density), (int) Math.ceil(jj.A02() * displayMetrics.density));
        layoutParams.addRule(14, -1);
        view.setLayoutParams(layoutParams);
    }
}
