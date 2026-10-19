package com.facebook.ads.redexgen.X;

import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Qz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1309Qz {
    public static InterfaceC1289Qf A00;
    public static byte[] A01;
    public static String[] A02 = {DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "jWWIi2TrnHAAyoG5itvaKpzBpE6rwsKb", "4piz2zd6PBPCOA5LKuru6huyc0Gk9hmI", "ThWxRwfxtMClt6xxWNEGrvPqHoOGiBgN", "VC0ltrZe3ujZ5yBmE9F34w5pTHRf8GMT", "g0Z7XyqsbnnTrD4DkPgr08gcmreNHhpx", "VVYGWntGozQ2sTcwE1XxLnyTeGzWkyyX", "XVqTwdXEkxL4UUDwn3dakWK60VTsxJd5"};
    public static final Set<String> A03;
    public static final Set<String> A04;
    public static final AtomicBoolean A05;

    static {
        A07();
        HashSet hashSet = new HashSet();
        A03 = hashSet;
        HashSet hashSet2 = new HashSet();
        A04 = hashSet2;
        hashSet.add(A05(6, 29, 2));
        hashSet2.add(A05(168, 29, 95));
        hashSet2.add(A05(35, 29, 116));
        hashSet2.add(A05(64, 29, 119));
        hashSet2.add(A05(116, 29, 17));
        A05 = new AtomicBoolean();
    }

    public static InterfaceC1291Qh A00(C7S c7s) {
        return A03(true, c7s);
    }

    public static InterfaceC1291Qh A01(C7S c7s) {
        return A02(true, c7s);
    }

    public static InterfaceC1291Qh A02(boolean z, C7S c7s) {
        C1295Ql c1295Ql = new C1295Ql();
        C1298Qo c1298QoA04 = A04(c7s);
        if (!A0B(c7s)) {
            c1295Ql.A02(A04);
            c1295Ql.A01(A03);
        }
        if (C1134Ke.A04()) {
            Map<String, String> mapA02 = C1134Ke.A02();
            String[] strArr = A02;
            if (strArr[2].charAt(7) == strArr[1].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[5] = "6CjO7LbqJIONUadrRHmx0RuGBypxStir";
            strArr2[3] = "VKsjD9ddp6JrHwn0FL0Df9QGs7RhJ4JT";
            c1298QoA04.A08(mapA02);
        }
        return AbstractC1293Qj.A00().A00(c1295Ql.A00(c1298QoA04.A09()).A03(z).A04(c7s.A04().A8o()).A05(), c7s.A07(), ExecutorC1154La.A01());
    }

    public static InterfaceC1291Qh A03(boolean z, C7S c7s) {
        return AbstractC1293Qj.A00().A00(new C1295Ql().A03(z).A00(A04(c7s).A09()).A04(c7s.A04().A8o()).A05(), c7s.A07(), ExecutorC1154La.A01());
    }

    public static C1298Qo A04(C7S c7s) {
        A08(c7s);
        C1298Qo c1298Qo = new C1298Qo();
        if (A0B(c7s) || C1134Ke.A04()) {
            c1298Qo.A02(360000).A04(120000);
        } else {
            c1298Qo.A02(IP.A08(c7s)).A04(IP.A0A(c7s));
        }
        c1298Qo.A03(IP.A09(c7s)).A05(IP.A0B(c7s)).A06(IP.A0C(c7s));
        synchronized (C1309Qz.class) {
            InterfaceC1289Qf interfaceC1289Qf = A00;
            if (interfaceC1289Qf != null && (interfaceC1289Qf instanceof InterfaceC1289Qf)) {
                c1298Qo.A07(interfaceC1289Qf);
            }
        }
        return c1298Qo;
    }

    public static String A05(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 56);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A06() {
        A05.set(true);
    }

    public static void A07() {
        A01 = new byte[]{36, 101, 110, 8, 85, 68, Ascii.VT, 77, 77, 2, Ascii.DEL, 10, 123, 99, 73, 104, 8, 85, 98, Ascii.SI, 86, 84, 94, 81, 8, 82, 77, 74, 8, 111, 85, 73, 81, 7, 48, Ascii.DEL, 32, 7, 58, 38, 2, 63, 42, 33, 62, 34, 103, Ascii.ESC, 33, 42, 8, 36, 58, 62, 126, 37, Ascii.SUB, 36, 99, 53, Ascii.RS, 63, 113, 70, Ascii.CR, Ascii.DEL, 119, Ascii.RS, 59, 10, 123, 54, 3, Ascii.FF, 43, 35, 38, 123, 61, 63, 59, 54, 62, Ascii.SO, 10, 44, 53, Ascii.ETB, 0, 42, Ascii.SO, 114, 69, 107, 64, 81, 82, 74, 87, 78, 76, 75, 66, 5, 71, 64, 67, 74, 87, 64, 5, 76, 75, 76, 81, 4, 113, 115, 113, 96, Ascii.US, 72, 71, 115, 75, 77, 98, 79, 2, 93, 72, 124, 123, 77, 71, 80, 124, 97, Ascii.FS, 64, 89, 78, 100, Ascii.DC4, 35, 54, 62, 37, 39, 59, 54, 57, 50, 8, 58, 56, 51, 50, 8, 56, 57, 7, Ascii.FF, Ascii.GS, Ascii.RS, 6, Ascii.ESC, 2, 19, 8, 61, 85, 32, 53, 9, 53, Ascii.CR, 36, 94, 55, 82, 49, 49, 50, 3, 36, Ascii.ETB, 40, Ascii.NAK, 33, 47, 95, Ascii.VT, 1, 54, 90, 109};
    }

    public static void A08(C7S c7s) {
        if (A05.get()) {
            return;
        }
        c7s.A07().A9M(A05(161, 7, 81), C08417x.A20, new C08427y(A05(93, 23, 29)));
    }

    public static synchronized void A09(InterfaceC1289Qf interfaceC1289Qf) {
        A00 = interfaceC1289Qf;
    }

    public static boolean A0A(C7S c7s) {
        int i = Build.VERSION.SDK_INT;
        String strA05 = A05(145, 16, 111);
        if (i < 17) {
            return Settings.System.getInt(c7s.getContentResolver(), strA05, 0) != 0;
        }
        int i2 = Settings.Global.getInt(c7s.getContentResolver(), strA05, 0);
        if (A02[0].length() != 1) {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[2] = "6SlcDzdssqL5L6jmaJN4q0YtRJ9ZiIN0";
        strArr[1] = "IhCDgNyX5tEXKuNPsF1SGphg5lyX1n5g";
        return i2 != 0;
    }

    public static boolean A0B(C7S c7s) {
        String strA86 = c7s.A04().A86();
        return !TextUtils.isEmpty(strA86) && (strA86.endsWith(A05(3, 3, 30)) || strA86.endsWith(A05(0, 3, 50)));
    }
}
