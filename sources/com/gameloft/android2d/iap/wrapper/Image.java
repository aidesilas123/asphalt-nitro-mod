package com.gameloft.android2d.iap.wrapper;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class Image {
    public static boolean a;
    public static boolean b;
    public Bitmap c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f2916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f2917e;

    public Image(Bitmap bitmap) {
        this.c = bitmap;
        this.f2916d = bitmap.getWidth();
        this.f2917e = bitmap.getHeight();
    }

    public static Image createImage(int i, int i2) {
        return new Image(Bitmap.createBitmap(i, i2, b ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888));
    }

    public static Image createImage(Image image) {
        return new Image(image.c);
    }

    public static Image createImage(Image image, int i, int i2, int i3, int i4, int i5) {
        return new Image(Bitmap.createBitmap(image.c, i, i2, i3, i4, (Matrix) null, false));
    }

    public static Image createImage(InputStream inputStream) {
        return new Image(BitmapFactory.decodeStream(inputStream));
    }

    public static Image createImage(String str) throws IOException {
        return new Image(BitmapFactory.decodeStream(Utils.getResourceAsStream(str)));
    }

    public static Image createImage(byte[] bArr, int i, int i2) {
        return new Image(BitmapFactory.decodeByteArray(bArr, i, i2));
    }

    public static Image createRGBImage(int[] iArr, int i, int i2, boolean z) {
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        if (b) {
            config = Bitmap.Config.RGB_565;
            if (z) {
                config = Bitmap.Config.ARGB_4444;
            }
        }
        return new Image(Bitmap.createBitmap(iArr, i, i2, config));
    }

    public static Image createScaledImage(InputStream inputStream, int i, int i2) {
        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeStream, i, i2, true);
        if (bitmapDecodeStream == bitmapCreateScaledBitmap) {
            return new Image(bitmapDecodeStream);
        }
        if (bitmapDecodeStream != null && !bitmapDecodeStream.isRecycled()) {
            try {
                bitmapDecodeStream.recycle();
            } catch (Exception unused) {
            }
        }
        return new Image(bitmapCreateScaledBitmap);
    }

    public static void setOptimization(boolean z, boolean z2) {
        b = z;
        a = z2;
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        boolean zEquals = super.equals(obj);
        if (a && obj == "freeBitmap" && (bitmap = this.c) != null && !bitmap.isRecycled()) {
            try {
                this.c.recycle();
                this.c = null;
            } catch (Exception unused) {
                boolean z = Utils.a;
                this.c = null;
            }
        }
        return zEquals;
    }
}
