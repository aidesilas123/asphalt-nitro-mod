package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class I5 {
    public static byte[] A02;
    public static String[] A03 = {"ByJYsTLYuoR6uc8r", "JtyXwt9Aly6TcqGHtKIVJmBsk4OeLfoM", "a9HBAd1W81XiearAjjAT3V1ZsLEmO9Oi", "EXNlrjnsmLCbvnLTR5jNuRmyx9d0ZBX8", "CaQoJFxeqSTbWtIeh0kRdnuLPh9NlfCW", "NDFH7JBJhJBLaqfKHqozYt4fbxKVNhf7", "NTYlS1n6YEIgBX9wiCzSTuRNkv1W0ADe", "oBB1NAAyCwUYb6ONAQdFrjyju4xXh"};
    public final int A00;
    public final List<byte[]> A01;

    static {
        A02();
    }

    public I5(List<byte[]> list, int i) {
        this.A01 = list;
        this.A00 = i;
    }

    public static I5 A00(C1062Hh c1062Hh) throws C08729d {
        try {
            c1062Hh.A0Z(21);
            int iA0E = c1062Hh.A0E() & 3;
            int iA0E2 = c1062Hh.A0E();
            int i = 0;
            int iA06 = c1062Hh.A06();
            for (int i2 = 0; i2 < iA0E2; i2++) {
                c1062Hh.A0Z(1);
                int iA0I = c1062Hh.A0I();
                for (int i3 = 0; i3 < iA0I; i3++) {
                    int iA0I2 = c1062Hh.A0I();
                    i += iA0I2 + 4;
                    c1062Hh.A0Z(iA0I2);
                }
            }
            c1062Hh.A0Y(iA06);
            byte[] bArr = new byte[i];
            int i4 = 0;
            String[] strArr = A03;
            if (strArr[2].charAt(26) == strArr[4].charAt(26)) {
                throw new RuntimeException();
            }
            A03[7] = MBridgeConstans.API_REUQEST_CATEGORY_APP;
            for (int i5 = 0; i5 < iA0E2; i5++) {
                c1062Hh.A0Z(1);
                int iA0I3 = c1062Hh.A0I();
                for (int i6 = 0; i6 < iA0I3; i6++) {
                    int iA0I4 = c1062Hh.A0I();
                    System.arraycopy(C1058Hd.A03, 0, bArr, i4, C1058Hd.A03.length);
                    int length = i4 + C1058Hd.A03.length;
                    System.arraycopy(c1062Hh.A00, c1062Hh.A06(), bArr, length, iA0I4);
                    i4 = length + iA0I4;
                    c1062Hh.A0Z(iA0I4);
                }
            }
            return new I5(i == 0 ? null : Collections.singletonList(bArr), iA0E + 1);
        } catch (ArrayIndexOutOfBoundsException e2) {
            throw new C08729d(A01(0, 25, 65), e2);
        }
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 87);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{83, 100, 100, 121, 100, 54, 102, 119, 100, 101, Ascii.DEL, 120, 113, 54, 94, 83, 64, 85, 54, 117, 121, 120, 112, Ascii.DEL, 113};
    }
}
