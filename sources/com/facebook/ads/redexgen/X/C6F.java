package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.6F, reason: invalid class name */
/* JADX INFO: loaded from: assets.dex */
public final class C6F {
    public static boolean A04;
    public static byte[] A05;
    public static final String A06;
    public final C6G A00;
    public final C6H A01;
    public final Y9 A02;
    public final R6 A03;

    static {
        A01();
        A06 = C6F.class.getSimpleName();
    }

    public C6F(Y9 y9, InterfaceC1035Ge interfaceC1035Ge, C6G c6g, C6H c6h) {
        this.A02 = y9;
        R6 r6A4e = interfaceC1035Ge.A4e(R7.A06);
        this.A03 = r6A4e;
        this.A00 = c6g;
        this.A01 = c6h;
        r6A4e.A3N(new YI(this));
        A02();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{46, 56, 19, 41, 52, 56, 62, 45, 63};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void A02() {
        if (K0.A02(this)) {
            return;
        }
        try {
            if (!this.A03.A90()) {
                this.A02.A04().A8o();
                return;
            }
            String strOptString = this.A03.A6b().optString(A00(0, 9, 62));
            if (!TextUtils.isEmpty(strOptString)) {
                this.A00.A04(this.A02, strOptString);
                if (!A04 || IP.A0i(this.A02)) {
                    A04 = true;
                    this.A01.A07();
                }
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
