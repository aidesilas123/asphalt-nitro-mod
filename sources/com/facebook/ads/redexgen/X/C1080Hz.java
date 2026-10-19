package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Hz, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1080Hz {
    public static byte[] A05;
    public static String[] A06 = {"BmLXPPjgF3W3yl6sHxYVjODx4Gc4ZSvN", "I4b0P0MoHEzHAP7yyYIBBQ151YdBHOwS", "TnUUZ2ELhZytD28RyaEX2mWW0X", "N95", "x88QxZ2XVEltUSPssGjwLeARzs7qYdf0", "T8gtGJunXdUSumjdX3X9mxIBVL", "lBAIpAErMYY7sFwVqjboSux", "Abd"};
    public final float A00;
    public final int A01;
    public final int A02;
    public final int A03;
    public final List<byte[]> A04;

    static {
        A02();
    }

    public C1080Hz(List<byte[]> list, int i, int i2, int i3, float f2) {
        this.A04 = list;
        this.A02 = i;
        this.A03 = i2;
        this.A01 = i3;
        this.A00 = f2;
    }

    public static C1080Hz A00(C1062Hh c1062Hh) throws C08729d {
        try {
            c1062Hh.A0Z(4);
            int iA0E = (c1062Hh.A0E() & 3) + 1;
            if (iA0E == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iA0E2 = c1062Hh.A0E() & 31;
            for (int i = 0; i < iA0E2; i++) {
                arrayList.add(A03(c1062Hh));
            }
            int iA0E3 = c1062Hh.A0E();
            for (int i2 = 0; i2 < iA0E3; i2++) {
                arrayList.add(A03(c1062Hh));
            }
            int i3 = -1;
            int i4 = -1;
            float f2 = 1.0f;
            if (iA0E2 > 0) {
                C1057Hc c1057HcA06 = C1058Hd.A06((byte[]) arrayList.get(0), iA0E, ((byte[]) arrayList.get(0)).length);
                i3 = c1057HcA06.A06;
                i4 = c1057HcA06.A02;
                f2 = c1057HcA06.A00;
            } else {
                String[] strArr = A06;
                if (strArr[3].length() != strArr[7].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A06;
                strArr2[2] = "uBIRbiuvHYy0oHv2RJvgJqXQ4A";
                strArr2[5] = "sPpQgCzWXqIb9lVIC566YsDxxs";
            }
            return new C1080Hz(arrayList, iA0E, i3, i4, f2);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new C08729d(A01(0, 24, 65), e2);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 108);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A05 = new byte[]{-14, Ascii.US, Ascii.US, Ascii.FS, Ascii.US, -51, Ascii.GS, Ascii.SO, Ascii.US, 32, Ascii.SYN, Ascii.ESC, Ascii.DC4, -51, -18, 3, -16, -51, Ascii.DLE, Ascii.FS, Ascii.ESC, 19, Ascii.SYN, Ascii.DC4};
    }

    public static byte[] A03(C1062Hh c1062Hh) {
        int iA0I = c1062Hh.A0I();
        int iA06 = c1062Hh.A06();
        c1062Hh.A0Z(iA0I);
        return HM.A08(c1062Hh.A00, iA06, iA0I);
    }
}
