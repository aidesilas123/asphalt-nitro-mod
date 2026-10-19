package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class P6 {
    public final int[] A00(View view, int i, int i2) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i, view.getPaddingLeft() + view.getPaddingRight(), c07554d.width), ViewGroup.getChildMeasureSpec(i2, view.getPaddingTop() + view.getPaddingBottom(), c07554d.height));
        return new int[]{view.getMeasuredWidth() + c07554d.leftMargin + c07554d.rightMargin, view.getMeasuredHeight() + c07554d.bottomMargin + c07554d.topMargin};
    }
}
