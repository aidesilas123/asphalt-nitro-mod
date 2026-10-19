package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1456Wu extends AbstractC0931Bo {
    public static byte[] A01;
    public static String[] A02 = {"lkUmj0P9ANZweJy", "AYR", "2bCiSP20yUx8Jjv69HyX94pfkMFX1Tn5", "GuptQSCxLEDTiFK9bPX0ljmbSmBcx9xx", "QILfBos", "yeLNYaj", "n8HrTtIUehfoTgx", "xV0sp6lxPyztL8QZzt7llBh4QSI4V12v"};
    public long A00;

    static {
        A0A();
    }

    public C1456Wu() {
        super(null);
        this.A00 = C.TIME_UNSET;
    }

    public static int A00(C1062Hh c1062Hh) {
        return c1062Hh.A0E();
    }

    public static Boolean A01(C1062Hh c1062Hh) {
        return Boolean.valueOf(c1062Hh.A0E() == 1);
    }

    public static Double A02(C1062Hh c1062Hh) {
        return Double.valueOf(Double.longBitsToDouble(c1062Hh.A0L()));
    }

    public static Object A03(C1062Hh c1062Hh, int i) {
        switch (i) {
            case 0:
                return A02(c1062Hh);
            case 1:
                return A01(c1062Hh);
            case 2:
                return A05(c1062Hh);
            case 3:
                return A09(c1062Hh);
            case 4:
            case 5:
            case 6:
            case 7:
            case 9:
            default:
                String[] strArr = A02;
                if (strArr[3].charAt(7) == strArr[7].charAt(7)) {
                    A02[2] = "Zl5TZ6M60aHBYOe9FM2F5W6f579JKUNd";
                    return null;
                }
                break;
            case 8:
                HashMap<String, Object> mapA08 = A08(c1062Hh);
                String[] strArr2 = A02;
                if (strArr2[0].length() == strArr2[6].length()) {
                    String[] strArr3 = A02;
                    strArr3[0] = "AtnlLuJZPUjXwht";
                    strArr3[6] = "kJYayAh32s2xp3N";
                    return mapA08;
                }
                break;
            case 10:
                return A06(c1062Hh);
            case 11:
                return A07(c1062Hh);
        }
        throw new RuntimeException();
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            byte b = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
            String[] strArr = A02;
            if (strArr[3].charAt(7) != strArr[7].charAt(7)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[3] = "WF1W4nbxyUcfRBlDsHDD1CgmrC98ElX3";
            strArr2[7] = "aIs3tFZxis4srcfFD6vTbXobqrKXyR4d";
            bArrCopyOfRange[i4] = b;
        }
        return new String(bArrCopyOfRange);
    }

    public static String A05(C1062Hh c1062Hh) {
        int iA0I = c1062Hh.A0I();
        int iA06 = c1062Hh.A06();
        c1062Hh.A0Z(iA0I);
        return new String(c1062Hh.A00, iA06, iA0I);
    }

    public static ArrayList<Object> A06(C1062Hh c1062Hh) {
        int iA0H = c1062Hh.A0H();
        ArrayList<Object> arrayList = new ArrayList<>(iA0H);
        for (int i = 0; i < iA0H; i++) {
            arrayList.add(A03(c1062Hh, A00(c1062Hh)));
        }
        return arrayList;
    }

    public static Date A07(C1062Hh c1062Hh) {
        Date date = new Date((long) A02(c1062Hh).doubleValue());
        c1062Hh.A0Z(2);
        return date;
    }

    public static HashMap<String, Object> A08(C1062Hh c1062Hh) {
        int iA0H = c1062Hh.A0H();
        HashMap<String, Object> map = new HashMap<>(iA0H);
        for (int i = 0; i < iA0H; i++) {
            map.put(A05(c1062Hh), A03(c1062Hh, A00(c1062Hh)));
        }
        return map;
    }

    public static HashMap<String, Object> A09(C1062Hh c1062Hh) {
        HashMap<String, Object> map = new HashMap<>();
        while (true) {
            String strA05 = A05(c1062Hh);
            int iA00 = A00(c1062Hh);
            if (iA00 == 9) {
                return map;
            }
            map.put(strA05, A03(c1062Hh, iA00));
        }
    }

    public static void A0A() {
        A01 = new byte[]{-40, -23, -26, -43, -24, -35, -29, -30, 5, 4, -29, -5, 10, -9, -38, -9, 10, -9};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0931Bo
    public final void A0B(C1062Hh c1062Hh, long j) throws C08729d {
        if (A00(c1062Hh) != 2) {
            throw new C08729d();
        }
        if (A04(8, 10, 119).equals(A05(c1062Hh)) && A00(c1062Hh) == 8) {
            HashMap<String, Object> mapA08 = A08(c1062Hh);
            String strA04 = A04(0, 8, 85);
            if (mapA08.containsKey(strA04)) {
                double dDoubleValue = ((Double) mapA08.get(strA04)).doubleValue();
                if (dDoubleValue > 0.0d) {
                    this.A00 = (long) (1000000.0d * dDoubleValue);
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC0931Bo
    public final boolean A0C(C1062Hh c1062Hh) {
        return true;
    }

    public final long A0D() {
        return this.A00;
    }
}
