package com.kidoz.sdk.api.general.custom_views.CustomCardView;

import android.content.Context;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
class KidozCardViewApi21 implements KidozCardViewImpl {
    KidozCardViewApi21() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getElevation(KidozCardViewDelegate kidozCardViewDelegate) {
        return ((View) kidozCardViewDelegate).getElevation();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getMaxElevation(KidozCardViewDelegate kidozCardViewDelegate) {
        return ((KidozRoundRectDrawable) kidozCardViewDelegate.getBackground()).getPadding();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getMinHeight(KidozCardViewDelegate kidozCardViewDelegate) {
        return getRadius(kidozCardViewDelegate) * 2.0f;
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getMinWidth(KidozCardViewDelegate kidozCardViewDelegate) {
        return getRadius(kidozCardViewDelegate) * 2.0f;
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public float getRadius(KidozCardViewDelegate kidozCardViewDelegate) {
        return ((KidozRoundRectDrawable) kidozCardViewDelegate.getBackground()).getRadius();
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void initStatic() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void initialize(KidozCardViewDelegate kidozCardViewDelegate, Context context, int i, float f2, float f3, float f4) {
        kidozCardViewDelegate.setBackgroundDrawable(new KidozRoundRectDrawable(i, f2));
        View view = (View) kidozCardViewDelegate;
        view.setClipToOutline(true);
        view.setElevation(f3);
        setMaxElevation(kidozCardViewDelegate, f4);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void onCompatPaddingChanged(KidozCardViewDelegate kidozCardViewDelegate) {
        setMaxElevation(kidozCardViewDelegate, getMaxElevation(kidozCardViewDelegate));
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void onPreventCornerOverlapChanged(KidozCardViewDelegate kidozCardViewDelegate) {
        setMaxElevation(kidozCardViewDelegate, getMaxElevation(kidozCardViewDelegate));
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setBackgroundColor(KidozCardViewDelegate kidozCardViewDelegate, int i) {
        ((KidozRoundRectDrawable) kidozCardViewDelegate.getBackground()).setColor(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setElevation(KidozCardViewDelegate kidozCardViewDelegate, float f2) {
        ((View) kidozCardViewDelegate).setElevation(f2);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setMaxElevation(KidozCardViewDelegate kidozCardViewDelegate, float f2) {
        ((KidozRoundRectDrawable) kidozCardViewDelegate.getBackground()).setPadding(f2, kidozCardViewDelegate.getUseCompatPadding(), kidozCardViewDelegate.getPreventCornerOverlap());
        updatePadding(kidozCardViewDelegate);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void setRadius(KidozCardViewDelegate kidozCardViewDelegate, float f2) {
        ((KidozRoundRectDrawable) kidozCardViewDelegate.getBackground()).setRadius(f2);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewImpl
    public void updatePadding(KidozCardViewDelegate kidozCardViewDelegate) {
        if (!kidozCardViewDelegate.getUseCompatPadding()) {
            kidozCardViewDelegate.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float maxElevation = getMaxElevation(kidozCardViewDelegate);
        float radius = getRadius(kidozCardViewDelegate);
        int iCeil = (int) Math.ceil(KidozRoundRectDrawableWithShadow.calculateHorizontalPadding(maxElevation, radius, kidozCardViewDelegate.getPreventCornerOverlap()));
        int iCeil2 = (int) Math.ceil(KidozRoundRectDrawableWithShadow.calculateVerticalPadding(maxElevation, radius, kidozCardViewDelegate.getPreventCornerOverlap()));
        kidozCardViewDelegate.setShadowPadding(iCeil, iCeil2, iCeil, iCeil2);
    }
}
