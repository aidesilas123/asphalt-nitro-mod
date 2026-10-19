package com.facebook.ads.redexgen.X;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ZY implements C2W {
    public final /* synthetic */ ZX A00;

    public ZY(ZX zx) {
        this.A00 = zx;
    }

    @Override // com.facebook.ads.redexgen.X.C2W
    public final void A59(Canvas canvas, RectF rectF, float f2, Paint paint) {
        float f3 = f2 * 2.0f;
        float fWidth = (rectF.width() - f3) - 1.0f;
        float fHeight = (rectF.height() - f3) - 1.0f;
        Canvas canvas2 = canvas;
        Paint paint2 = paint;
        if (f2 >= 1.0f) {
            float f4 = f2 + 0.5f;
            this.A00.A00.set(-f4, -f4, f4, f4);
            int iSave = canvas2.save();
            canvas2.translate(rectF.left + f4, rectF.top + f4);
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.translate(fWidth, 0.0f);
            canvas2.rotate(90.0f);
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.translate(fHeight, 0.0f);
            canvas2.rotate(90.0f);
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.translate(fWidth, 0.0f);
            canvas2.rotate(90.0f);
            canvas2 = canvas2;
            canvas2.drawArc(this.A00.A00, 180.0f, 90.0f, true, paint2);
            canvas2.restoreToCount(iSave);
            canvas2.drawRect((rectF.left + f4) - 1.0f, rectF.top, (rectF.right - f4) + 1.0f, rectF.top + f4, paint2);
            paint2 = paint2;
            canvas2.drawRect((rectF.left + f4) - 1.0f, rectF.bottom - f4, (rectF.right - f4) + 1.0f, rectF.bottom, paint2);
        }
        canvas2.drawRect(rectF.left, rectF.top + f2, rectF.right, rectF.bottom - f2, paint2);
    }
}
