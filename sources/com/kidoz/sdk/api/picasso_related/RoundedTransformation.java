package com.kidoz.sdk.api.picasso_related;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import com.squareup.imagelib.y;

/* JADX INFO: loaded from: classes4.dex */
public class RoundedTransformation implements y {
    private boolean mRoundBottomLeft;
    private boolean mRoundBottomRight;
    private boolean mRoundTopLeft;
    private boolean mRoundTopRight;
    private String mTransformationTAG = "NA";
    private final int margin;
    private final int radius;

    public RoundedTransformation(int i, int i2) {
        this.radius = i;
        this.margin = i2;
    }

    public RoundedTransformation(int i, int i2, boolean z) {
        this.radius = i;
        this.margin = i2;
        this.mRoundTopLeft = z;
    }

    private Bitmap getRoundedCornerBitmap(Bitmap bitmap, int i, boolean z, boolean z2, boolean z3, boolean z4) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        RectF rectF = new RectF(new Rect(0, 0, width, height));
        float f2 = i;
        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);
        paint.setColor(-12434878);
        canvas.drawRoundRect(rectF, f2, f2, paint);
        if (z) {
            canvas.drawRect(0.0f, 0.0f, width / 2, height / 2, paint);
        }
        if (z2) {
            canvas.drawRect(width / 2, 0.0f, width, height / 2, paint);
        }
        if (z3) {
            canvas.drawRect(0.0f, height / 2, width / 2, height, paint);
        }
        if (z4) {
            canvas.drawRect(width / 2, height / 2, width, height, paint);
        }
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    private Bitmap roundAllCorners(Bitmap bitmap) {
        Paint paint = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint.setShader(new BitmapShader(bitmap, tileMode, tileMode));
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i = this.margin;
        RectF rectF = new RectF(i, i, bitmap.getWidth() - this.margin, bitmap.getHeight() - this.margin);
        int i2 = this.radius;
        canvas.drawRoundRect(rectF, i2, i2, paint);
        if (bitmap != bitmapCreateBitmap) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }

    @Override // com.squareup.imagelib.y
    public String key() {
        return this.mTransformationTAG;
    }

    @Override // com.squareup.imagelib.y
    public Bitmap transform(Bitmap bitmap) {
        if (this.mRoundTopLeft) {
            Bitmap roundedCornerBitmap = getRoundedCornerBitmap(bitmap, this.radius, false, true, true, true);
            this.mTransformationTAG = "Transformation2";
            return roundedCornerBitmap;
        }
        Bitmap bitmapRoundAllCorners = roundAllCorners(bitmap);
        this.mTransformationTAG = "Transformation";
        return bitmapRoundAllCorners;
    }
}
