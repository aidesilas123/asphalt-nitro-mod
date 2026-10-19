package com.kidoz.sdk.api.ui_views.custom_drawables;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public class KidozLogoDrawable extends Drawable {
    private static final float CIRCLE_FIRST_LEVEL_VERTICAL_RATIO = 0.35f;
    private static final float CIRCLE_FOURTH_LEVEL_VETICAL_RATIO = 0.58f;
    private static final float CIRCLE_RADIUS_SIZE_RATIO = 0.16f;
    private static final float CIRCLE_SECOND_LEVEL_HORIZONTAL_RATIO = 0.3f;
    private static final float CIRCLE_SECOND_LEVEL_VERTICAL_RATIO = 0.45f;
    private static final float CIRCLE_THIRD_LEVEL_HORIZONTAL_RATIO = 0.31f;
    private static final float CIRCLE_THIRD_LEVEL_VERTICAL_RATIO = 0.62f;
    private float mDefaultBgRadius;
    private int mHeight;
    private int mWidth;
    private Paint mLogoPaint = new Paint(1);
    private RectF mRectF = new RectF();
    private int mDefaultBgColor = -1;

    public KidozLogoDrawable() {
        initRectF();
    }

    private void initRectF() {
        this.mLogoPaint.setDither(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mLogoPaint.setColor(Color.parseColor("#ffffff"));
        if (Build.VERSION.SDK_INT >= 21) {
            float f2 = this.mWidth;
            float f3 = this.mHeight;
            float f4 = this.mDefaultBgRadius;
            canvas.drawRoundRect(0.0f, 0.0f, f2, f3, f4, f4, this.mLogoPaint);
        } else {
            RectF rectF = this.mRectF;
            float f5 = this.mDefaultBgRadius;
            canvas.drawRoundRect(rectF, f5, f5, this.mLogoPaint);
        }
        float f6 = this.mWidth * CIRCLE_RADIUS_SIZE_RATIO;
        this.mLogoPaint.setColor(Color.parseColor("#f8de46"));
        canvas.drawCircle(this.mWidth / 2, this.mHeight * CIRCLE_FIRST_LEVEL_VERTICAL_RATIO, f6, this.mLogoPaint);
        this.mLogoPaint.setColor(Color.parseColor("#e13333"));
        canvas.drawCircle(this.mWidth * CIRCLE_THIRD_LEVEL_HORIZONTAL_RATIO, this.mHeight * CIRCLE_THIRD_LEVEL_VERTICAL_RATIO, f6, this.mLogoPaint);
        this.mLogoPaint.setColor(Color.parseColor("#4aaed3"));
        int i = this.mWidth;
        canvas.drawCircle(i - (i * CIRCLE_THIRD_LEVEL_HORIZONTAL_RATIO), this.mHeight * CIRCLE_THIRD_LEVEL_VERTICAL_RATIO, f6, this.mLogoPaint);
        this.mLogoPaint.setColor(Color.parseColor("#f5f8a850"));
        canvas.drawCircle(this.mWidth * CIRCLE_SECOND_LEVEL_HORIZONTAL_RATIO, this.mHeight * CIRCLE_SECOND_LEVEL_VERTICAL_RATIO, f6, this.mLogoPaint);
        this.mLogoPaint.setColor(Color.parseColor("#f5b0d63a"));
        int i2 = this.mWidth;
        canvas.drawCircle(i2 - (i2 * CIRCLE_SECOND_LEVEL_HORIZONTAL_RATIO), this.mHeight * CIRCLE_SECOND_LEVEL_VERTICAL_RATIO, f6, this.mLogoPaint);
        this.mLogoPaint.setColor(Color.parseColor("#ffffff"));
        canvas.drawCircle(this.mWidth / 2, this.mHeight * CIRCLE_FOURTH_LEVEL_VETICAL_RATIO, f6, this.mLogoPaint);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.mWidth = rect.width();
        this.mHeight = rect.height();
        this.mRectF = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight);
        this.mDefaultBgRadius = this.mWidth * 0.1f;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mLogoPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mLogoPaint.setColorFilter(colorFilter);
    }
}
