package com.facebook.ads.redexgen.X;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.facebook.ads.internal.api.AdNativeComponentView;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class M0 extends AdNativeComponentView {
    public static final int A01 = (int) (C1148Ku.A02 * 1.0f);
    public final ImageView A00;

    public M0(YA ya) {
        super(ya);
        MC mc = new MC(ya);
        this.A00 = mc;
        mc.setScaleType(ImageView.ScaleType.CENTER_CROP);
        EnumC1153Kz.A04(mc, EnumC1153Kz.A0A);
        addView(mc, new ViewGroup.LayoutParams(-1, -1));
        LV.A0M(mc, -2130706433);
        int i = A01;
        setPadding(i, i, i, i);
    }

    @Override // com.facebook.ads.internal.api.AdNativeComponentView
    public View getAdContentsView() {
        return this.A00;
    }

    public ImageView getImageCardView() {
        return this.A00;
    }
}
