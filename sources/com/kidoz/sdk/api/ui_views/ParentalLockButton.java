package com.kidoz.sdk.api.ui_views;

import android.animation.Animator;
import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import android.widget.ImageView;
import com.kidoz.sdk.api.general.animations.GenAnimator;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.picasso_related.PicassoOk;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class ParentalLockButton extends ImageView {
    private int mAnimationType;
    private Paint mBluePaint;
    private int mHeight;
    private boolean mIsImageFilesExist;
    private boolean mIsLockActive;
    private boolean mIsLockStateChanged;
    private File mLockActiveImageFile;
    private RectF mLockOpenRectF;
    private File mLockUnActiveImageFile;
    private Paint mOrangePaint;
    private ParentalLockButtonListener mParentalLockButtonListener;
    private RectF mRectF;
    private Paint mWhitePaint;
    private int mWidth;

    public interface ParentalLockButtonListener {
        void onClickEnd();

        void onClickStarted();
    }

    public ParentalLockButton(Context context, File file, File file2, ParentalLockButtonListener parentalLockButtonListener) {
        super(context);
        this.mParentalLockButtonListener = parentalLockButtonListener;
        this.mLockActiveImageFile = file;
        this.mLockUnActiveImageFile = file2;
        setScaleType(ImageView.ScaleType.FIT_XY);
        initView();
    }

    private void initImageParameters() {
        float scaleFactor = ScreenUtils.getScaleFactor(getContext());
        this.mWidth = 178;
        this.mHeight = 128;
        this.mAnimationType = 1;
        if (this.mIsImageFilesExist) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.mLockActiveImageFile.getAbsolutePath(), options);
            this.mWidth = options.outWidth;
            this.mHeight = options.outHeight;
        }
        this.mWidth = (int) (this.mWidth * scaleFactor);
        this.mHeight = (int) (this.mHeight * scaleFactor);
    }

    private void initOnClickAnimation() {
        setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.ParentalLockButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ParentalLockButton.this.mParentalLockButtonListener != null) {
                    ParentalLockButton.this.mParentalLockButtonListener.onClickStarted();
                }
                if (ParentalLockButton.this.mAnimationType != 1) {
                    return;
                }
                GenAnimator.playStandUpAnimation(view, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.ParentalLockButton.1.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (ParentalLockButton.this.mParentalLockButtonListener != null) {
                            ParentalLockButton.this.mParentalLockButtonListener.onClickEnd();
                        }
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }
                });
            }
        });
    }

    private void initPaints() {
        Paint paint = new Paint(1);
        this.mWhitePaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mWhitePaint.setColor(Color.parseColor("#ffffff"));
        Paint paint2 = new Paint(1);
        this.mBluePaint = paint2;
        paint2.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mBluePaint.setColor(Color.parseColor("#04a0e1"));
        Paint paint3 = new Paint(1);
        this.mOrangePaint = paint3;
        paint3.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mOrangePaint.setColor(Color.parseColor("#e59024"));
        setLayerType(1, this.mWhitePaint);
    }

    private void initRectF() {
        int i = this.mWidth;
        int i2 = this.mHeight;
        this.mRectF = new RectF(i * 0.3539326f, i2 * 0.47058824f, i * 0.5730337f, i2 * 0.6838235f);
        int i3 = this.mWidth;
        int i4 = this.mHeight;
        this.mLockOpenRectF = new RectF(i3 * 0.5168539f, i4 * 0.3897059f, i3 * 0.6011236f, i4 * 0.5f);
    }

    private void initView() {
        File file;
        File file2 = this.mLockActiveImageFile;
        this.mIsImageFilesExist = file2 != null && file2.exists() && (file = this.mLockUnActiveImageFile) != null && file.exists();
        initImageParameters();
        initPaints();
        initRectF();
        initOnClickAnimation();
    }

    private void loadImage() {
        if (getDrawable() == null || this.mIsLockStateChanged) {
            this.mIsLockStateChanged = false;
            if (this.mIsLockActive) {
                File file = this.mLockActiveImageFile;
                if (file == null || !file.exists()) {
                    return;
                }
                PicassoOk.getPicasso(getContext()).j(this.mLockActiveImageFile).g(this);
                return;
            }
            File file2 = this.mLockUnActiveImageFile;
            if (file2 == null || !file2.exists()) {
                return;
            }
            PicassoOk.getPicasso(getContext()).j(this.mLockUnActiveImageFile).g(this);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mIsImageFilesExist) {
            loadImage();
            return;
        }
        int i = this.mWidth;
        int i2 = this.mHeight;
        canvas.drawRect(i * 0.10674157f, i2 * 0.0f, 0.11797753f * i, i2 * 0.6397059f, this.mWhitePaint);
        int i3 = this.mWidth;
        int i4 = this.mHeight;
        canvas.drawRect(i3 * 0.83707863f, i4 * 0.0f, 0.8483146f * i3, i4 * 0.45588234f, this.mWhitePaint);
        int i5 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.76404494f, i5 * 0.6911765f, i5 * 0.30882353f, this.mWhitePaint);
        int i6 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.14606741f, i6 * 0.8088235f, i6 * 0.19117647f, this.mWhitePaint);
        int i7 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.4241573f, i7 * 0.5477941f, i7 * 0.3632353f, this.mWhitePaint);
        int i8 = this.mWidth;
        int i9 = this.mHeight;
        canvas.drawRect(i8 * 0.16292135f, i9 * 0.8014706f, i8 * 0.78651685f, i9 * 1.0f, this.mWhitePaint);
        this.mWhitePaint.setShadowLayer(2.0f, 0.0f, 3.0f, -8618884);
        int i10 = this.mHeight;
        float f2 = i10 * 0.30882353f;
        float f3 = this.mWidth * 0.46067417f;
        float f4 = i10 * 0.5294118f;
        int iSave = canvas.save();
        canvas.rotate(-45.0f, f3, f4);
        canvas.drawCircle(f3, f4, f2, this.mWhitePaint);
        this.mWhitePaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
        if (this.mIsLockActive) {
            int i11 = this.mHeight;
            canvas.drawCircle(this.mWidth * 0.46348315f, i11 * 0.44485295f, i11 * 0.121323526f, this.mBluePaint);
            int i12 = this.mHeight;
            canvas.drawCircle(this.mWidth * 0.46348315f, i12 * 0.44485295f, i12 * 0.067647055f, this.mWhitePaint);
            int i13 = this.mWidth;
            int i14 = this.mHeight;
            canvas.drawRect(i13 * 0.41011235f, i14 * 0.45588234f, 0.51123595f * i13, i14 * 0.5882353f, this.mWhitePaint);
        } else {
            int i15 = this.mHeight;
            canvas.drawCircle(this.mWidth * 0.46348315f, i15 * 0.44485295f, i15 * 0.121323526f, this.mOrangePaint);
            int i16 = this.mHeight;
            canvas.drawCircle(this.mWidth * 0.46348315f, i16 * 0.44485295f, i16 * 0.067647055f, this.mWhitePaint);
            int i17 = this.mWidth;
            int i18 = this.mHeight;
            canvas.drawRect(i17 * 0.41011235f, i18 * 0.45588234f, 0.51123595f * i17, i18 * 0.5882353f, this.mWhitePaint);
            int iSave2 = canvas.save();
            canvas.rotate(-45.0f, this.mWidth * 0.55898875f, this.mHeight * 0.44485295f);
            canvas.drawRect(this.mLockOpenRectF, this.mWhitePaint);
            canvas.restoreToCount(iSave2);
        }
        float f5 = this.mWidth * 0.02247191f;
        canvas.drawRoundRect(this.mRectF, f5, f5, this.mBluePaint);
        int i19 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.46348315f, i19 * 0.55514705f, i19 * 0.033088237f, this.mWhitePaint);
        int i20 = this.mWidth;
        int i21 = this.mHeight;
        canvas.drawRect(i20 * 0.4550562f, i21 * 0.5735294f, i20 * 0.47191012f, i21 * 0.6397059f, this.mWhitePaint);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mWidth, this.mHeight);
    }

    public void setIsLockActive(boolean z) {
        this.mIsLockStateChanged = true;
        this.mIsLockActive = z;
        invalidate();
    }
}
