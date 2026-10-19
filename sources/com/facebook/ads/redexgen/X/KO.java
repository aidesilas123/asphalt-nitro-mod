package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class KO implements Runnable {
    public static byte[] A01;
    public final /* synthetic */ YA A00;

    static {
        A01();
    }

    public KO(YA ya) {
        this.A00 = ya;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 118);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 122, 125, 98, 97, 99, 104, 99, 116, 111, 101};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            C08427y c08427y = new C08427y(A00(0, 4, 88));
            c08427y.A03(1);
            c08427y.A04(1);
            c08427y.A08(false);
            this.A00.A07().A9N(A00(4, 7, 112), C08417x.A1Y, c08427y);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
