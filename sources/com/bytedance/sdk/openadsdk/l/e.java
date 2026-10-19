package com.bytedance.sdk.openadsdk.l;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Base64;

/* JADX INFO: compiled from: PlayableHub.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {
    protected static String a = "images";
    protected static String b = null;
    protected static int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static int f1814d = 30;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static long f1815e = 15360;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f1816f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static int f1817g = 1;
    public static int h = 2;
    public static int i = 4;
    public static int j = 8;
    public static int k = 16;
    public static int l = 32;

    protected static Bitmap a(String str) {
        byte[] bArrDecode = Base64.decode(str, 2);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }

    public static boolean a(Context context) {
        boolean z;
        boolean z2;
        if (Build.VERSION.SDK_INT < 33) {
            z = context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0;
            if (context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
                z2 = false;
            }
            return z2 && z;
        }
        z = context.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0;
        z2 = true;
        if (z2) {
            return false;
        }
    }

    public static boolean a(Context context, int i2) {
        boolean zA;
        boolean zA2;
        if (f1816f == 0) {
            if (Build.VERSION.SDK_INT >= 33) {
                zA = a(context, "android.permission.READ_MEDIA_IMAGES");
                zA2 = true;
            } else {
                zA = a(context, "android.permission.READ_EXTERNAL_STORAGE");
                zA2 = a(context, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            boolean zA3 = a(context, "android.permission.CAMERA");
            boolean zA4 = a(context, "android.permission.RECORD_AUDIO");
            PackageManager packageManager = context.getPackageManager();
            if (zA && zA2) {
                f1816f |= f1817g;
            }
            if (zA3 && packageManager.hasSystemFeature("android.hardware.camera")) {
                f1816f |= h;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.gyroscope")) {
                f1816f |= i;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.accelerometer")) {
                f1816f |= j;
            }
            if (packageManager.hasSystemFeature("android.hardware.sensor.compass")) {
                f1816f |= k;
            }
            if (zA4 && packageManager.hasSystemFeature("android.hardware.microphone")) {
                f1816f |= l;
            }
        }
        return (f1816f & i2) != 0;
    }

    protected static boolean a(Context context, String str) {
        return false;
    }

    public static boolean b(Context context, String str) {
        return context.checkSelfPermission(str) == 0;
    }
}
