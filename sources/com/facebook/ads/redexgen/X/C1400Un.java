package com.facebook.ads.redexgen.X;

import android.graphics.Rect;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Un, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1400Un implements IU {
    public static String[] A02 = {"AMQNzlG2eGPOJo74lPpddO6twtMEce", "8uZuLGh3CZSzV4eSaK74M9a8aAW81o1g", "CYs8BZmCr6kO5jRRUq4laItl384RlovT", "PO4hUmmCpilEicL1R3sLdD9hI0Kiey5Z", "WmgRsP13YsLJamj9MMjVCco3tjnpIVCq", "0ErvOAeoLZJf3MJzf6jF5Cw5BrHPqp", "S0kgbIpbc64QMPj8XCJtTK8zDrzNpUnW", "MO6xPizLQkqntlkNHRrNVg7dZ2stU5UP"};
    public final Rect A00 = new Rect();
    public final Rect A01 = new Rect();

    public static boolean A00(C1635bg<IV, C1081Ia> c1635bg) {
        if (c1635bg.A02.A05()) {
            return c1635bg.A03.A07();
        }
        if (!c1635bg.A02.A06()) {
            return true;
        }
        C1081Ia c1081Ia = c1635bg.A03;
        String[] strArr = A02;
        if (strArr[3].charAt(7) != strArr[2].charAt(7)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[3] = "8O0EOVeCMdEJdeSbYPFIeNjJXhTUSITs";
        strArr2[2] = "Km62DwbCV8Ma1ecjtuIU72b1y8KakI9d";
        return c1081Ia.A06();
    }

    private boolean A01(C1635bg<IV, C1081Ia> c1635bg, InterfaceC1624bV interfaceC1624bV) {
        float fA8D = -1.0f;
        try {
            fA8D = interfaceC1624bV.A8D(c1635bg);
        } catch (IllegalStateException unused) {
        }
        if (fA8D > 0.0f && A00(c1635bg)) {
            return true;
        }
        if (c1635bg.A02.A00().getGlobalVisibleRect(this.A01) && this.A01.bottom - this.A01.top > 0 && A00(c1635bg)) {
            return true;
        }
        interfaceC1624bV.A8C(this.A00);
        interfaceC1624bV.A71(c1635bg, this.A01);
        return (this.A00.bottom - this.A00.top > 0 && this.A01.bottom - this.A00.top > 0) && A00(c1635bg);
    }

    public final void A02(C1635bg<IV, C1081Ia> c1635bg, InterfaceC1624bV interfaceC1624bV) {
        if (c1635bg.A03.A04() && A01(c1635bg, interfaceC1624bV)) {
            c1635bg.A03.A01();
            c1635bg.A02.A02().A9e(c1635bg.A02.A03(), c1635bg.A02.A04());
        }
        if (c1635bg.A03.A05() && IP.A1L(c1635bg.A02.A01())) {
            c1635bg.A03.A02();
            c1635bg.A02.A02().A9U(c1635bg.A02.A03(), c1635bg.A02.A04());
        }
    }
}
