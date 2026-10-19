package com.facebook.ads.redexgen.X;

import android.graphics.Rect;
import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ZO implements AnonymousClass31 {
    public final Rect A00 = new Rect();
    public final /* synthetic */ C3V A01;

    public ZO(C3V c3v) {
        this.A01 = c3v;
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass31
    public final C3Y AAV(View view, C3Y c3y) {
        C3Y c3yA06 = C3H.A06(view, c3y);
        if (c3yA06.A07()) {
            return c3yA06;
        }
        Rect rect = this.A00;
        rect.left = c3yA06.A03();
        rect.top = c3yA06.A05();
        rect.right = c3yA06.A04();
        rect.bottom = c3yA06.A02();
        int childCount = this.A01.getChildCount();
        for (int i = 0; i < childCount; i++) {
            C3Y c3yA05 = C3H.A05(this.A01.getChildAt(i), c3yA06);
            rect.left = Math.min(c3yA05.A03(), rect.left);
            rect.top = Math.min(c3yA05.A05(), rect.top);
            rect.right = Math.min(c3yA05.A04(), rect.right);
            rect.bottom = Math.min(c3yA05.A02(), rect.bottom);
        }
        return c3yA06.A06(rect.left, rect.top, rect.right, rect.bottom);
    }
}
