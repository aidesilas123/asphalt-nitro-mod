package com.google.android.material.progressindicator;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import com.google.android.material.progressindicator.a;

/* JADX INFO: loaded from: classes3.dex */
public final class IndeterminateDrawable<S extends a> extends d {
    private e<S> p;
    private f<ObjectAnimator> q;

    IndeterminateDrawable(@NonNull Context context, @NonNull a aVar, @NonNull e<S> eVar, @NonNull f<ObjectAnimator> fVar) {
        super(context, aVar);
        q(eVar);
        p(fVar);
    }

    @NonNull
    public static IndeterminateDrawable<CircularProgressIndicatorSpec> createCircularDrawable(@NonNull Context context, @NonNull CircularProgressIndicatorSpec circularProgressIndicatorSpec) {
        return new IndeterminateDrawable<>(context, circularProgressIndicatorSpec, new b(circularProgressIndicatorSpec), new c(circularProgressIndicatorSpec));
    }

    @NonNull
    public static IndeterminateDrawable<LinearProgressIndicatorSpec> createLinearDrawable(@NonNull Context context, @NonNull LinearProgressIndicatorSpec linearProgressIndicatorSpec) {
        return new IndeterminateDrawable<>(context, linearProgressIndicatorSpec, new g(linearProgressIndicatorSpec), linearProgressIndicatorSpec.f3340g == 0 ? new h(linearProgressIndicatorSpec) : new i(context, linearProgressIndicatorSpec));
    }

    @Override // com.google.android.material.progressindicator.d, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void clearAnimationCallbacks() {
        super.clearAnimationCallbacks();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        Rect rect = new Rect();
        if (getBounds().isEmpty() || !isVisible() || !canvas.getClipBounds(rect)) {
            return;
        }
        canvas.save();
        this.p.g(canvas, g());
        this.p.c(canvas, this.n);
        int i = 0;
        while (true) {
            f<ObjectAnimator> fVar = this.q;
            int[] iArr = fVar.c;
            if (i >= iArr.length) {
                canvas.restore();
                return;
            }
            e<S> eVar = this.p;
            Paint paint = this.n;
            float[] fArr = fVar.b;
            int i2 = i * 2;
            eVar.b(canvas, paint, fArr[i2], fArr[i2 + 1], iArr[i]);
            i++;
        }
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getAlpha() {
        return super.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.p.d();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.p.e();
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ int getOpacity() {
        return super.getOpacity();
    }

    @Override // com.google.android.material.progressindicator.d
    public /* bridge */ /* synthetic */ boolean h() {
        return super.h();
    }

    @Override // com.google.android.material.progressindicator.d
    public /* bridge */ /* synthetic */ boolean i() {
        return super.i();
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ boolean isRunning() {
        return super.isRunning();
    }

    @Override // com.google.android.material.progressindicator.d
    public /* bridge */ /* synthetic */ boolean n(boolean z, boolean z2, boolean z3) {
        return super.n(z, z2, z3);
    }

    @Override // com.google.android.material.progressindicator.d
    boolean o(boolean z, boolean z2, boolean z3) {
        boolean zO = super.o(z, z2, z3);
        if (!isRunning()) {
            this.q.a();
        }
        float fA = this.f3351d.a(this.b.getContentResolver());
        if (z && (z3 || (Build.VERSION.SDK_INT <= 21 && fA > 0.0f))) {
            this.q.d();
        }
        return zO;
    }

    void p(@NonNull f<ObjectAnimator> fVar) {
        this.q = fVar;
        fVar.c(this);
    }

    void q(@NonNull e<S> eVar) {
        this.p = eVar;
        eVar.f(this);
    }

    @Override // com.google.android.material.progressindicator.d, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ void registerAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        super.registerAnimationCallback(animationCallback);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setAlpha(int i) {
        super.setAlpha(i);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ void setColorFilter(@Nullable ColorFilter colorFilter) {
        super.setColorFilter(colorFilter);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Drawable
    public /* bridge */ /* synthetic */ boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2);
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void start() {
        super.start();
    }

    @Override // com.google.android.material.progressindicator.d, android.graphics.drawable.Animatable
    public /* bridge */ /* synthetic */ void stop() {
        super.stop();
    }

    @Override // com.google.android.material.progressindicator.d, androidx.vectordrawable.graphics.drawable.Animatable2Compat
    public /* bridge */ /* synthetic */ boolean unregisterAnimationCallback(@NonNull Animatable2Compat.AnimationCallback animationCallback) {
        return super.unregisterAnimationCallback(animationCallback);
    }
}
