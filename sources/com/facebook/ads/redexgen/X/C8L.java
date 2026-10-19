package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.AudienceNetworkAds;
import com.facebook.ads.internal.api.BuildConfigApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import com.facebook.ads.internal.settings.MultithreadedBundleWrapper;
import com.facebook.ads.internal.util.activity.ActivityUtils;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8L, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C8L {
    public static boolean A00;
    public static boolean A01;
    public static byte[] A02;
    public static String[] A03 = {"qrNp1wG", "4f9SKAEMWw8LBpPH9ClfYFaSVVluVAOE", "62aVnpwn360RV3u8SEcmxFYidJmBvefX", "Gce9ySP9MgoEln4cNVrEo5sJO8CSkBrv", "GAv6eBsy68sSiadtgyjEU9blJSusD372", "OMedkGV5dbFzDsS0dZcen", "wlEAAxVLaYYUt0VSnPi", "2B4l1t7rFez9Iyb0KdS6JKEUq9HBo8Fu"};
    public static final AtomicBoolean A04;
    public static final AtomicBoolean A05;
    public static final AtomicBoolean A06;

    static {
        A03();
        A06 = new AtomicBoolean();
        A04 = new AtomicBoolean();
        A05 = new AtomicBoolean();
    }

    public static C1482Xu A00() {
        return new C1482Xu();
    }

    public static C1481Xt A01(Y9 y9) {
        return new C1481Xt(y9);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A03[1].charAt(3) == 'A') {
                throw new RuntimeException();
            }
            String[] strArr = A03;
            strArr[4] = "IDfTBPjSyvL4biEe7dLkbKSavqcQmadb";
            strArr[2] = "Oy3yacq1X2KDRnpIDSUXWs28RTZJmhMt";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 60);
            i4++;
        }
    }

    public static void A03() {
        A02 = new byte[]{-60, -52, -60, -8, -58, -55, -59, -57, -66, -70, -71, -19, -36, -31, -35, -26, -37, -35, -58, -35, -20, -17, -25, -22, -29, -62, -77, -70, -113, -40, -35, -40, -29, -40, -48, -37, -40, -23, -48, -29, -40, -34, -35, -113, -30, -29, -48, -31, -29, -44, -45, -60, -43, -36, -111, -24, -46, -28, -111, -46, -35, -29, -42, -46, -43, -22, -111, -38, -33, -38, -27, -38, -46, -35, -38, -21, -42, -43, -110, -111, -60, -36, -38, -31, -31, -38, -33, -40, -97, -62, -40, -34, -119, -51, -40, -41, -112, -35, -119, -52, -54, -43, -43, -119, -86, -34, -51, -46, -50, -41, -52, -50, -73, -50, -35, -32, -40, -37, -44, -86, -51, -36, -105, -46, -41, -46, -35, -46, -54, -43, -46, -29, -50, -111, -110, -105, -119, -68, -40, -42, -50, -119, -49, -34, -41, -52, -35, -46, -40, -41, -54, -43, -46, -35, -30, -119, -42, -54, -30, -119, -41, -40, -35, -119, -32, -40, -37, -44, -119, -39, -37, -40, -39, -50, -37, -43, -30, -105, -66, -51, -58, -31, -33, -24, -33, -20, -29, -35, -9, -4, -9, 2, -9, -17, -6, -9, 8, -13, 5, 10, 5, Ascii.DLE, 5, -3, 8, 5, Ascii.SYN, 1, -60, -59, -68, 10, Ascii.VT, Ascii.DLE, -68, -1, -3, 8, 8, 1, 0, -54};
    }

    public static void A04(AudienceNetworkAds.InitListener initListener, AudienceNetworkAds.InitResult initResult) {
        LP.A01.execute(new C1483Xv(initListener, initResult));
    }

    public static void A06(Y9 y9) {
        if (!IR.A0P(y9) || A05.getAndSet(true)) {
            return;
        }
        try {
            Thread.setDefaultUncaughtExceptionHandler(new C08327n(Thread.getDefaultUncaughtExceptionHandler(), y9, new C1479Xr()));
        } catch (Exception e2) {
            y9.A07().A9M(A02(181, 7, 62), C08417x.A1X, new C08427y(e2));
        }
    }

    public static void A07(Y9 y9) {
        A0G(y9, null, null, 3);
    }

    public static void A08(Y9 y9) {
        A0G(y9, null, null, 3);
    }

    public static void A09(Y9 y9) {
        if (IP.A1q(y9)) {
            A0E(y9, 0);
        }
        if (IP.A1x(y9)) {
            A0B(y9);
        }
    }

    public static void A0A(Y9 y9) {
        if (IP.A1r(y9)) {
            A0F(y9, null, 3);
        }
    }

    public static void A0B(Y9 y9) {
        ExecutorC1154La.A06.execute(new C1484Xw(y9));
    }

    public static void A0C(Y9 y9) {
        C08357r.A0C(y9, new C1478Xq(y9), new Y0(), BuildConfigApi.isDebug());
        y9.A09();
    }

    public static void A0E(Y9 y9, int i) {
        C7R.A01(y9);
        if (A04.getAndSet(true)) {
            return;
        }
        if (AdInternalSettings.isDebugBuild() || AdInternalSettings.isDebuggerOn()) {
            JU.A02();
        }
        A06(y9);
        KB.A00(IP.A0n(y9), BuildConfigApi.isDebug(), A00(), A01(y9));
        C6B.A03(IP.A03(y9));
        C1309Qz.A09(new C1480Xs(y9));
        if (i == 3) {
            Log.e(A02(8, 17, 60), A02(89, 89, 45));
            y9.A07().A9g(A02(178, 3, 33), C08417x.A0R, new C08427y(A02(198, 24, 96)));
        }
        ActivityUtils.A04(y9, AudienceNetworkActivity.class);
        ExecutorC1154La.A05(y9);
        C1097Iq.A05(y9);
        C06710v.A01(y9);
        if (IP.A0y(y9)) {
            AnonymousClass57.A00(y9);
        }
        if (IP.A1X(y9)) {
            C1470Xi.A02().A7k(y9);
        }
    }

    public static void A0F(Y9 y9, AudienceNetworkAds.InitListener initListener, int i) {
        C7R.A01(y9);
        boolean z = false;
        synchronized (C8L.class) {
            if (!A00) {
                if (i == 1 || i == 2) {
                    A00 = true;
                    z = true;
                } else if (i == 3 && !A01) {
                    A01 = true;
                    z = true;
                }
            }
        }
        if (z) {
            A0E(y9, i);
            ExecutorC1154La.A08.execute(new C1485Xx(y9, initListener));
        } else if (i == 1) {
            String strA02 = A02(51, 38, 53);
            if (initListener != null) {
                A04(initListener, new C8K(true, strA02));
            } else {
                Log.w(A02(8, 17, 60), strA02);
            }
        }
    }

    public static void A0G(Y9 y9, MultithreadedBundleWrapper multithreadedBundleWrapper, AudienceNetworkAds.InitListener initListener, int i) {
        JU.A05(A02(188, 10, 82), A02(25, 26, 51), A02(0, 8, 87));
        C1309Qz.A06();
        A0F(y9, initListener, i);
    }

    public static synchronized boolean A0H() {
        return A00;
    }
}
