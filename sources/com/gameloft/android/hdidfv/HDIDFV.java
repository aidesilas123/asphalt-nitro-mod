package com.gameloft.android.hdidfv;

/* JADX INFO: loaded from: classes2.dex */
public class HDIDFV {
    public static String getHDIDFV() {
        return getNHDIDFV();
    }

    public static String getHDIDFVVersion() {
        return getNHDIDFVVersion();
    }

    public static native String getNHDIDFV();

    public static native String getNHDIDFVVersion();
}
