package com.kidoz.sdk.api.ui_views.custom_drawables;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes4.dex */
public class XViewDrawable extends Drawable {
    private int mDefaultColor;
    private int mHeight;
    private int mWidth;
    private Paint mXPaint = new Paint(1);

    public XViewDrawable(Context context, int i) {
        this.mDefaultColor = -1;
        this.mDefaultColor = i;
        init(context);
    }

    private static int getStrokeSizeByScreenLayout(Context context) {
        int i = context.getResources().getConfiguration().screenLayout & 15;
        if (i == 1) {
            return 5;
        }
        if (i != 2) {
            return (i == 3 || i == 4) ? 5 : 9;
        }
        return 8;
    }

    private void init(Context context) {
        this.mXPaint.setDither(true);
        Paint paint = new Paint(1);
        this.mXPaint = paint;
        paint.setColor(this.mDefaultColor);
        this.mXPaint.setStrokeWidth(getStrokeSizeByScreenLayout(context));
        this.mXPaint.setStrokeCap(Paint.Cap.ROUND);
        this.mXPaint.setDither(true);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawLine(0.0f, this.mHeight, this.mWidth, 0.0f, this.mXPaint);
        canvas.drawLine(0.0f, 0.0f, this.mWidth, this.mHeight, this.mXPaint);
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
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mXPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mXPaint.setColorFilter(colorFilter);
    }
}
