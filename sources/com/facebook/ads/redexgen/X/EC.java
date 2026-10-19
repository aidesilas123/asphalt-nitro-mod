package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class EC extends ZB {
    public final /* synthetic */ AbstractC1510Yw A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EC(AbstractC1510Yw abstractC1510Yw, Context context) {
        super(context);
        this.A00 = abstractC1510Yw;
    }

    @Override // com.facebook.ads.redexgen.X.ZB, com.facebook.ads.redexgen.X.AbstractC07664p
    public final void A0I(View view, C07684r c07684r, C07644n c07644n) {
        AbstractC1510Yw abstractC1510Yw = this.A00;
        int[] iArrA0H = abstractC1510Yw.A0H(abstractC1510Yw.A00.getLayoutManager(), view);
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
}
