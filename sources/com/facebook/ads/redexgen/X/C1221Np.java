package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Np, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1221Np {
    public static final int A00 = LV.A00();

    public static void A00(YA ya, ViewGroup viewGroup, String str) {
        new T8(viewGroup, ya).A07(str);
        View view = new View(ya);
        view.setId(A00);
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        LV.A0R(view, ya);
        viewGroup.addView(view, 0);
    }
}
