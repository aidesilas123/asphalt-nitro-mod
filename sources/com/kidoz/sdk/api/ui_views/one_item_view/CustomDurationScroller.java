package com.kidoz.sdk.api.ui_views.one_item_view;

import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.Scroller;

/* JADX INFO: compiled from: AutoScrollViewPager.java */
/* JADX INFO: loaded from: classes4.dex */
class CustomDurationScroller extends Scroller {
    private double scrollFactor;

    public CustomDurationScroller(Context context) {
        super(context);
        this.scrollFactor = 1.0d;
    }

    public CustomDurationScroller(Context context, Interpolator interpolator) {
        super(context, interpolator);
        this.scrollFactor = 1.0d;
    }

    public void setScrollDurationFactor(double d2) {
        this.scrollFactor = d2;
    }

    @Override // android.widget.Scroller
    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        super.startScroll(i, i2, i3, i4, (int) (((double) i5) * this.scrollFactor));
    }
}
