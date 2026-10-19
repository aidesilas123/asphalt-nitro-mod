package com.applovin.impl.sdk.utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: loaded from: classes.dex */
public class l {
    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(Uri uri, final ImageView imageView) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        int i = 1;
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(uri.getPath(), options);
        int height = imageView.getHeight();
        int width = imageView.getWidth();
        if (height <= 0 || width <= 0) {
            Point pointY = h.Y(imageView.getContext());
            height = Math.min(pointY.x, pointY.y);
            width = height;
        }
        int i2 = options.outHeight;
        int i3 = options.outWidth;
        if (i2 > height || i3 > width) {
            while (true) {
                int i4 = i * 2;
                if (i2 / i4 < height && i3 / i4 < width) {
                    break;
                } else {
                    i = i4;
                }
            }
        }
        options.inSampleSize = i;
        options.inJustDecodeBounds = false;
        com.applovin.impl.sdk.n.aAC.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            com.applovin.impl.sdk.n.aAC.BN().f("ImageViewUtils", "Loading image: " + uri.getLastPathSegment() + "...");
        }
        final Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(uri.getPath(), options);
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.c0
            @Override // java.lang.Runnable
            public final void run() {
                imageView.setImageBitmap(bitmapDecodeFile);
            }
        });
    }

    public static void a(final ImageView imageView, final Uri uri) {
        if (uri == null || imageView == null) {
            return;
        }
        if (imageView.getHeight() <= 0 || imageView.getWidth() <= 0) {
            imageView.post(new Runnable() { // from class: com.applovin.impl.sdk.utils.f0
                @Override // java.lang.Runnable
                public final void run() {
                    l.b(imageView, uri);
                }
            });
        } else {
            b(imageView, uri);
        }
    }

    public static void a(final ImageView imageView, final String str, final com.applovin.impl.sdk.n nVar) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().f("ImageViewUtils", "Fetching image: " + str + "...");
        }
        nVar.BO().KJ().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.d0
            @Override // java.lang.Runnable
            public final void run() {
                l.a(str, nVar, imageView);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(com.applovin.impl.sdk.n nVar, Bitmap bitmap, ImageView imageView) {
        nVar.BN();
        if (com.applovin.impl.sdk.x.Fn()) {
            nVar.BN().f("ImageViewUtils", "Image fetched");
        }
        imageView.setImageDrawable(new BitmapDrawable(com.applovin.impl.sdk.n.getApplicationContext().getResources(), bitmap));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(String str, final com.applovin.impl.sdk.n nVar, final ImageView imageView) {
        InputStream inputStreamOpenStream = null;
        try {
            inputStreamOpenStream = new URL(str).openStream();
            final Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenStream);
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.utils.g0
                @Override // java.lang.Runnable
                public final void run() {
                    l.a(nVar, bitmapDecodeStream, imageView);
                }
            });
        } finally {
            try {
            } finally {
            }
        }
    }

    public static void b(final ImageView imageView, final Uri uri) {
        if (uri == null || imageView == null) {
            return;
        }
        com.applovin.impl.sdk.n nVar = com.applovin.impl.sdk.n.aAC;
        if (nVar == null) {
            com.applovin.impl.sdk.x.H("ImageViewUtils", "SDK has not been initialized");
        } else {
            nVar.BO().KJ().execute(new Runnable() { // from class: com.applovin.impl.sdk.utils.e0
                @Override // java.lang.Runnable
                public final void run() {
                    l.a(uri, imageView);
                }
            });
        }
    }
}
