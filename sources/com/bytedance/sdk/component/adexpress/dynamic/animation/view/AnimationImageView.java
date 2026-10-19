package com.bytedance.sdk.component.adexpress.dynamic.animation.view;

import android.content.Context;
import android.graphics.Canvas;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.dynamic.b.g;

/* JADX INFO: loaded from: classes.dex */
public class AnimationImageView extends ImageView implements b {
    a a;
    private float b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f711d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f712e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private g f713f;

    public AnimationImageView(Context context) {
        super(context);
        this.a = new a();
    }

    public g getBrickNativeValue() {
        return this.f713f;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.animation.view.b
    public float getMarqueeValue() {
        return this.f711d;
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
        return this.f712e;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        g gVar;
        super.onDraw(canvas);
        this.a.a(canvas, this, this);
        if (getRippleValue() == 0.0f || (gVar = this.f713f) == null || gVar.b() <= 0) {
            return;
        }
        ((ViewGroup) getParent()).setClipChildren(false);
        ((ViewGroup) getParent().getParent()).setClipChildren(false);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.a.a(this, i, i2);
    }

    public void setBrickNativeValue(g gVar) {
        this.f713f = gVar;
    }

    public void setMarqueeValue(float f2) {
        this.f711d = f2;
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
        this.f712e = f2;
        this.a.a(this, f2);
    }
}
