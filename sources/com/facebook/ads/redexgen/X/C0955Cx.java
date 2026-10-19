package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import com.json.mediationsdk.utils.IronSourceConstants;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Cx, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C0955Cx {
    public static byte[] A00;

    static {
        A02();
    }

    public static W2 A00(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        HI.A01(interfaceC0921Bb);
        C1062Hh c1062Hh = new C1062Hh(16);
        if (C0954Cw.A00(interfaceC0921Bb, c1062Hh).A00 != C1078Hx.A08(A01(111, 4, 112))) {
            return null;
        }
        int iA02 = 0;
        interfaceC0921Bb.ADl(c1062Hh.A00, 0, 4);
        c1062Hh.A0Y(0);
        int iA08 = c1062Hh.A08();
        int iA082 = C1078Hx.A08(A01(195, 4, 13));
        String strA01 = A01(199, 15, 13);
        if (iA08 != iA082) {
            Log.e(strA01, A01(115, 25, 27) + iA08);
            return null;
        }
        C0954Cw c0954CwA00 = C0954Cw.A00(interfaceC0921Bb, c1062Hh);
        while (c0954CwA00.A00 != C1078Hx.A08(A01(218, 4, 32))) {
            interfaceC0921Bb.A3S((int) c0954CwA00.A01);
            c0954CwA00 = C0954Cw.A00(interfaceC0921Bb, c1062Hh);
        }
        HI.A04(c0954CwA00.A01 >= 16);
        interfaceC0921Bb.ADl(c1062Hh.A00, 0, 16);
        c1062Hh.A0Y(0);
        int iA0C = c1062Hh.A0C();
        int iA0C2 = c1062Hh.A0C();
        int iA0B = c1062Hh.A0B();
        int iA0B2 = c1062Hh.A0B();
        int iA0C3 = c1062Hh.A0C();
        int iA0C4 = c1062Hh.A0C();
        int i = (iA0C2 * iA0C4) / 8;
        if (iA0C3 != i) {
            throw new C08729d(A01(57, 26, 48) + i + A01(10, 7, 62) + iA0C3);
        }
        switch (iA0C) {
            case 1:
            case 65534:
                iA02 = C1078Hx.A02(iA0C4);
                break;
            case 3:
                if (iA0C4 == 32) {
                    iA02 = 4;
                }
                break;
            default:
                Log.e(strA01, A01(166, 29, 30) + iA0C);
                return null;
        }
        if (iA02 == 0) {
            Log.e(strA01, A01(IronSourceConstants.USING_CACHE_FOR_INIT_EVENT, 26, 101) + iA0C4 + A01(0, 10, 35) + iA0C);
            return null;
        }
        interfaceC0921Bb.A3S(((int) c0954CwA00.A01) - 16);
        return new W2(iA0C2, iA0B, iA0B2, iA0C3, iA0C4, iA02);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 36);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{39, 97, 104, 117, 39, 115, 126, 119, 98, 39, 33, 58, 125, 117, 110, 32, 58, 123, 80, 77, 86, 83, Ascii.CAN, 81, 75, Ascii.CAN, 76, 87, 87, Ascii.CAN, 84, 89, 74, 95, 93, Ascii.CAN, Ascii.DLE, 70, 10, Ascii.DEL, 122, 19, 17, Ascii.CAN, 76, 87, Ascii.CAN, 75, 83, 81, 72, 3, Ascii.CAN, 81, 92, 2, Ascii.CAN, 81, 108, 100, 113, 119, 96, 113, 112, 52, 118, 120, 123, 119, Ascii.DEL, 52, 117, 120, 125, 115, 122, 121, 113, 122, 96, 46, 52, 103, 73, 64, 65, 92, 71, 64, 73, Ascii.SO, 91, 64, 69, 64, 65, 89, 64, Ascii.SO, 121, 111, 120, Ascii.SO, 77, 70, 91, 64, 69, Ascii.DC4, Ascii.SO, 6, Ascii.GS, Ascii.DC2, Ascii.DC2, 106, 81, 76, 74, 79, 79, 80, 77, 75, 90, 91, Ascii.US, 109, 118, 121, 121, Ascii.US, 89, 80, 77, 82, 94, 75, 5, Ascii.US, Ascii.DC4, 47, 50, 52, 49, 49, 46, 51, 53, 36, 37, 97, Ascii.SYN, 0, Ascii.ETB, 97, 35, 40, 53, 97, 37, 36, 49, 53, 41, 97, 111, 84, 73, 79, 74, 74, 85, 72, 78, 95, 94, Ascii.SUB, 109, 123, 108, Ascii.SUB, 92, 85, 72, 87, 91, 78, Ascii.SUB, 78, 67, 74, 95, 0, Ascii.SUB, 126, 104, Ascii.DEL, 108, 126, 72, 95, 97, 76, 72, 77, 76, 91, 123, 76, 72, 77, 76, 91, 10, Ascii.SI, Ascii.SUB, Ascii.SI, 98, 105, 112, 36};
    }

    public static void A03(InterfaceC0921Bb interfaceC0921Bb, W2 w2) throws InterruptedException, IOException {
        HI.A01(interfaceC0921Bb);
        HI.A01(w2);
        interfaceC0921Bb.AEm();
        C1062Hh c1062Hh = new C1062Hh(8);
        C0954Cw c0954CwA00 = C0954Cw.A00(interfaceC0921Bb, c1062Hh);
        while (c0954CwA00.A00 != C1078Hx.A08(A01(214, 4, 74))) {
            Log.w(A01(199, 15, 13), A01(83, 28, 10) + c0954CwA00.A00);
            long j = c0954CwA00.A01 + 8;
            if (c0954CwA00.A00 == C1078Hx.A08(A01(111, 4, 112))) {
                j = 12;
            }
            if (j > 2147483647L) {
                throw new C08729d(A01(17, 40, 28) + c0954CwA00.A00);
            }
            interfaceC0921Bb.AFe((int) j);
            c0954CwA00 = C0954Cw.A00(interfaceC0921Bb, c1062Hh);
        }
        interfaceC0921Bb.AFe(8);
        w2.A06(interfaceC0921Bb.A7a(), c0954CwA00.A01);
    }
}
