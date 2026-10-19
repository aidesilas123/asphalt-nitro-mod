package com.facebook.ads.redexgen.X;

import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6B, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C6B {
    public static C6C A00;
    public static boolean A01;
    public static byte[] A02;

    static {
        A02();
        A01 = false;
        A00 = null;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        synchronized (C6B.class) {
            if (A00 == null) {
                return;
            }
            C08427y c08427y = new C08427y(A00.AEe());
            c08427y.A03(1);
            Y9 y9A00 = C7R.A00();
            if (y9A00 != null) {
                y9A00.A07().A9M(A00(0, 9, 109), 3401, c08427y);
            }
            A00.reset();
        }
    }

    public static void A02() {
        A02 = new byte[]{-24, -21, -12, -23, -18, -13, -25, -8, -15};
    }

    public static void A03(final long j) {
        if (j > 0) {
            A00 = new YJ();
            new Thread(j) { // from class: com.facebook.ads.redexgen.X.6D
                public final long A00;

                {
                    this.A00 = j;
                    start();
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() throws Throwable {
                    if (K0.A02(this)) {
                        return;
                    }
                    while (true) {
                        try {
                            try {
                                Thread.sleep(this.A00);
                            } catch (Throwable th) {
                                K0.A00(th, this);
                                return;
                            }
                        } catch (InterruptedException unused) {
                        }
                        C6B.A01();
                    }
                }
            };
        }
    }
}
