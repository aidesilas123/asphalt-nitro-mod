package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class KD {
    public static String[] A01 = {"vWOWhJ9TqiA1ty478f", "MWb8A3Nd6tPLcAimCp0hVAmYX6QHiaZm", "Xd3YBUkiMhOleC4V056rVyOXhinwtSii", "tT8mJINbcEXXPPmKiWyTepfA0JHaFg93", "WoudJsrKOqRuVhNYSdRTZjqc00A0B3WY", "YTheXaZSxrm1KPF5Yd", "huHeChgRkwF7QVPgKoMeW6tLhEc13T9K", "ASVM8zHOtJrSOKsDwpZwweqDqvgS8KFW"};
    public static final ThreadLocal<KD> A02 = new ThreadLocal<>();
    public final C1126Jw A00 = new C1126Jw();

    public static C1126Jw A00() {
        return A02().A00;
    }

    public static C1126Jw A01(KC kc) {
        C1126Jw c1126Jw = new C1126Jw(A00());
        c1126Jw.add(kc);
        return c1126Jw;
    }

    public static KD A02() {
        ThreadLocal<KD> threadLocal = A02;
        KD kd = threadLocal.get();
        String[] strArr = A01;
        if (strArr[6].charAt(1) == strArr[2].charAt(1)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[7] = "JnfSkSuIf6osqUQGv4Nkh0Vi2QZsQFPV";
        strArr2[4] = "e9u3CRl6fKpCeCDR9nRPR0cml03xK1Bs";
        if (kd != null) {
            return kd;
        }
        KD kd2 = new KD();
        threadLocal.set(kd2);
        return kd2;
    }

    public static void A03(K8 k8) {
        C1126Jw c1126JwA05 = k8.A05();
        if (c1126JwA05 != null) {
            A02().A00.addAll(c1126JwA05);
        }
    }

    public static void A04(K8 k8) {
        C1126Jw c1126JwA05 = k8.A05();
        if (c1126JwA05 != null) {
            A02().A00.removeAll(c1126JwA05);
        }
    }
}
