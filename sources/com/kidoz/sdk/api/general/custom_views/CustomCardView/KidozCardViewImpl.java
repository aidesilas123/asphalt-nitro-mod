package com.kidoz.sdk.api.general.custom_views.CustomCardView;

import android.content.Context;

/* JADX INFO: loaded from: classes4.dex */
interface KidozCardViewImpl {
    float getElevation(KidozCardViewDelegate kidozCardViewDelegate);

    float getMaxElevation(KidozCardViewDelegate kidozCardViewDelegate);

    float getMinHeight(KidozCardViewDelegate kidozCardViewDelegate);

    float getMinWidth(KidozCardViewDelegate kidozCardViewDelegate);

    float getRadius(KidozCardViewDelegate kidozCardViewDelegate);

    void initStatic();

    void initialize(KidozCardViewDelegate kidozCardViewDelegate, Context context, int i, float f2, float f3, float f4);

    void onCompatPaddingChanged(KidozCardViewDelegate kidozCardViewDelegate);

    void onPreventCornerOverlapChanged(KidozCardViewDelegate kidozCardViewDelegate);

    void setBackgroundColor(KidozCardViewDelegate kidozCardViewDelegate, int i);

    void setElevation(KidozCardViewDelegate kidozCardViewDelegate, float f2);

    void setMaxElevation(KidozCardViewDelegate kidozCardViewDelegate, float f2);

    void setRadius(KidozCardViewDelegate kidozCardViewDelegate, float f2);

    void updatePadding(KidozCardViewDelegate kidozCardViewDelegate);
}
