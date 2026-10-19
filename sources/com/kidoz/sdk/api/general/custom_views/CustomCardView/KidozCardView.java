package com.kidoz.sdk.api.general.custom_views.CustomCardView;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public class KidozCardView extends FrameLayout implements KidozCardViewDelegate {
    private static final KidozCardViewImpl IMPL;
    private boolean mCompatPadding;
    private final Rect mContentPadding;
    private boolean mPreventCornerOverlap;
    private final Rect mShadowBounds;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            IMPL = new KidozCardViewApi21();
        } else if (i >= 17) {
            IMPL = new KidozCardViewJellybeanMr1();
        } else {
            IMPL = new KidozCardViewEclairMr1();
        }
        IMPL.initStatic();
    }

    public KidozCardView(Context context) {
        super(context);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        initialize(context, null, 0);
    }

    public KidozCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        initialize(context, attributeSet, 0);
    }

    public KidozCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        initialize(context, attributeSet, i);
    }

    private void initialize(Context context, AttributeSet attributeSet, int i) {
        this.mCompatPadding = false;
        this.mPreventCornerOverlap = true;
        Rect rect = this.mContentPadding;
        rect.left = 0;
        rect.top = 0;
        rect.right = 0;
        rect.bottom = 0;
        IMPL.initialize(this, context, -1, 0.0f, 0.0f, 0.0f);
    }

    public float getCardElevation() {
        return IMPL.getElevation(this);
    }

    public int getContentPaddingBottom() {
        return this.mContentPadding.bottom;
    }

    public int getContentPaddingLeft() {
        return this.mContentPadding.left;
    }

    public int getContentPaddingRight() {
        return this.mContentPadding.right;
    }

    public int getContentPaddingTop() {
        return this.mContentPadding.top;
    }

    public float getMaxCardElevation() {
        return IMPL.getMaxElevation(this);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewDelegate
    public boolean getPreventCornerOverlap() {
        return this.mPreventCornerOverlap;
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewDelegate
    public float getRadius() {
        return IMPL.getRadius(this);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewDelegate
    public boolean getUseCompatPadding() {
        return this.mCompatPadding;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (IMPL instanceof KidozCardViewApi21) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.getMinWidth(this)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(r0.getMinHeight(this)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        IMPL.setBackgroundColor(this, i);
    }

    public void setCardElevation(float f2) {
        IMPL.setElevation(this, f2);
    }

    public void setContentPadding(int i, int i2, int i3, int i4) {
        this.mContentPadding.set(i, i2, i3, i4);
        IMPL.updatePadding(this);
    }

    public void setMaxCardElevation(float f2) {
        IMPL.setMaxElevation(this, f2);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z == this.mPreventCornerOverlap) {
            return;
        }
        this.mPreventCornerOverlap = z;
        IMPL.onPreventCornerOverlapChanged(this);
    }

    public void setRadius(float f2) {
        IMPL.setRadius(this, f2);
    }

    @Override // com.kidoz.sdk.api.general.custom_views.CustomCardView.KidozCardViewDelegate
    public void setShadowPadding(int i, int i2, int i3, int i4) {
        this.mShadowBounds.set(i, i2, i3, i4);
        Rect rect = this.mContentPadding;
        super.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.mCompatPadding == z) {
            return;
        }
        this.mCompatPadding = z;
        IMPL.onCompatPaddingChanged(this);
    }
}
