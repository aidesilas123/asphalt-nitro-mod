package com.bytedance.sdk.openadsdk.core.customview;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RotateDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: loaded from: classes2.dex */
public class PAGProgressBar extends FrameLayout {
    private int a;
    private int b;
    private Drawable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Drawable f1489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f1490e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f1491f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ValueAnimator f1492g;
    private boolean h;

    public PAGProgressBar(Context context) {
        super(context);
        this.a = 100;
    }

    public PAGProgressBar(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 100;
    }

    private void a() {
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, 10000);
        this.f1492g = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        this.f1492g.setRepeatCount(-1);
        this.f1492g.setInterpolator(new LinearInterpolator());
        this.f1492g.setRepeatMode(1);
        this.f1492g.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                PAGProgressBar.this.setProgress(((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        });
        this.f1492g.start();
        setMax(10000);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1491f = true;
        if (this.f1490e != null) {
            a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1491f = false;
        ValueAnimator valueAnimator = this.f1492g;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.f1492g.removeAllUpdateListeners();
            this.f1492g = null;
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(@NonNull View view, int i) {
        ValueAnimator valueAnimator;
        super.onVisibilityChanged(view, i);
        if (i == 0) {
            if (this.h) {
                this.h = false;
                if (Build.VERSION.SDK_INT < 19 || (valueAnimator = this.f1492g) == null) {
                    a();
                    return;
                } else {
                    valueAnimator.resume();
                    return;
                }
            }
            return;
        }
        ValueAnimator valueAnimator2 = this.f1492g;
        if (valueAnimator2 == null || this.h) {
            return;
        }
        this.h = true;
        if (Build.VERSION.SDK_INT >= 19) {
            valueAnimator2.pause();
            return;
        }
        valueAnimator2.cancel();
        this.f1492g.removeAllUpdateListeners();
        this.f1492g = null;
    }

    public void setIndeterminateDrawable(Drawable drawable) {
        this.f1490e = drawable;
        setProgressDrawable(drawable);
        if (this.f1491f && this.f1492g == null) {
            a();
        }
    }

    @Override // android.view.View
    public void setLayoutParams(ViewGroup.LayoutParams layoutParams) {
        a.a(layoutParams);
        super.setLayoutParams(layoutParams);
    }

    public void setMax(int i) {
        this.a = i;
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.setPaddingRelative(i, i2, i3, i4);
        } else {
            super.setPadding(i, i2, i3, i4);
        }
    }

    public void setProgress(int i) {
        this.b = i;
        Drawable drawable = this.c;
        if (drawable != null) {
            drawable.setLevel((int) ((i * 10000.0f) / this.a));
        }
    }

    public void setProgressDrawable(Drawable drawable) {
        this.f1489d = drawable;
        setBackground(drawable);
        Drawable drawable2 = this.f1489d;
        if (drawable2 instanceof LayerDrawable) {
            int numberOfLayers = ((LayerDrawable) drawable2).getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                Drawable drawable3 = ((LayerDrawable) this.f1489d).getDrawable(i);
                if ((drawable3 instanceof ScaleDrawable) || (drawable3 instanceof ClipDrawable)) {
                    this.c = drawable3;
                }
            }
        }
        Drawable drawable4 = this.f1489d;
        if (drawable4 instanceof RotateDrawable) {
            this.c = drawable4;
        }
    }
}
