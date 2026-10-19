package com.kidoz.sdk.api.ui_views.loading_progress_view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.kidoz.sdk.api.general.utils.Utils;

/* JADX INFO: loaded from: classes4.dex */
public class LoadingProgressView extends View {
    private static final float LINE_WIDTH = 0.037037037f;
    private CircularProgressDrawable mDrawable;

    public LoadingProgressView(Context context) {
        this(context, null);
        setVisibility(8);
    }

    public LoadingProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        setVisibility(8);
    }

    public LoadingProgressView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Point screenSize = Utils.getScreenSize(context);
        CircularProgressDrawable circularProgressDrawable = new CircularProgressDrawable(Color.parseColor("#f57900"), Math.min(screenSize.x, screenSize.y) * LINE_WIDTH);
        this.mDrawable = circularProgressDrawable;
        circularProgressDrawable.setCallback(this);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        CircularProgressDrawable circularProgressDrawable = this.mDrawable;
        if (circularProgressDrawable != null) {
            circularProgressDrawable.draw(canvas);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mDrawable.setBounds(0, 0, i, i2);
    }

    public void setCircleColor(int i) {
        this.mDrawable.setPaintColor(i);
    }

    public void setCircleWidth(float f2) {
        this.mDrawable.setStrokeWidth(f2);
    }

    public void setCircleWidthRelativeToSize(float f2) {
        this.mDrawable.setStrokeWidth(f2 * LINE_WIDTH);
    }

    public void startLoadingAnimation() {
        if (this.mDrawable.isRunning()) {
            return;
        }
        setVisibility(0);
        this.mDrawable.start();
    }

    public void stopLoadingAnimation() {
        this.mDrawable.stop();
        setVisibility(8);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return drawable == this.mDrawable || super.verifyDrawable(drawable);
    }
}
