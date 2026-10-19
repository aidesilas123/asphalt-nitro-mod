package com.json.adqualitysdk.sdk.i;

/* JADX INFO: loaded from: classes4.dex */
public final class b {

    /* JADX INFO: renamed from: ﻛ, reason: contains not printable characters */
    public static int f31;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static int f32;

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static final Object f33 = new Object();

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public static int f34;

    /* JADX INFO: renamed from: ｋ, reason: contains not printable characters */
    public static void m390(int[] iArr) {
        for (int i = 0; i < iArr.length / 2; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[(iArr.length - i) - 1];
            iArr[(iArr.length - i) - 1] = i2;
        }
    }

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public static int m391(int i) {
        int[][] iArr = d.f39.f41;
        return ((iArr[0][i >>> 24] + iArr[1][(i >>> 16) & 255]) ^ iArr[2][(i >>> 8) & 255]) + iArr[3][i & 255];
    }
}
