package com.kidoz.sdk.api.general.custom_views.CustomCardView;

import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes4.dex */
interface KidozCardViewDelegate {
    Drawable getBackground();

    boolean getPreventCornerOverlap();

    float getRadius();

    boolean getUseCompatPadding();

    void setBackgroundDrawable(Drawable drawable);

    void setShadowPadding(int i, int i2, int i3, int i4);
}
