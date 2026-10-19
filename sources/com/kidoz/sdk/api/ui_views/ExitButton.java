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
public class ExitButton extends ImageView {
    private int mAnimationType;
    private File mBackBtnImage;
    private Paint mBluePaint;
    private File mCloseBtnImage;
    private ExitButtonListener mExitButtonListener;
    private int mHeight;
    private File mImageFile;
    private boolean mIsUseBackButton;
    private RectF mRectF;
    private Paint mWhitePaint;
    private int mWidth;

    public interface ExitButtonListener {
        void onClickEnd();

        void onClickStarted();
    }

    public ExitButton(Context context, File file, File file2, ExitButtonListener exitButtonListener, boolean z) {
        super(context);
        this.mExitButtonListener = exitButtonListener;
        this.mIsUseBackButton = z;
        this.mBackBtnImage = file;
        this.mCloseBtnImage = file2;
        setScaleType(ImageView.ScaleType.FIT_XY);
        initView();
    }

    private void initImageFile() {
        if (this.mIsUseBackButton) {
            this.mImageFile = this.mBackBtnImage;
        } else {
            this.mImageFile = this.mCloseBtnImage;
        }
    }

    private void initImageParameters() {
        float scaleFactor = ScreenUtils.getScaleFactor(getContext());
        this.mWidth = 178;
        this.mHeight = 128;
        this.mAnimationType = 1;
        File file = this.mImageFile;
        if (file != null && file.exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.mImageFile.getAbsolutePath(), options);
            this.mWidth = options.outWidth;
            this.mHeight = options.outHeight;
        }
        this.mWidth = (int) (this.mWidth * scaleFactor);
        this.mHeight = (int) (this.mHeight * scaleFactor);
    }

    private void initOnClickAnimation() {
        setOnClickListener(new View.OnClickListener() { // from class: com.kidoz.sdk.api.ui_views.ExitButton.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (ExitButton.this.mExitButtonListener != null) {
                    ExitButton.this.mExitButtonListener.onClickStarted();
                }
                if (ExitButton.this.mAnimationType != 1) {
                    return;
                }
                GenAnimator.playStandUpAnimation(view, new Animator.AnimatorListener() { // from class: com.kidoz.sdk.api.ui_views.ExitButton.1.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (ExitButton.this.mExitButtonListener != null) {
                            ExitButton.this.mExitButtonListener.onClickEnd();
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
        setLayerType(1, this.mWhitePaint);
    }

    private void initRectF() {
        int i = this.mWidth;
        float f2 = i * 0.36516854f;
        int i2 = this.mHeight;
        float f3 = i2 * 0.4375f;
        float f4 = i * 0.6966292f;
        float f5 = i2 * 0.5625f;
        if (this.mIsUseBackButton) {
            f2 = 0.41011235f * i;
            f3 = 0.4609375f * i2;
            f4 = 0.64044946f * i;
            f5 = i2 * 0.5390625f;
        }
        this.mRectF = new RectF(f2, f3, f4, f5);
    }

    private void initView() {
        initImageFile();
        initImageParameters();
        initPaints();
        initRectF();
        initOnClickAnimation();
    }

    private void loadImage() {
        if (this.mImageFile.exists() && getDrawable() == null && this.mImageFile != null) {
            PicassoOk.getPicasso(getContext()).j(this.mImageFile).g(this);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        File file = this.mImageFile;
        if (file != null && file.exists()) {
            loadImage();
            return;
        }
        int i = this.mWidth;
        int i2 = this.mHeight;
        canvas.drawRect(i * 0.18539326f, i2 * 0.0f, 0.19662921f * i, i2 * 0.3828125f, this.mWhitePaint);
        int i3 = this.mWidth;
        int i4 = this.mHeight;
        canvas.drawRect(i3 * 0.9101124f, i4 * 0.0f, 0.92134833f * i3, i4 * 0.640625f, this.mWhitePaint);
        int i5 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.23595506f, i5 * 0.671875f, i5 * 0.328125f, this.mWhitePaint);
        int i6 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.85393256f, i6 * 0.796875f, i6 * 0.203125f, this.mWhitePaint);
        int i7 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.56971914f, i7 * 0.520625f, i7 * 0.3859375f, this.mWhitePaint);
        int i8 = this.mWidth;
        int i9 = this.mHeight;
        canvas.drawRect(i8 * 0.23595506f, 0.7890625f * i9, 0.85955054f * i8, i9 * 1.0f, this.mWhitePaint);
        this.mWhitePaint.setShadowLayer(2.0f, 0.0f, 3.0f, -8618884);
        int i10 = this.mHeight;
        float f2 = i10 * 0.328125f;
        float f3 = this.mWidth * 0.5224719f;
        float f4 = i10 * 0.5f;
        int iSave = canvas.save();
        canvas.rotate(45.0f, f3, f4);
        canvas.drawCircle(f3, f4, f2, this.mWhitePaint);
        this.mWhitePaint.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(iSave);
        if (!this.mIsUseBackButton) {
            int i11 = this.mWidth;
            float f5 = i11 * 0.039325844f;
            float f6 = i11 * 0.5310112f;
            float f7 = this.mHeight * 0.5001562f;
            int iSave2 = canvas.save();
            canvas.rotate(45.0f, f6, f7);
            canvas.drawRoundRect(this.mRectF, f5, f5, this.mBluePaint);
            canvas.restoreToCount(iSave2);
            int iSave3 = canvas.save();
            canvas.rotate(-45.0f, f6, f7);
            canvas.drawRoundRect(this.mRectF, f5, f5, this.mBluePaint);
            canvas.restoreToCount(iSave3);
            return;
        }
        int i12 = this.mWidth;
        float f8 = i12 * 0.028089888f;
        float f9 = i12 * 0.41011235f;
        float f10 = this.mHeight * 0.5f;
        int iSave4 = canvas.save();
        canvas.rotate(30.0f, f9, f10);
        canvas.drawRoundRect(this.mRectF, f8, f8, this.mBluePaint);
        canvas.restoreToCount(iSave4);
        int iSave5 = canvas.save();
        canvas.rotate(-30.0f, f9, f10);
        canvas.drawRoundRect(this.mRectF, f8, f8, this.mBluePaint);
        canvas.restoreToCount(iSave5);
        int i13 = this.mHeight;
        canvas.drawCircle(this.mWidth * 0.42696628f, i13 * 0.5f, i13 * 0.0390625f, this.mBluePaint);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mWidth, this.mHeight);
    }
}
