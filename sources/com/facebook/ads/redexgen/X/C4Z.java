package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4Z, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public abstract class C4Z {
    @Deprecated
    private final void A00(Rect rect, int i, ED ed) {
        rect.set(0, 0, 0, 0);
    }

    public final void A01(Rect rect, View view, ED ed, C07684r c07684r) {
        A00(rect, ((C07554d) view.getLayoutParams()).A00(), ed);
    }
}
