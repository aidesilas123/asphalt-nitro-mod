package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WR implements InterfaceC0920Ba {
    public static byte[] A04;
    public static String[] A05 = {"89ZAS4gKAvfsCOhGFLRndaPlzH5Jylu0", "WDj0w8iYShPhw5JkNLQVjMzFidij1YMB", "SZD8V9ebG6DMCxkEToUDQHseHkwYH45y", "flB69VC8Ebs69L5nDVZVAs6kLxLMfW9p", "Dc9Giep11FBAOEJK", "fiVRhSZcsaoyqUlEeIiHO4czNXpaN55t", "HHz5E2PDkz6p7na9zQig", "GASwop9kiLfFsL9tAHZWlbr16muWtU3x"};
    public static final InterfaceC0923Bd A06;
    public static final int A07;
    public boolean A00;
    public final long A01;
    public final WQ A02;
    public final C1062Hh A03;

    static {
        A01();
        A06 = new WS();
        A07 = C1078Hx.A08(A00(0, 3, 105));
    }

    public WR() {
        this(0L);
    }

    public WR(long j) {
        this.A01 = j;
        this.A02 = new WQ();
        this.A03 = new C1062Hh(2786);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 70);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A04 = new byte[]{-8, -13, -30};
        if (A05[3].charAt(6) != 'C') {
            throw new RuntimeException();
        }
        A05[6] = "Dcf";
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A02.A4l(interfaceC0922Bc, new C0952Cu(0, 1));
        interfaceC0922Bc.A5T();
        interfaceC0922Bc.AEx(new X0(C.TIME_UNSET));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        int i = interfaceC0921Bb.read(this.A03.A00, 0, 2786);
        if (i == -1) {
            return -1;
        }
        this.A03.A0Y(0);
        this.A03.A0X(i);
        if (!this.A00) {
            this.A02.ADj(this.A01, true);
            this.A00 = true;
        }
        this.A02.A4O(this.A03);
        return 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        this.A00 = false;
        this.A02.AEv();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        C1062Hh c1062Hh = new C1062Hh(10);
        int i = 0;
        while (true) {
            interfaceC0921Bb.ADl(c1062Hh.A00, 0, 10);
            c1062Hh.A0Y(0);
            if (c1062Hh.A0G() != A07) {
                break;
            }
            c1062Hh.A0Z(3);
            int iA0D = c1062Hh.A0D();
            i += iA0D + 10;
            interfaceC0921Bb.A3S(iA0D);
        }
        interfaceC0921Bb.AEm();
        interfaceC0921Bb.A3S(i);
        int i2 = i;
        int i3 = 0;
        while (true) {
            interfaceC0921Bb.ADl(c1062Hh.A00, 0, 5);
            c1062Hh.A0Y(0);
            if (c1062Hh.A0I() != 2935) {
                i3 = 0;
                interfaceC0921Bb.AEm();
                i2++;
                if (i2 - i >= 8192) {
                    return false;
                }
                interfaceC0921Bb.A3S(i2);
            } else {
                i3++;
                if (i3 >= 4) {
                    return true;
                }
                int iA05 = A8.A05(c1062Hh.A00);
                if (iA05 == -1) {
                    return false;
                }
                interfaceC0921Bb.A3S(iA05 - 5);
            }
        }
    }
}
