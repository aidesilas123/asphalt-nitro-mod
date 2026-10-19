package com.kidoz.sdk.api.ui_views.flexi_view;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Shader;
import android.media.ThumbnailUtils;
import com.squareup.imagelib.y;

/* JADX INFO: loaded from: classes4.dex */
public class CircleTransformation implements y {
    private int mBorder;
    private String mBorderColor;
    private int mContainerSize;
    private String mFillColor;

    public CircleTransformation(int i, String str, String str2, int i2) {
        this.mBorder = 0;
        this.mContainerSize = 0;
        this.mBorder = i;
        this.mBorderColor = str;
        this.mContainerSize = i2;
        this.mFillColor = str2;
    }

    @Override // com.squareup.imagelib.y
    public String key() {
        return "circleFlexiTransform";
    }

    @Override // com.squareup.imagelib.y
    public Bitmap transform(Bitmap bitmap) {
        int i = this.mContainerSize;
        Bitmap bitmapExtractThumbnail = ThumbnailUtils.extractThumbnail(bitmap, i, i);
        bitmap.recycle();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapExtractThumbnail.getWidth(), bitmapExtractThumbnail.getHeight(), bitmapExtractThumbnail.getConfig());
        float width = this.mBorder != 0 ? (bitmapExtractThumbnail.getWidth() / 2.0f) - (this.mBorder / 2) : 0.0f;
        Paint paint = new Paint();
        try {
            paint.setColor(Color.parseColor(this.mFillColor));
        } catch (Exception unused) {
            paint.setColor(-1);
        }
        paint.setStyle(Paint.Style.FILL);
        paint.setAntiAlias(true);
        paint.setStrokeWidth(this.mBorder);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawCircle((bitmapExtractThumbnail.getWidth() / 2) - 0.0f, (bitmapExtractThumbnail.getHeight() / 2) - 0.0f, width, paint);
        Paint paint2 = new Paint();
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        paint2.setShader(new BitmapShader(bitmapExtractThumbnail, tileMode, tileMode));
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
        canvas.drawCircle((bitmapExtractThumbnail.getWidth() - 0.0f) / 2.0f, (bitmapExtractThumbnail.getHeight() - 0.0f) / 2.0f, width, paint2);
        if (this.mBorder != 0) {
            try {
                paint.setColor(Color.parseColor(this.mBorderColor));
            } catch (Exception unused2) {
                paint.setColor(-1);
            }
            paint.setStyle(Paint.Style.STROKE);
            canvas.drawCircle((bitmapExtractThumbnail.getWidth() / 2) - 0.0f, (bitmapExtractThumbnail.getHeight() / 2) - 0.0f, width, paint);
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
