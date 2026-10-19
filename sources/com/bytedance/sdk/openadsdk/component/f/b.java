package com.bytedance.sdk.openadsdk.component.f;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;

/* JADX INFO: compiled from: TTAppOpenAdTopLayoutHelper.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    private final com.bytedance.sdk.openadsdk.component.h.a a;
    private a b;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1305d = 5.0f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1306e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ValueAnimator f1307f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f1308g;

    public b(com.bytedance.sdk.openadsdk.component.h.a aVar) {
        this.a = aVar;
    }

    public void a() {
        int i = (int) (this.f1305d * 1000.0f);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, i);
        this.f1307f = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(i);
        this.f1307f.setInterpolator(new LinearInterpolator());
        this.f1307f.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.component.f.b.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                b.this.a.a(b.this.c);
                b.this.a(iIntValue);
            }
        });
    }

    public void a(float f2) {
        this.f1305d = f2;
        if (f2 <= 0.0f) {
            this.f1305d = 5.0f;
        }
        a();
    }

    public void a(int i) {
        this.c = i;
        float f2 = (i * 1.0f) / 1000.0f;
        int iCeil = (int) Math.ceil(this.f1305d - f2);
        if (iCeil <= 0) {
            a aVar = this.b;
            if (aVar != null && !this.f1308g) {
                aVar.b();
                this.f1308g = true;
            }
            iCeil = 0;
        }
        boolean z = f2 >= ((float) this.f1306e);
        a aVar2 = this.b;
        if (aVar2 != null) {
            aVar2.a(iCeil, i, z);
        }
    }

    public void a(a aVar) {
        this.b = aVar;
    }

    public ValueAnimator b() {
        return this.f1307f;
    }

    public void b(int i) {
        this.f1306e = i;
    }

    public int c() {
        return this.f1306e;
    }
}
