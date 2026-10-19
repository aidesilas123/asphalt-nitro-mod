package com.facebook.ads.redexgen.X;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CS {
    public static byte[] A0B;
    public static final int A0C;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public final int[] A09 = new int[255];
    public final C1062Hh A0A = new C1062Hh(255);

    static {
        A01();
        A0C = C1078Hx.A08(A00(0, 4, 33));
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0B, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0B = new byte[]{122, -110, -110, 126, -85, -66, -74, -85, -87, -70, -85, -86, 102, -107, -83, -83, -103, 102, -87, -89, -74, -70, -69, -72, -85, 102, -74, -89, -70, -70, -85, -72, -76, 102, -89, -70, 102, -88, -85, -83, -81, -76, 102, -75, -84, 102, -74, -89, -83, -85, -63, -70, -65, -63, -68, -68, -69, -66, -64, -79, -80, 108, -82, -75, -64, 108, -65, -64, -66, -79, -83, -71, 108, -66, -79, -62, -75, -65, -75, -69, -70};
    }

    public final void A02() {
        this.A03 = 0;
        this.A04 = 0;
        this.A05 = 0L;
        this.A08 = 0L;
        this.A07 = 0L;
        this.A06 = 0L;
        this.A02 = 0;
        this.A01 = 0;
        this.A00 = 0;
    }

    public final boolean A03(InterfaceC0921Bb interfaceC0921Bb, boolean z) throws InterruptedException, IOException {
        this.A0A.A0V();
        A02();
        if (!(interfaceC0921Bb.A7B() == -1 || interfaceC0921Bb.A7B() - interfaceC0921Bb.A7V() >= 27) || !interfaceC0921Bb.ADm(this.A0A.A00, 0, 27, true)) {
            if (z) {
                return false;
            }
            throw new EOFException();
        }
        if (this.A0A.A0M() != A0C) {
            if (z) {
                return false;
            }
            throw new C08729d(A00(4, 46, 60));
        }
        int iA0E = this.A0A.A0E();
        this.A03 = iA0E;
        if (iA0E != 0) {
            if (z) {
                return false;
            }
            throw new C08729d(A00(50, 31, 66));
        }
        this.A04 = this.A0A.A0E();
        this.A05 = this.A0A.A0J();
        this.A08 = this.A0A.A0K();
        this.A07 = this.A0A.A0K();
        this.A06 = this.A0A.A0K();
        int iA0E2 = this.A0A.A0E();
        this.A02 = iA0E2;
        this.A01 = iA0E2 + 27;
        this.A0A.A0V();
        interfaceC0921Bb.ADl(this.A0A.A00, 0, this.A02);
        for (int i = 0; i < this.A02; i++) {
            this.A09[i] = this.A0A.A0E();
            this.A00 += this.A09[i];
        }
        return true;
    }
}
