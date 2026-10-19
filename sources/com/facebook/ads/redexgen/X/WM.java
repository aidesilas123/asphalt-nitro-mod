package com.facebook.ads.redexgen.X;

import android.util.SparseArray;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WM implements InterfaceC0951Ct {
    public static byte[] A02;
    public static String[] A03 = {"W3zpeZwD9Fi1kBaR", "uMdULlbYt84VxY86rM0TiEJbhaqKcXZ1", "Usin4k2UYlEJmIUoIPMyl4MixoDpG9ii", "hBZpg4XSGRsBFeFqV0aqL6EoVOREEldE", "UimonN4w5kzXtUMO8SJw69s6gFNeuD2Z", "uuKAqm4Yer5CcRyJ", "zRTcmdaM3Tn4RRVoPrSr5tVrwuK6PMWw", "taTU185R1PVUiY2ntZzDAqagtcVNoAEE"};
    public final int A00;
    public final List<Format> A01;

    static {
        A02();
    }

    public WM() {
        this(0);
    }

    public WM(int i) {
        this(i, Collections.emptyList());
    }

    public WM(int i, List<Format> list) {
        this.A00 = i;
        if (!A03(32) && list.isEmpty()) {
            list = Collections.singletonList(Format.A00(null, A01(0, 19, 66), 0, null));
        }
        this.A01 = list;
    }

    private C0948Cp A00(C0950Cs c0950Cs) {
        String strA01;
        int i;
        if (A03(32)) {
            return new C0948Cp(this.A01);
        }
        C1062Hh c1062Hh = new C1062Hh(c0950Cs.A03);
        List<Format> arrayList = this.A01;
        while (c1062Hh.A04() > 0) {
            int iA0E = c1062Hh.A0E();
            int iA06 = c1062Hh.A06() + c1062Hh.A0E();
            if (iA0E == 134) {
                arrayList = new ArrayList<>();
                int iA0E2 = c1062Hh.A0E() & 31;
                for (int i2 = 0; i2 < iA0E2; i2++) {
                    String strA0S = c1062Hh.A0S(3);
                    int iA0E3 = c1062Hh.A0E();
                    if ((iA0E3 & 128) != 0) {
                        strA01 = A01(19, 19, 101);
                        i = iA0E3 & 63;
                    } else {
                        strA01 = A01(0, 19, 66);
                        i = 1;
                    }
                    arrayList.add(Format.A08(null, strA01, null, -1, 0, strA0S, i, null));
                    c1062Hh.A0Z(2);
                }
            }
            c1062Hh.A0Y(iA06);
        }
        return new C0948Cp(arrayList);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{Ascii.DLE, 1, 1, Ascii.GS, Ascii.CAN, Ascii.DC2, Ascii.DLE, 5, Ascii.CAN, Ascii.RS, Ascii.US, 94, Ascii.DC2, Ascii.DC4, Ascii.DLE, 92, 71, 65, 73, 55, 38, 38, 58, 63, 53, 55, 34, 63, 57, 56, 121, 53, 51, 55, 123, 97, 102, 110};
    }

    private boolean A03(int i) {
        return (this.A00 & i) != 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0951Ct
    public final SparseArray<InterfaceC0953Cv> A4a() {
        return new SparseArray<>();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0951Ct
    public final InterfaceC0953Cv A4f(int i, C0950Cs c0950Cs) {
        switch (i) {
            case 2:
                return new WD(new WJ());
            case 3:
            case 4:
                return new WD(new WE(c0950Cs.A01));
            case 15:
                if (A03(2)) {
                    return null;
                }
                return new WD(new WN(false, c0950Cs.A01));
            case 17:
                boolean zA03 = A03(2);
                String[] strArr = A03;
                if (strArr[4].charAt(2) == strArr[3].charAt(2)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A03;
                strArr2[2] = "Zsc3HcoanD4hgKlowrimr1mcCeCJ4aqm";
                strArr2[6] = "fbfbpCk06enibsJo0cAFVF7ae3oKLvDz";
                if (zA03) {
                    return null;
                }
                return new WD(new WF(c0950Cs.A01));
            case 21:
                return new WD(new WG());
            case 27:
                boolean zA032 = A03(4);
                String[] strArr3 = A03;
                if (strArr3[7].charAt(13) != strArr3[1].charAt(13)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A03;
                strArr4[2] = "MnHqmUaQQZIE89AoLzdx0BMakHNAXRZh";
                strArr4[6] = "UBVzW5fdc0gZ9W3oa8if0wBLwl14wyCB";
                if (zA032) {
                    return null;
                }
                return new WD(new WI(A00(c0950Cs), A03(1), A03(8)));
            case 36:
                return new WD(new WH(A00(c0950Cs)));
            case 89:
                return new WD(new WK(c0950Cs.A02));
            case 129:
            case 135:
                return new WD(new WQ(c0950Cs.A01));
            case 130:
            case 138:
                return new WD(new WL(c0950Cs.A01));
            case 134:
                if (A03(16)) {
                    return null;
                }
                return new WA(new W9());
            default:
                return null;
        }
    }
}
