package com.mbridge.msdk.dycreator.baseview.cusview;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes4.dex */
public class MBRotationView extends FrameLayout {
    Runnable a;
    private Camera b;
    private Matrix c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f6873d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f6874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f6875f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f6876g;
    private int h;
    private int i;
    private int j;
    private int k;
    private float l;
    private float m;
    private boolean n;
    private boolean o;
    private boolean p;

    public MBRotationView(Context context) {
        super(context);
        this.f6875f = 40;
        this.f6876g = 20;
        this.h = 0;
        this.i = 0;
        this.k = 0;
        this.l = 0.5f;
        this.m = 0.9f;
        this.n = true;
        this.o = false;
        this.p = false;
        this.a = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView.1
            @Override // java.lang.Runnable
            public void run() {
                MBRotationView.a(MBRotationView.this);
            }
        };
        a();
    }

    public MBRotationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6875f = 40;
        this.f6876g = 20;
        this.h = 0;
        this.i = 0;
        this.k = 0;
        this.l = 0.5f;
        this.m = 0.9f;
        this.n = true;
        this.o = false;
        this.p = false;
        this.a = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView.1
            @Override // java.lang.Runnable
            public void run() {
                MBRotationView.a(MBRotationView.this);
            }
        };
        a();
    }

    public MBRotationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f6875f = 40;
        this.f6876g = 20;
        this.h = 0;
        this.i = 0;
        this.k = 0;
        this.l = 0.5f;
        this.m = 0.9f;
        this.n = true;
        this.o = false;
        this.p = false;
        this.a = new Runnable() { // from class: com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView.1
            @Override // java.lang.Runnable
            public void run() {
                MBRotationView.a(MBRotationView.this);
            }
        };
        a();
    }

    private int a(int i) {
        int i2;
        int i3;
        int i4;
        if (i == 0) {
            i2 = this.p ? this.i - 2 : this.i + 2;
        } else if (i != 1) {
            if (i != 2) {
                i2 = i != 3 ? 0 : this.i;
            } else if (this.p) {
                i3 = this.i;
                i2 = i3 - 1;
            } else {
                i4 = this.i;
                i2 = i4 + 1;
            }
        } else if (this.p) {
            i4 = this.i;
            i2 = i4 + 1;
        } else {
            i3 = this.i;
            i2 = i3 - 1;
        }
        int childCount = i2 % getChildCount();
        return childCount >= 0 ? childCount : childCount + getChildCount();
    }

    private void a() {
        this.b = new Camera();
        this.c = new Matrix();
        setWillNotDraw(false);
    }

    private void a(int i, int i2, int i3) {
        float f2 = (-i) / 2.0f;
        if (i3 == 0) {
            this.b.translate(0.0f, f2, 0.0f);
            float f3 = -i2;
            this.b.rotateX(f3);
            this.b.translate(0.0f, f2, 0.0f);
            this.b.translate(0.0f, f2, 0.0f);
            this.b.rotateX(f3);
            this.b.translate(0.0f, f2, 0.0f);
            return;
        }
        if (i3 == 1) {
            this.b.translate(0.0f, f2, 0.0f);
            this.b.rotateX(i2);
            this.b.translate(0.0f, f2, 0.0f);
        } else if (i3 != 2) {
            if (i3 != 3) {
                return;
            }
            this.b.rotateX(0.0f);
        } else {
            this.b.translate(0.0f, f2, 0.0f);
            this.b.rotateX(-i2);
            this.b.translate(0.0f, f2, 0.0f);
        }
    }

    private void a(Canvas canvas, int i, int i2, int i3) {
        canvas.save();
        this.b.save();
        this.c.reset();
        float f2 = i;
        this.b.translate(0.0f, f2, 0.0f);
        this.b.rotateX(this.h);
        this.b.translate(0.0f, f2, 0.0f);
        if (i == 0) {
            if (this.p) {
                a(this.f6873d, this.f6875f, i3);
            } else {
                a(-this.f6873d, -this.f6875f, i3);
            }
        } else if (i > 0) {
            a(this.f6873d, this.f6875f, i3);
        } else if (i < 0) {
            a(-this.f6873d, -this.f6875f, i3);
        }
        this.b.getMatrix(this.c);
        this.b.restore();
        this.c.preTranslate((-getWidth()) / 2, -i2);
        this.c.postTranslate(getWidth() / 2, i2);
        canvas.concat(this.c);
        View childAt = getChildAt(a(i3));
        if (childAt != null) {
            drawChild(canvas, childAt, 0L);
        }
        canvas.restore();
    }

    static /* synthetic */ void a(MBRotationView mBRotationView) {
        if (mBRotationView.getChildCount() == 0) {
            return;
        }
        int i = mBRotationView.h - 1;
        mBRotationView.h = i;
        int i2 = mBRotationView.i;
        mBRotationView.j = i2;
        int i3 = mBRotationView.f6875f;
        int i4 = i2 - (i / i3);
        int i5 = i % i3;
        mBRotationView.h = i5;
        mBRotationView.i = i4;
        int iA = Math.abs(i5) > mBRotationView.f6875f / 2 ? mBRotationView.a(2) : mBRotationView.a(3);
        if (mBRotationView.k != iA) {
            mBRotationView.k = iA;
        }
        mBRotationView.invalidate();
        if (mBRotationView.n) {
            mBRotationView.postDelayed(mBRotationView.a, 1000 / mBRotationView.f6876g);
        }
    }

    private void b(int i, int i2, int i3) {
        if (i3 == 0) {
            float f2 = (-i) / 2;
            this.b.translate(f2, 0.0f, 0.0f);
            float f3 = -i2;
            this.b.rotateY(f3);
            this.b.translate(f2, 0.0f, 0.0f);
            this.b.translate(f2, 0.0f, 0.0f);
            this.b.rotateY(f3);
            this.b.translate(f2, 0.0f, 0.0f);
            return;
        }
        if (i3 == 1) {
            float f4 = i / 2;
            this.b.translate(f4, 0.0f, 0.0f);
            this.b.rotateY(i2);
            this.b.translate(f4, 0.0f, 0.0f);
            return;
        }
        if (i3 != 2) {
            if (i3 != 3) {
                return;
            }
            this.b.rotateY(0.0f);
        } else {
            float f5 = (-i) / 2;
            this.b.translate(f5, 0.0f, 0.0f);
            this.b.rotateY(-i2);
            this.b.translate(f5, 0.0f, 0.0f);
        }
    }

    private void b(Canvas canvas, int i, int i2, int i3) {
        canvas.save();
        this.b.save();
        this.c.reset();
        float f2 = i;
        this.b.translate(f2, 0.0f, 0.0f);
        this.b.rotateY(this.h);
        this.b.translate(f2, 0.0f, 0.0f);
        if (i == 0) {
            if (this.p) {
                b(this.f6874e, this.f6875f, i3);
            } else {
                b(-this.f6874e, -this.f6875f, i3);
            }
        } else if (i > 0) {
            b(this.f6874e, this.f6875f, i3);
        } else if (i < 0) {
            b(-this.f6874e, -this.f6875f, i3);
        }
        this.b.getMatrix(this.c);
        this.b.restore();
        this.c.preTranslate(-i2, (-getHeight()) / 2);
        this.c.postTranslate(i2, getHeight() / 2);
        canvas.concat(this.c);
        View childAt = getChildAt(a(i3));
        if (childAt != null) {
            drawChild(canvas, childAt, 0L);
        }
        canvas.restore();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        if (getChildCount() == 0) {
            return;
        }
        if (this.o) {
            int height = getHeight() / 2;
            int i = ((this.h * this.f6873d) / 2) / this.f6875f;
            a(canvas, i, height, 0);
            a(canvas, i, height, 1);
            if (Math.abs(this.h) > this.f6875f / 2) {
                a(canvas, i, height, 3);
                a(canvas, i, height, 2);
                return;
            } else {
                a(canvas, i, height, 2);
                a(canvas, i, height, 3);
                return;
            }
        }
        int width = getWidth() / 2;
        int i2 = ((this.h * this.f6874e) / 2) / this.f6875f;
        b(canvas, i2, width, 0);
        b(canvas, i2, width, 1);
        if (Math.abs(this.h) > this.f6875f / 2) {
            b(canvas, i2, width, 3);
            b(canvas, i2, width, 2);
        } else {
            b(canvas, i2, width, 2);
            b(canvas, i2, width, 3);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        float f2 = i5;
        float f3 = this.l;
        int i6 = (int) (((1.0f - f3) * f2) / 2.0f);
        int i7 = i4 - i2;
        float f4 = i7;
        float f5 = this.m;
        int i8 = (int) (((1.0f - f5) * f4) / 2.0f);
        this.f6873d = (int) (f4 * f5);
        this.f6874e = (int) (f2 * f3);
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            childAt.layout(i6, i8, i5 - i6, i7 - i8);
            childAt.setClickable(true);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            int i10 = layoutParams.width;
            int i11 = this.f6874e;
            if (i10 != i11) {
                layoutParams.width = i11;
                layoutParams.height = this.f6873d;
                childAt.setLayoutParams(layoutParams);
            }
        }
    }

    public void setAutoscroll(boolean z) {
        if (z) {
            postDelayed(this.a, 1000 / this.f6876g);
        }
        this.n = z;
    }

    public void setHeightRatio(float f2) {
        this.m = f2;
    }

    public void setRotateV(boolean z) {
        this.o = z;
        invalidate();
    }

    public void setWidthRatio(float f2) {
        this.l = f2;
    }
}
