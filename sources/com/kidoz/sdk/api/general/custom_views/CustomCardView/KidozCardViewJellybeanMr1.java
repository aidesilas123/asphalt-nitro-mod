package com.kidoz.sdk.api.general.custom_views.CustomCardView;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozRoundRectDrawableWithShadow;

/* JADX INFO: loaded from: classes4.dex */
class KidozCardViewJellybeanMr1 extends KidozCardViewEclairMr1 {
    KidozCardViewJellybeanMr1() {
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewEclairMr1, com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void initStatic() {
        KidozRoundRectDrawableWithShadow.sRoundRectHelper = new KidozRoundRectDrawableWithShadow.RoundRectHelper() { // from class: com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewJellybeanMr1.1
            @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozRoundRectDrawableWithShadow.RoundRectHelper
            public void drawRoundRect(Canvas canvas, RectF rectF, float f2, Paint paint) {
                canvas.drawRoundRect(rectF, f2, f2, paint);
            }
        };
    }
}
