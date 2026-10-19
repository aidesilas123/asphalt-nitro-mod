package com.facebook.ads.redexgen.X;

import android.widget.ImageView;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Rh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1317Rh extends C1215Nj {
    public final ImageView A00;
    public final YA A01;

    public C1317Rh(YA ya) {
        super(ya);
        this.A01 = ya;
        ImageView imageView = new ImageView(ya);
        this.A00 = imageView;
        imageView.setAdjustViewBounds(true);
        addView(imageView, new RelativeLayout.LayoutParams(-2, -1));
    }

    public final void A00(String str) {
        T8 t8 = new T8(this.A00, this.A01);
        t8.A04();
        t8.A07(str);
    }
}
