package com.gameloft.android2d.iap.wrapper;

/* JADX INFO: loaded from: classes2.dex */
public class NativeUtils {
    static {
        System.loadLibrary(a.b + "nativeU");
    }

    public static native boolean CheckRoot();

    public static native float getClock();

    public static native long getClockMillis();

    public static native long getClockNano();
}
