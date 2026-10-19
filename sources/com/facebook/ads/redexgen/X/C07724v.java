package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.4v, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07724v {
    public static String[] A00 = {"UqypfisWbLbbWLDfIVvpiaUsz0iS", "wEiCJDeLGzLJebV", "cX", "dRMEhdR7kDOm9Ob", "SmhGT229bW5LAFpAZzaxeRYqKvMDeGhX", "QcSoUKFtoryhyFMFYIfDI81ChPsDlMu7", "SBvSWfqovIH0ljTVzoffsyrdWCNw", com.json.b4.p};

    public static int A00(C07684r c07684r, C4M c4m, View view, View view2, AbstractC07544c abstractC07544c, boolean z) {
        if (abstractC07544c.A0W() == 0 || c07684r.A03() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(abstractC07544c.A0p(view) - abstractC07544c.A0p(view2)) + 1;
        }
        int iA0C = c4m.A0C(view2);
        int iA0F = c4m.A0F(view);
        String[] strArr = A00;
        if (strArr[4].charAt(28) == strArr[5].charAt(28)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A00;
        strArr2[3] = "xd2oZUwi45Npmqe";
        strArr2[1] = "1k2xoHfklbXXQiR";
        return Math.min(c4m.A0B(), iA0C - iA0F);
    }

    public static int A01(C07684r c07684r, C4M c4m, View view, View view2, AbstractC07544c abstractC07544c, boolean z) {
        if (abstractC07544c.A0W() == 0 || c07684r.A03() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c07684r.A03();
        }
        return (int) (((c4m.A0C(view2) - c4m.A0F(view)) / (Math.abs(abstractC07544c.A0p(view) - abstractC07544c.A0p(view2)) + 1)) * c07684r.A03());
    }

    public static int A02(C07684r c07684r, C4M c4m, View view, View view2, AbstractC07544c abstractC07544c, boolean z, boolean z2) {
        if (abstractC07544c.A0W() != 0) {
            int iA03 = c07684r.A03();
            String[] strArr = A00;
            if (strArr[3].length() != strArr[1].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A00;
            strArr2[6] = "xSzU3PMpL9LC7k2G9V08vNIV3nIP";
            strArr2[0] = "UsrmTbcEPDcBULmsiiLKltF5MwgK";
            if (iA03 != 0 && view != null && view2 != null) {
                int iMax = z2 ? Math.max(0, (c07684r.A03() - Math.max(abstractC07544c.A0p(view), abstractC07544c.A0p(view2))) - 1) : Math.max(0, Math.min(abstractC07544c.A0p(view), abstractC07544c.A0p(view2)));
                if (z) {
                    return Math.round((iMax * (Math.abs(c4m.A0C(view2) - c4m.A0F(view)) / (Math.abs(abstractC07544c.A0p(view) - abstractC07544c.A0p(view2)) + 1))) + (c4m.A0A() - c4m.A0F(view)));
                }
                return iMax;
            }
        }
        return 0;
    }
}
