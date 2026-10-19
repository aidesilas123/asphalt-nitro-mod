package com.squareup.imagelib;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
import android.os.Build;
import com.squareup.imagelib.Picasso;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: RequestHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class u {

    /* JADX INFO: compiled from: RequestHandler.java */
    public static final class a {
        private final Picasso.LoadedFrom a;
        private final Bitmap b;
        private final InputStream c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f7775d;

        public a(Bitmap bitmap, Picasso.LoadedFrom loadedFrom) {
            this((Bitmap) a0.d(bitmap, "bitmap == null"), null, loadedFrom, 0);
        }

        a(Bitmap bitmap, InputStream inputStream, Picasso.LoadedFrom loadedFrom, int i) {
            if (!((inputStream != null) ^ (bitmap != null))) {
                throw new AssertionError();
            }
            this.b = bitmap;
            this.c = inputStream;
            this.a = (Picasso.LoadedFrom) a0.d(loadedFrom, "loadedFrom == null");
            this.f7775d = i;
        }

        public a(InputStream inputStream, Picasso.LoadedFrom loadedFrom) {
            this(null, (InputStream) a0.d(inputStream, "stream == null"), loadedFrom, 0);
        }

        public Bitmap a() {
            return this.b;
        }

        int b() {
            return this.f7775d;
        }

        public Picasso.LoadedFrom c() {
            return this.a;
        }

        public InputStream d() {
            return this.c;
        }
    }

    static void a(int i, int i2, int i3, int i4, BitmapFactory.Options options, s sVar) {
        int iMax;
        double dFloor;
        if (i4 > i2 || i3 > i) {
            if (i2 == 0) {
                dFloor = Math.floor(i3 / i);
            } else if (i == 0) {
                dFloor = Math.floor(i4 / i2);
            } else {
                int iFloor = (int) Math.floor(i4 / i2);
                int iFloor2 = (int) Math.floor(i3 / i);
                iMax = sVar.l ? Math.max(iFloor, iFloor2) : Math.min(iFloor, iFloor2);
            }
            iMax = (int) dFloor;
        } else {
            iMax = 1;
        }
        options.inSampleSize = iMax;
        options.inJustDecodeBounds = false;
    }

    static void b(int i, int i2, BitmapFactory.Options options, s sVar) {
        a(i, i2, options.outWidth, options.outHeight, options, sVar);
    }

    static BitmapFactory.Options d(s sVar) {
        boolean zC = sVar.c();
        boolean z = sVar.s != null;
        BitmapFactory.Options options = null;
        if (zC || z || sVar.r) {
            options = new BitmapFactory.Options();
            options.inJustDecodeBounds = zC;
            if (Build.VERSION.SDK_INT < 21) {
                boolean z2 = sVar.r;
                options.inInputShareable = z2;
                options.inPurgeable = z2;
            }
            if (z) {
                options.inPreferredConfig = sVar.s;
            }
        }
        return options;
    }

    static boolean g(BitmapFactory.Options options) {
        return options != null && options.inJustDecodeBounds;
    }

    public abstract boolean c(s sVar);

    int e() {
        return 0;
    }

    public abstract a f(s sVar, int i) throws IOException;

    boolean h(boolean z, NetworkInfo networkInfo) {
        return false;
    }

    boolean i() {
        return false;
    }
}
