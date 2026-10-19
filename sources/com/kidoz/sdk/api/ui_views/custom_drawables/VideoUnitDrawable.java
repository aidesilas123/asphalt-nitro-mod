package com.kidoz.sdk.api.ui_views.custom_drawables;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public class VideoUnitDrawable extends Drawable {
    private float mDefaultBgRadius;
    private int mHeight;
    private int mWidth;
    private Paint mPaint = new Paint(1);
    private RectF mRectF = new RectF();
    private Path mPath = new Path();

    public VideoUnitDrawable() {
        this.mPaint.setDither(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.mPaint.setColor(Color.parseColor("#7297A3"));
        this.mPaint.setShader(null);
        if (Build.VERSION.SDK_INT >= 21) {
            float f2 = this.mWidth;
            float f3 = this.mHeight;
            float f4 = this.mDefaultBgRadius;
            canvas.drawRoundRect(0.0f, 0.0f, f2, f3, f4, f4, this.mPaint);
            this.mPaint.setColor(Color.parseColor("#90C3D4"));
            float f5 = this.mWidth;
            int i = this.mHeight;
            float f6 = this.mDefaultBgRadius;
            canvas.drawRoundRect(0.0f, 0.0f, f5, i - (i * 0.05f), f6, f6, this.mPaint);
        } else {
            RectF rectF = this.mRectF;
            float f7 = this.mDefaultBgRadius;
            canvas.drawRoundRect(rectF, f7, f7, this.mPaint);
            this.mPaint.setColor(Color.parseColor("#90C3D4"));
            RectF rectF2 = this.mRectF;
            float f8 = this.mWidth;
            int i2 = this.mHeight;
            rectF2.set(0.0f, 0.0f, f8, i2 - (i2 * 0.05f));
            RectF rectF3 = this.mRectF;
            float f9 = this.mDefaultBgRadius;
            canvas.drawRoundRect(rectF3, f9, f9, this.mPaint);
            RectF rectF4 = new RectF(0.0f, 0.0f, this.mWidth, this.mHeight);
            this.mRectF = rectF4;
            rectF4.set(0.0f, 0.0f, this.mWidth, this.mHeight);
        }
        this.mPaint.setShader(new LinearGradient(0.0f, 0.0f, 0.0f, this.mHeight, Color.parseColor("#614C45"), Color.parseColor("#FAC7B6"), Shader.TileMode.CLAMP));
        canvas.drawPath(this.mPath, this.mPaint);
        this.mPaint.setShader(null);
        this.mPaint.setColor(Color.parseColor("#362A25"));
        this.mPaint.setTextSize(this.mWidth * 0.12f);
        this.mPaint.setTextAlign(Paint.Align.CENTER);
        this.mPaint.setTypeface(Typeface.create(Typeface.DEFAULT, 1));
        int i3 = this.mHeight;
        canvas.drawText("KIDOZ TV", this.mWidth / 2.0f, i3 - (i3 * 0.1f), this.mPaint);
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
        Path path = new Path();
        this.mPath = path;
        path.setFillType(Path.FillType.EVEN_ODD);
        int i = this.mHeight;
        this.mPath.moveTo(this.mWidth / 4.0f, (i - (i * 0.05f)) / 4.0f);
        int i2 = this.mHeight;
        this.mPath.lineTo(this.mWidth / 4.0f, i2 - (i2 / 4.0f));
        Path path2 = this.mPath;
        int i3 = this.mWidth;
        path2.lineTo(i3 - (i3 / 4.0f), this.mHeight / 2.0f);
        this.mPath.close();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }
}
