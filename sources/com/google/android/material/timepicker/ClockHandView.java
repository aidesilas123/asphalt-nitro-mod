package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.annotation.Dimension;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.core.view.ViewCompat;
import com.google.android.material.R$attr;
import com.google.android.material.R$dimen;
import com.google.android.material.R$style;
import com.google.android.material.R$styleable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
class ClockHandView extends View {
    private ValueAnimator a;
    private boolean b;
    private float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f3456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f3457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f3458f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<d> f3459g;
    private final int h;
    private final float i;
    private final Paint j;
    private final RectF k;

    @Px
    private final int l;
    private float m;
    private boolean n;
    private c o;
    private double p;
    private int q;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
        void a(@FloatRange(from = 0.0d, to = 360.0d) float f2, boolean z);
    }

    public interface d {
        void a(@FloatRange(from = 0.0d, to = 360.0d) float f2, boolean z);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.G);
    }

    public ClockHandView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3459g = new ArrayList();
        Paint paint = new Paint();
        this.j = paint;
        this.k = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.l1, i, R$style.x);
        this.q = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.n1, 0);
        this.h = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.o1, 0);
        this.l = getResources().getDimensionPixelSize(R$dimen.q);
        this.i = r6.getDimensionPixelSize(R$dimen.o);
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.m1, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        k(0.0f);
        this.f3458f = ViewConfiguration.get(context).getScaledTouchSlop();
        ViewCompat.setImportantForAccessibility(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }

    private void c(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.q * ((float) Math.cos(this.p))) + width;
        float f2 = height;
        float fSin = (this.q * ((float) Math.sin(this.p))) + f2;
        this.j.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.h, this.j);
        double dSin = Math.sin(this.p);
        double dCos = Math.cos(this.p);
        this.j.setStrokeWidth(this.l);
        canvas.drawLine(width, f2, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.j);
        canvas.drawCircle(width, f2, this.i, this.j);
    }

    private int e(float f2, float f3) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f3 - (getHeight() / 2), f2 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> h(float f2) {
        float f3 = f();
        if (Math.abs(f3 - f2) > 180.0f) {
            if (f3 > 180.0f && f2 < 180.0f) {
                f2 += 360.0f;
            }
            if (f3 < 180.0f && f2 > 180.0f) {
                f3 += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(f3), Float.valueOf(f2));
    }

    private boolean i(float f2, float f3, boolean z, boolean z2, boolean z3) {
        float fE = e(f2, f3);
        boolean z4 = false;
        boolean z5 = f() != fE;
        if (z2 && z5) {
            return true;
        }
        if (!z5 && !z) {
            return false;
        }
        if (z3 && this.b) {
            z4 = true;
        }
        l(fE, z4);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(@FloatRange(from = 0.0d, to = 360.0d) float f2, boolean z) {
        float f3 = f2 % 360.0f;
        this.m = f3;
        this.p = Math.toRadians(f3 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.q * ((float) Math.cos(this.p)));
        float fSin = height + (this.q * ((float) Math.sin(this.p)));
        RectF rectF = this.k;
        int i = this.h;
        rectF.set(width - i, fSin - i, width + i, fSin + i);
        Iterator<d> it = this.f3459g.iterator();
        while (it.hasNext()) {
            it.next().a(f3, z);
        }
        invalidate();
    }

    public void b(d dVar) {
        this.f3459g.add(dVar);
    }

    public RectF d() {
        return this.k;
    }

    @FloatRange(from = 0.0d, to = 360.0d)
    public float f() {
        return this.m;
    }

    public int g() {
        return this.h;
    }

    public void j(@Dimension int i) {
        this.q = i;
        invalidate();
    }

    public void k(@FloatRange(from = 0.0d, to = 360.0d) float f2) {
        l(f2, false);
    }

    public void l(@FloatRange(from = 0.0d, to = 360.0d) float f2, boolean z) {
        ValueAnimator valueAnimator = this.a;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z) {
            m(f2, false);
            return;
        }
        Pair<Float, Float> pairH = h(f2);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pairH.first).floatValue(), ((Float) pairH.second).floatValue());
        this.a = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.a.addUpdateListener(new a());
        this.a.addListener(new b());
        this.a.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        k(f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        boolean z3;
        c cVar;
        int actionMasked = motionEvent.getActionMasked();
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i = (int) (x - this.c);
                int i2 = (int) (y - this.f3456d);
                this.f3457e = (i * i) + (i2 * i2) > this.f3458f;
                boolean z4 = this.n;
                z = actionMasked == 1;
                z2 = z4;
            } else {
                z = false;
                z2 = false;
            }
            z3 = false;
        } else {
            this.c = x;
            this.f3456d = y;
            this.f3457e = true;
            this.n = false;
            z = false;
            z2 = false;
            z3 = true;
        }
        boolean zI = i(x, y, z2, z3, z) | this.n;
        this.n = zI;
        if (zI && z && (cVar = this.o) != null) {
            cVar.a(e(x, y), this.f3457e);
        }
        return true;
    }
}
