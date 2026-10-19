package com.bytedance.sdk.component.d.c.b;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.widget.ImageView;

/* JADX INFO: compiled from: DefaultDecoder.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static final ImageView.ScaleType a = ImageView.ScaleType.CENTER_INSIDE;
    public static final Bitmap.Config b = Bitmap.Config.ARGB_4444;
    private final Bitmap.Config c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f959g;
    private final ImageView.ScaleType h;
    private final int i = 3840;
    private final int j = 104857600;

    public a(int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, int i3, int i4) {
        this.c = config;
        this.f956d = i;
        this.f957e = i2;
        this.h = scaleType;
        this.f958f = i3;
        this.f959g = i4;
        a(i, i2);
    }

    static int a(int i, int i2, int i3, int i4, int i5, int i6) {
        double dMin = Math.min(((double) i) / ((double) i3), ((double) i2) / ((double) i4));
        if (i5 > 0 && i6 > 0) {
            dMin = Math.max(dMin, Math.min(((double) Math.max(i, i2)) / ((double) Math.max(i5, i6)), ((double) Math.min(i, i2)) / ((double) Math.min(i5, i6))));
        }
        float f2 = 1.0f;
        while (true) {
            float f3 = 2.0f * f2;
            if (f3 > dMin) {
                return (int) f2;
            }
            f2 = f3;
        }
    }

    private static int a(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i == 0 && i2 == 0) {
            return i3;
        }
        if (scaleType == ImageView.ScaleType.FIT_XY) {
            return i == 0 ? i3 : i;
        }
        if (i == 0) {
            return (int) (((double) i3) * (((double) i2) / ((double) i4)));
        }
        if (i2 == 0) {
            return i;
        }
        double d2 = ((double) i4) / ((double) i3);
        if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            double d3 = i2;
            return ((double) i) * d2 < d3 ? (int) (d3 / d2) : i;
        }
        double d4 = i2;
        return ((double) i) * d2 > d4 ? (int) (d4 / d2) : i;
    }

    private void a(int i, int i2) {
        if (i > 3840 && i2 > 3840) {
            if (i > i2) {
                this.f956d = 3840;
                this.f957e = (i2 * 3840) / i;
                return;
            } else {
                this.f956d = (i * 3840) / i2;
                this.f957e = 3840;
                return;
            }
        }
        if (i > 3840) {
            this.f956d = 3840;
            this.f957e = (i2 * 3840) / i;
        } else if (i2 > 3840) {
            this.f956d = (i * 3840) / i2;
            this.f957e = 3840;
        }
    }

    public Bitmap a(byte[] bArr) {
        Bitmap bitmapDecodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.f956d == 0 && this.f957e == 0) {
            options.inPreferredConfig = this.c;
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int iA = a(this.f956d, this.f957e, i, i2, this.h);
            int iA2 = a(this.f957e, this.f956d, i2, i, this.h);
            options.inJustDecodeBounds = false;
            options.inSampleSize = a(i, i2, iA, iA2, this.f958f, this.f959g);
            bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (bitmapDecodeByteArray != null && (bitmapDecodeByteArray.getWidth() > iA || bitmapDecodeByteArray.getHeight() > iA2)) {
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeByteArray, iA, iA2, true);
                if (bitmapCreateScaledBitmap != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                bitmapDecodeByteArray = bitmapCreateScaledBitmap;
            }
        }
        if (Build.VERSION.SDK_INT >= 12 && bitmapDecodeByteArray != null && bitmapDecodeByteArray.getByteCount() > 104857600) {
            int width = bitmapDecodeByteArray.getWidth() / 2;
            int height = bitmapDecodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap bitmapCreateScaledBitmap2 = Bitmap.createScaledBitmap(bitmapDecodeByteArray, width, height, true);
                if (bitmapCreateScaledBitmap2 != bitmapDecodeByteArray) {
                    bitmapDecodeByteArray.recycle();
                }
                return bitmapCreateScaledBitmap2;
            }
        }
        return bitmapDecodeByteArray;
    }
}
