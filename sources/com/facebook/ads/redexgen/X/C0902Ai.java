package com.facebook.ads.redexgen.X;

import android.graphics.PointF;
import android.util.DisplayMetrics;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ai, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C0902Ai extends ZB {
    public final /* synthetic */ C0895Ab A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0902Ai(C0895Ab c0895Ab, YA ya) {
        super(ya);
        this.A00 = c0895Ab;
    }

    @Override // com.facebook.ads.redexgen.X.ZB
    public final float A0J(DisplayMetrics displayMetrics) {
        return this.A00.A00 / displayMetrics.densityDpi;
    }

    @Override // com.facebook.ads.redexgen.X.ZB
    public final int A0K() {
        return -1;
    }

    @Override // com.facebook.ads.redexgen.X.ZB
    public final int A0O(View view, int i) {
        AbstractC07544c abstractC07544cA08 = A08();
        if (!abstractC07544cA08.A24()) {
            return 0;
        }
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return A0N(abstractC07544cA08.A0k(view) - c07554d.leftMargin, abstractC07544cA08.A0n(view) + c07554d.rightMargin, abstractC07544cA08.A0e(), abstractC07544cA08.A0h() - abstractC07544cA08.A0f(), i) + this.A00.A02;
    }

    @Override // com.facebook.ads.redexgen.X.ZB
    public final PointF A0P(int i) {
        return this.A00.A4L(i);
    }
}
