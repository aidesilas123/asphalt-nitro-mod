package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class AnimationButton extends TextView implements b {
    a a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f710e;

    public AnimationButton(Context context) {
        super(context);
        this.a = new a();
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getMarqueeValue() {
        return this.f709d;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getRippleValue() {
        return this.b;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getShineValue() {
        return this.c;
    }

    public float getStretchValue() {
        return this.f710e;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.a.a(canvas, this, this);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.a.a(this, i, i2);
    }

    public void setMarqueeValue(float f2) {
        this.f709d = f2;
        postInvalidate();
    }

    public void setRippleValue(float f2) {
        this.b = f2;
        postInvalidate();
    }

    public void setShineValue(float f2) {
        this.c = f2;
        postInvalidate();
    }

    public void setStretchValue(float f2) {
        this.f710e = f2;
        this.a.a(this, f2);
    }
}
