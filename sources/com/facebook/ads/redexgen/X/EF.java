package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class EF extends ZB {
    public final /* synthetic */ EE A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EF(EE ee, Context context) {
        super(context);
        this.A00 = ee;
    }

    @Override // com.facebook.ads.redexgen.X.ZB, com.facebook.ads.redexgen.X.AbstractC07664p
    public final void A0I(View view, C07684r c07684r, C07644n c07644n) {
        EE ee = this.A00;
        int[] iArrA0H = ee.A0H(((AbstractC1510Yw) ee).A00.getLayoutManager(), view);
        int i = iArrA0H[0];
        int i2 = iArrA0H[1];
        int iA0M = A0M(Math.max(Math.abs(i), Math.abs(i2)));
        if (iA0M > 0) {
            c07644n.A04(i, i2, iA0M, ((ZB) this).A04);
        }
    }

    @Override // com.facebook.ads.redexgen.X.ZB
    public final float A0J(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.X.ZB
    public final int A0L(int i) {
        return Math.min(100, super.A0L(i));
    }
}
