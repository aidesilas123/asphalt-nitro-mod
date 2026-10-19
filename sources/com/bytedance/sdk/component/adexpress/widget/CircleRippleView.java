package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CircleRippleView extends View {
    private int a;
    private int b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f825f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f826g;
    private List<Integer> h;
    private List<Integer> i;
    private Paint j;
    private Paint k;
    private float l;
    private float m;
    private int n;

    public CircleRippleView(Context context) {
        this(context, null);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = -1;
        this.b = SupportMenu.CATEGORY_MASK;
        this.c = 18.0f;
        this.f823d = 3;
        this.f824e = 50.0f;
        this.f825f = 2;
        this.f826g = false;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.n = 24;
        c();
    }

    private void c() {
        Paint paint = new Paint();
        this.j = paint;
        paint.setAntiAlias(true);
        this.j.setStrokeWidth(this.n);
        this.h.add(255);
        this.i.add(0);
        Paint paint2 = new Paint();
        this.k = paint2;
        paint2.setAntiAlias(true);
        this.k.setColor(Color.parseColor("#0FFFFFFF"));
        this.k.setStyle(Paint.Style.FILL);
    }

    public void a() {
        this.f826g = true;
        invalidate();
    }

    public void b() {
        this.f826g = false;
        this.i.clear();
        this.h.clear();
        this.h.add(255);
        this.i.add(0);
        invalidate();
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.j.setShader(new LinearGradient(this.l, 0.0f, this.m, getMeasuredHeight(), -1, ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
        int i = 0;
        while (true) {
            if (i >= this.h.size()) {
                break;
            }
            Integer num = this.h.get(i);
            this.j.setAlpha(num.intValue());
            Integer num2 = this.i.get(i);
            if (this.c + num2.intValue() < this.f824e) {
                canvas.drawCircle(this.l, this.m, this.c + num2.intValue(), this.j);
            }
            if (num.intValue() > 0 && num2.intValue() < this.f824e) {
                this.h.set(i, Integer.valueOf(num.intValue() - this.f825f > 0 ? num.intValue() - (this.f825f * 3) : 1));
                this.i.set(i, Integer.valueOf(num2.intValue() + this.f825f));
            }
            i++;
        }
        List<Integer> list = this.i;
        if (list.get(list.size() - 1).intValue() >= this.f824e / this.f823d) {
            this.h.add(255);
            this.i.add(0);
        }
        if (this.i.size() >= 3) {
            this.i.remove(0);
            this.h.remove(0);
        }
        this.j.setAlpha(255);
        this.j.setColor(this.b);
        canvas.drawCircle(this.l, this.m, this.c, this.k);
        if (this.f826g) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f2 = i / 2.0f;
        this.l = f2;
        this.m = i2 / 2.0f;
        float f3 = f2 - (this.n / 2.0f);
        this.f824e = f3;
        this.c = f3 / 4.0f;
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            invalidate();
        }
    }

    public void setColor(int i) {
        this.a = i;
    }

    public void setCoreColor(int i) {
        this.b = i;
    }

    public void setCoreRadius(int i) {
        this.c = i;
    }

    public void setDiffuseSpeed(int i) {
        this.f825f = i;
    }

    public void setDiffuseWidth(int i) {
        this.f823d = i;
    }

    public void setMaxWidth(int i) {
        this.f824e = i;
    }
}
