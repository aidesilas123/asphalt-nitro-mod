package com.kidoz.sdk.api.ui_views.loading_progress_view;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX INFO: loaded from: classes4.dex */
public class CircularProgressDrawable extends Drawable implements Animatable {
    private static final int ANGLE_ANIMATOR_DURATION = 2000;
    private static final int MIN_SWEEP_ANGLE = 30;
    private static final int SWEEP_ANIMATOR_DURATION = 600;
    private final RectF fBounds = new RectF();
    private Property<CircularProgressDrawable, Float> mAngleProperty;
    private float mBorderWidth;
    private float mCurrentGlobalAngle;
    private float mCurrentGlobalAngleOffset;
    private float mCurrentSweepAngle;
    private boolean mModeAppearing;
    private ObjectAnimator mObjectAnimatorAngle;
    private ObjectAnimator mObjectAnimatorSweep;
    private Paint mPaint;
    private boolean mRunning;
    private Property<CircularProgressDrawable, Float> mSweepProperty;
    private static final Interpolator ANGLE_INTERPOLATOR = new LinearInterpolator();
    private static final Interpolator SWEEP_INTERPOLATOR = new DecelerateInterpolator();

    public CircularProgressDrawable(int i, float f2) {
        Class<Float> cls = Float.class;
        this.mAngleProperty = new Property<CircularProgressDrawable, Float>(cls, "angle") { // from class: com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable.1
            @Override // android.util.Property
            public Float get(CircularProgressDrawable circularProgressDrawable) {
                return Float.valueOf(circularProgressDrawable.getCurrentGlobalAngle());
            }

            @Override // android.util.Property
            public void set(CircularProgressDrawable circularProgressDrawable, Float f3) {
                circularProgressDrawable.setCurrentGlobalAngle(f3.floatValue());
            }
        };
        this.mSweepProperty = new Property<CircularProgressDrawable, Float>(cls, "arc") { // from class: com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable.2
            @Override // android.util.Property
            public Float get(CircularProgressDrawable circularProgressDrawable) {
                return Float.valueOf(circularProgressDrawable.getCurrentSweepAngle());
            }

            @Override // android.util.Property
            public void set(CircularProgressDrawable circularProgressDrawable, Float f3) {
                circularProgressDrawable.setCurrentSweepAngle(f3.floatValue());
            }
        };
        this.mBorderWidth = f2;
        Paint paint = new Paint();
        this.mPaint = paint;
        paint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(f2);
        this.mPaint.setColor(i);
        setupAnimations();
    }

    private void setupAnimations() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, this.mAngleProperty, 360.0f);
        this.mObjectAnimatorAngle = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setInterpolator(ANGLE_INTERPOLATOR);
        this.mObjectAnimatorAngle.setDuration(AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
        this.mObjectAnimatorAngle.setRepeatMode(1);
        this.mObjectAnimatorAngle.setRepeatCount(-1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this, this.mSweepProperty, 300.0f);
        this.mObjectAnimatorSweep = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setInterpolator(SWEEP_INTERPOLATOR);
        this.mObjectAnimatorSweep.setDuration(600L);
        this.mObjectAnimatorSweep.setRepeatMode(1);
        this.mObjectAnimatorSweep.setRepeatCount(-1);
        this.mObjectAnimatorSweep.addListener(new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.loading_progress_view.CircularProgressDrawable.3
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
                CircularProgressDrawable.this.toggleAppearingMode();
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toggleAppearingMode() {
        boolean z = !this.mModeAppearing;
        this.mModeAppearing = z;
        if (z) {
            this.mCurrentGlobalAngleOffset = (this.mCurrentGlobalAngleOffset + 60.0f) % 360.0f;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        float f2;
        float f3 = this.mCurrentGlobalAngle - this.mCurrentGlobalAngleOffset;
        float f4 = this.mCurrentSweepAngle;
        if (this.mModeAppearing) {
            f2 = f4 + 30.0f;
        } else {
            f3 += f4;
            f2 = (360.0f - f4) - 30.0f;
        }
        canvas.drawArc(this.fBounds, f3, f2, false, this.mPaint);
    }

    public float getCurrentGlobalAngle() {
        return this.mCurrentGlobalAngle;
    }

    public float getCurrentSweepAngle() {
        return this.mCurrentSweepAngle;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        RectF rectF = this.fBounds;
        float f2 = rect.left;
        float f3 = this.mBorderWidth;
        rectF.left = f2 + (f3 / 2.0f) + 0.5f;
        rectF.right = (rect.right - (f3 / 2.0f)) - 0.5f;
        rectF.top = rect.top + (f3 / 2.0f) + 0.5f;
        rectF.bottom = (rect.bottom - (f3 / 2.0f)) - 0.5f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public void setCurrentGlobalAngle(float f2) {
        this.mCurrentGlobalAngle = f2;
        invalidateSelf();
    }

    public void setCurrentSweepAngle(float f2) {
        this.mCurrentSweepAngle = f2;
        invalidateSelf();
    }

    public void setPaintColor(int i) {
        this.mPaint.setColor(i);
    }

    public void setStrokeWidth(float f2) {
        this.mPaint.setStrokeWidth(f2);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        if (isRunning()) {
            return;
        }
        this.mRunning = true;
        this.mObjectAnimatorAngle.start();
        this.mObjectAnimatorSweep.start();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.mRunning = false;
            this.mObjectAnimatorAngle.cancel();
            this.mObjectAnimatorSweep.cancel();
            invalidateSelf();
        }
    }
}
