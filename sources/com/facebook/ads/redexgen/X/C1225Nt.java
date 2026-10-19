package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1225Nt {
    public static float A00(C1D c1d) {
        int iA01 = c1d.A0D().A01();
        int iA00 = c1d.A0D().A00();
        if (iA00 > 0) {
            return iA01 / iA00;
        }
        return -1.0f;
    }

    public static int A01(double d2) {
        return (int) (((double) (C1147Kt.A00().widthPixels - (AbstractC1227Nv.A07 * 2))) / d2);
    }

    public static int A02(int i) {
        return (C1147Kt.A00().heightPixels - i) - ((LV.A01(16) + (C1206Na.A0A * 2)) + (AbstractC1227Nv.A07 * 2));
    }

    public static ViewOnClickListenerC1224Ns A03(T3 t3, String str) {
        return new ViewOnClickListenerC1224Ns(t3, str);
    }

    public static boolean A04(double d2) {
        return d2 < 0.9d;
    }

    public static boolean A05(double d2, int i) {
        return A02(i) < A01(d2);
    }

    public static boolean A06(int i, int i2, double d2) {
        return i == 2 || A05(d2, i2);
    }
}
