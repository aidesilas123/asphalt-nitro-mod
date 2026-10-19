package com.facebook.ads.redexgen.X;

import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.8c, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08468c {
    public static byte[] A00;

    static {
        A03();
    }

    public static InterfaceC08488e A00(Y9 y9) {
        try {
            return new C1462Xa(y9);
        } catch (IOException e2) {
            y9.A07().A9M(A02(0, 15, 89), C08417x.A2J, new C08427y(e2));
            return new C1465Xd();
        }
    }

    public static C0965Dm A01(Y9 y9) {
        return new C0965Dm(y9);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-2, -15, -17, -5, -2, -16, -21, -16, -19, 0, -19, -18, -19, -1, -15};
    }
}
