package com.kidoz.sdk.api.general.custom_views.CustomCardView;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozRoundRectDrawableWithShadow;

/* JADX INFO: loaded from: classes4.dex */
class KidozCardViewEclairMr1 implements KidozCardViewImpl {
    final RectF sCornerRect = new RectF();

    KidozCardViewEclairMr1() {
    }

    private KidozRoundRectDrawableWithShadow getShadowBackground(KidozCardViewDelegate kidozCardViewDelegate) {
        return (KidozRoundRectDrawableWithShadow) kidozCardViewDelegate.getBackground();
    }

    KidozRoundRectDrawableWithShadow createBackground(Context context, int i, float f2, float f3, float f4) {
        return new KidozRoundRectDrawableWithShadow(context.getResources(), i, f2, f3, f4);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getElevation(KidozCardViewDelegate kidozCardViewDelegate) {
        return getShadowBackground(kidozCardViewDelegate).getShadowSize();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getMaxElevation(KidozCardViewDelegate kidozCardViewDelegate) {
        return getShadowBackground(kidozCardViewDelegate).getMaxShadowSize();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getMinHeight(KidozCardViewDelegate kidozCardViewDelegate) {
        return getShadowBackground(kidozCardViewDelegate).getMinHeight();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getMinWidth(KidozCardViewDelegate kidozCardViewDelegate) {
        return getShadowBackground(kidozCardViewDelegate).getMinWidth();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getRadius(KidozCardViewDelegate kidozCardViewDelegate) {
        return getShadowBackground(kidozCardViewDelegate).getCornerRadius();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void initStatic() {
        KidozRoundRectDrawableWithShadow.sRoundRectHelper = new KidozRoundRectDrawableWithShadow.RoundRectHelper() { // from class: com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewEclairMr1.1
            @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozRoundRectDrawableWithShadow.RoundRectHelper
            public void drawRoundRect(Canvas canvas, RectF rectF, float f2, Paint paint) {
                float f3;
                float f4 = 2.0f * f2;
                float fWidth = (rectF.width() - f4) - 1.0f;
                float fHeight = (rectF.height() - f4) - 1.0f;
                if (f2 >= 1.0f) {
                    f3 = f2 + 0.5f;
                    float f5 = -f3;
                    KidozCardViewEclairMr1.this.sCornerRect.set(f5, f5, f3, f3);
                    int iSave = canvas.save();
                    canvas.translate(rectF.left + f3, rectF.top + f3);
                    canvas.drawArc(KidozCardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(fWidth, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(KidozCardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(fHeight, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(KidozCardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.translate(fWidth, 0.0f);
                    canvas.rotate(90.0f);
                    canvas.drawArc(KidozCardViewEclairMr1.this.sCornerRect, 180.0f, 90.0f, true, paint);
                    canvas.restoreToCount(iSave);
                    float f6 = (rectF.left + f3) - 1.0f;
                    float f7 = rectF.top;
                    canvas.drawRect(f6, f7, (rectF.right - f3) + 1.0f, f7 + f3, paint);
                    float f8 = (rectF.left + f3) - 1.0f;
                    float f9 = rectF.bottom;
                    canvas.drawRect(f8, (f9 - f3) + 1.0f, (rectF.right - f3) + 1.0f, f9, paint);
                } else {
                    f3 = f2;
                }
                canvas.drawRect(rectF.left, Math.max(0.0f, f3 - 1.0f) + rectF.top, rectF.right, (rectF.bottom - f3) + 1.0f, paint);
            }
        };
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void initialize(KidozCardViewDelegate kidozCardViewDelegate, Context context, int i, float f2, float f3, float f4) {
        KidozRoundRectDrawableWithShadow kidozRoundRectDrawableWithShadowCreateBackground = createBackground(context, i, f2, f3, f4);
        kidozRoundRectDrawableWithShadowCreateBackground.setAddPaddingForCorners(kidozCardViewDelegate.getPreventCornerOverlap());
        kidozCardViewDelegate.setBackgroundDrawable(kidozRoundRectDrawableWithShadowCreateBackground);
        updatePadding(kidozCardViewDelegate);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void onCompatPaddingChanged(KidozCardViewDelegate kidozCardViewDelegate) {
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void onPreventCornerOverlapChanged(KidozCardViewDelegate kidozCardViewDelegate) {
        getShadowBackground(kidozCardViewDelegate).setAddPaddingForCorners(kidozCardViewDelegate.getPreventCornerOverlap());
        updatePadding(kidozCardViewDelegate);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setBackgroundColor(KidozCardViewDelegate kidozCardViewDelegate, int i) {
        getShadowBackground(kidozCardViewDelegate).setColor(i);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setElevation(KidozCardViewDelegate kidozCardViewDelegate, float f2) {
        getShadowBackground(kidozCardViewDelegate).setShadowSize(f2);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setMaxElevation(KidozCardViewDelegate kidozCardViewDelegate, float f2) {
        getShadowBackground(kidozCardViewDelegate).setMaxShadowSize(f2);
        updatePadding(kidozCardViewDelegate);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setRadius(KidozCardViewDelegate kidozCardViewDelegate, float f2) {
        getShadowBackground(kidozCardViewDelegate).setCornerRadius(f2);
        updatePadding(kidozCardViewDelegate);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void updatePadding(KidozCardViewDelegate kidozCardViewDelegate) {
        Rect rect = new Rect();
        getShadowBackground(kidozCardViewDelegate).getMaxShadowAndCornerPadding(rect);
        View view = (View) kidozCardViewDelegate;
        view.setMinimumHeight((int) Math.ceil(getMinHeight(kidozCardViewDelegate)));
        view.setMinimumWidth((int) Math.ceil(getMinWidth(kidozCardViewDelegate)));
        kidozCardViewDelegate.setShadowPadding(rect.left, rect.top, rect.right, rect.bottom);
    }
}
