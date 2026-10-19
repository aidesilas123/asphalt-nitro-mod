package com.kidoz.sdk.api.ui_views.flexi_view;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.media.ThumbnailUtils;
import com.squareup.imagelib.y;

/* JADX INFO: loaded from: classes4.dex */
public class RoundedCornerTransformation implements y {
    private int mBorder;
    private String mBorderColor;
    private int mContainerSize;
    private String mFillColor;
    private int mRoundingCorners;

    public RoundedCornerTransformation(int i, String str, String str2, int i2, int i3) {
        this.mBorder = 0;
        this.mRoundingCorners = 0;
        this.mContainerSize = 0;
        this.mBorder = i;
        this.mBorderColor = str;
        this.mRoundingCorners = i2;
        this.mContainerSize = i3;
        this.mFillColor = str2;
    }

    @Override // com.squareup.imagelib.y
    public String key() {
        return "roundedFlexiTransform";
    }

    @Override // com.squareup.imagelib.y
    public Bitmap transform(Bitmap bitmap) {
        int i = this.mContainerSize;
        Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmap, i, i);
        bitmap.recycle();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapExtractThumbnail.getWidth(), bitmapExtractThumbnail.getHeight(), bitmapExtractThumbnail.getConfig());
        Paint paint = new Paint();
        try {
            paint.setColor(Color.parseColor(this.mFillColor));
        } catch (Exception unused) {
            paint.setColor(-1);
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setFilterBitmap(true);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        int i2 = this.mBorder;
        RectF rectF = new RectF(i2 + 0, i2 + 0, (bitmapExtractThumbnail.getWidth() + 0) - this.mBorder, (bitmapExtractThumbnail.getHeight() + 0) - this.mBorder);
        int i3 = this.mRoundingCorners;
        canvas.drawRoundRect(rectF, i3, i3, paint);
        Paint paint2 = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmapExtractThumbnail, tileMode, tileMode));
        paint2.setFilterBitmap(true);
        paint2.setAntiAlias(true);
        int i4 = this.mRoundingCorners;
        canvas.drawRoundRect(rectF, i4, i4, paint2);
        if (this.mBorder != 0) {
            paint.setStyle(Paint.Style.STROKE);
            paint.setStrokeWidth(this.mBorder);
            try {
                paint.setColor(Color.parseColor(this.mBorderColor));
            } catch (Exception unused2) {
                paint.setColor(-1);
            }
            int i5 = this.mRoundingCorners;
            canvas.drawRoundRect(rectF, i5, i5, paint);
        }
        if (!bitmapExtractThumbnail.isRecycled()) {
            bitmapExtractThumbnail.recycle();
        }
        if (!bitmap.isRecycled()) {
            bitmap.recycle();
        }
        return bitmapCreateBitmap;
    }
}
