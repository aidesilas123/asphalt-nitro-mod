package com.facebook.ads.redexgen.X;

import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nw, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1228Nw {
    public static byte[] A00;
    public static String[] A01 = {"zHQaRI8Z04iZfuq60cOZ3MtOUQtnyLXk", "Py81lTfXTPvOohagzwztlFMwKgIeaa04", "ZBx", "ff4Sljy7OS0rEQC0yVPpTgSrr8dBXGgO", "WJ7E7dTZMlxiqC9ofw7stZL7dYzOgEyn", "lEp0yqe8iFuZgqtiF5MEL7dQIxoaDf7o", "1LQBU", "K3MGC9Pem9CSlPJADsZARPOkTW1wXgVW"};

    static {
        A02();
    }

    public static AbstractC1227Nv A00(final C1231Nz c1231Nz, Bundle bundle, boolean z) {
        AbstractC1227Nv c1356Su;
        C1D c1dA0v = c1231Nz.A04().A0v();
        double dA00 = C1225Nt.A00(c1dA0v);
        boolean zA0N = c1231Nz.A04().A0v().A0N();
        final boolean zA06 = C1225Nt.A06(c1231Nz.A00(), c1231Nz.A01(), dA00);
        AbstractC06570g abstractC06570gA00 = C06580h.A00(c1231Nz.A05(), c1231Nz.A06(), A01(0, 0, 67), C1132Kc.A00(c1231Nz.A04().A0v().A0F().A05()), new HashMap(), c1231Nz.A04().A0x());
        boolean z2 = !TextUtils.isEmpty(c1dA0v.A0D().A08());
        if (IP.A1X(c1231Nz.A05())) {
            c1231Nz.A05().A0A().AGA(c1231Nz.A02(), c1231Nz.A04().A11(), z2);
        }
        boolean zA03 = A03(c1231Nz, z2);
        if ((zA0N && (abstractC06570gA00 instanceof FG)) || zA03) {
            c1356Su = new C1347Sl(c1231Nz, zA03);
        } else if (z2) {
            c1356Su = new C9D(c1231Nz);
        } else if (!z2 && IP.A26(c1231Nz.A05())) {
            c1356Su = new AbstractC1360Sy(c1231Nz, zA06) { // from class: com.facebook.ads.redexgen.X.9F
                public static final int A02 = Resources.getSystem().getDisplayMetrics().widthPixels;
                public final View A00;
                public final boolean A01;

                {
                    super(c1231Nz, true);
                    this.A01 = zA06;
                    View viewA02 = c1231Nz.A02();
                    this.A00 = viewA02;
                    A13();
                    if (zA06) {
                        addView(c1231Nz.A02(), new RelativeLayout.LayoutParams(-1, -1));
                    } else {
                        FrameLayout frameLayout = new FrameLayout(c1231Nz.A05());
                        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                        layoutParams.addRule(2, getAdDetailsView().getId());
                        frameLayout.setLayoutParams(layoutParams);
                        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
                        layoutParams2.gravity = 17;
                        layoutParams2.setMargins(AbstractC1227Nv.A07, 0, AbstractC1227Nv.A07, 0);
                        frameLayout.addView(viewA02, layoutParams2);
                        addView(frameLayout);
                    }
                    if (viewA02 != null && IP.A17(getAdContextWrapper())) {
                        NO.A00(viewA02, IP.A18(getAdContextWrapper()), new O0(this));
                    }
                    getAdDetailsView().bringToFront();
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
                public final boolean A02() {
                    return this.A01 && super.A02();
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
                public final boolean A0D() {
                    return this.A01 && super.A02();
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC1360Sy, com.facebook.ads.redexgen.X.AbstractC1227Nv
                public final void A0z(C1D c1d, String str, double d2, Bundle bundle2) {
                    super.A0z(c1d, str, d2, bundle2);
                    if (this.A01 || d2 <= 0.0d) {
                        return;
                    }
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, (int) (((double) (A02 - (AbstractC1227Nv.A07 * 2))) / d2));
                    layoutParams.gravity = 17;
                    layoutParams.setMargins(AbstractC1227Nv.A07, 0, AbstractC1227Nv.A07, 0);
                    this.A00.setLayoutParams(layoutParams);
                }

                @Override // com.facebook.ads.redexgen.X.AbstractC1227Nv
                public final boolean A10() {
                    return this.A01;
                }
            };
        } else if (zA06) {
            int iA00 = c1231Nz.A00();
            if (A01[2].length() != 3) {
                throw new RuntimeException();
            }
            A01[6] = "JelR9";
            c1356Su = new C1359Sx(c1231Nz, iA00 == 2);
        } else {
            c1356Su = new C1356Su(c1231Nz, C1225Nt.A04(dA00));
        }
        if (z) {
            c1356Su.A0z(c1dA0v, c1231Nz.A04().A11(), dA00, bundle);
        }
        return c1356Su;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 71);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{8, 97, 91, 8, 97, 70, 91, 92, 73, 70, 92, 8, 79, 73, 69, 77, 91, 8, 73, 68, 68, 71, 95, 77, 76, Ascii.DC2, 8, 64, 41, 19, 64, 41, Ascii.SO, 19, Ascii.DC4, 1, Ascii.SO, Ascii.DC4, 64, 7, 1, Ascii.CR, 5, 19, 90, 64, 77, 10, 2, 2, 10, 1, 8, 77, Ascii.VT, Ascii.FF, 1, 1, Ascii.SI, Ascii.FF, Ascii.SO, 6, 77, Ascii.CAN, Ascii.US, 1, 77, Ascii.FF, Ascii.ESC, Ascii.FF, 4, 1, Ascii.FF, Ascii.SI, 1, 8, 87, 77, 119, 62, 36, 4, 35, 56, 37, 50, 109, 119, 124, 108, 58, 37, 40, 41, 35, 108, 57, 62, 32, 108, 37, 63, 108, 34, 57, 32, 32, 118, 108, 94, 82, 80, 19, 91, 92, 94, 88, 95, 82, 82, 86, 19, 86, 92, 73, 92, 83, 92, 74, 77, 86, 75, 92, 120, Ascii.DEL, 100, 121, 110, 84, 126, 121, 103, 84, 124, 110, 105, 84, 109, 106, 103, 103, 105, 106, 104, 96, 69, 90, 87, 86, 92, 108, 70, 65, 95};
    }

    public static boolean A03(C1231Nz c1231Nz, boolean z) {
        boolean z2 = false;
        if (!c1231Nz.A04().A0n() || !z) {
            return false;
        }
        Uri uriA00 = C1132Kc.A00(c1231Nz.A04().A0v().A0F().A05());
        String authority = uriA00.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            c1231Nz.A05().A0E().A9v();
            return false;
        }
        boolean zEquals = authority.equals(A01(128, 5, 126));
        boolean z3 = uriA00.getQueryParameter(A01(155, 9, 116)) == null;
        String queryParameter = uriA00.getQueryParameter(A01(133, 22, 76));
        boolean z4 = !TextUtils.isEmpty(queryParameter) && queryParameter.contains(c1231Nz.A04().A0P());
        boolean zEquals2 = c1231Nz.A05().getPackageName().equals(A01(109, 19, 122));
        boolean zA0o = c1231Nz.A04().A0o();
        if (zEquals && z3 && z4 && (!zEquals2 || zA0o)) {
            z2 = true;
        }
        if (!z2) {
            int i = Build.VERSION.SDK_INT;
            if (A01[2].length() != 3) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[4] = "ixVJz4LKAvkUhWpfUwnrm68OXA5reQsq";
            strArr[1] = "n4hyezKFC81nHjNiPwRfUtRp762j8aVq";
            if (i >= 24) {
                c1231Nz.A05().A0E().A9u(A01(78, 11, 16) + zEquals + A01(89, 20, 11) + z3 + A01(46, 32, 42) + z4 + A01(27, 19, 39) + zEquals2 + A01(0, 27, 111) + zA0o);
            }
        }
        return z2;
    }
}
