package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WO implements InterfaceC0920Ba {
    public static byte[] A04;
    public static String[] A05 = {"zdP8mq1V4qx9ZCdsfAD4NG7cLFVpQAAe", "koAkuIv", "fyRTvmHGGGsRl9BV6D3JToZwd0QymLEV", "Ol6FmQC", "pWzJ4KWOtVeOprDRKRooJjLfCIz1i7Yl", "FaGWZpOEFJ3DEiDU22ljd64Ld5pUV9HD", "txEKQBUTk3v9kOkzxdvVTnLo1IME9gDG", "VQ1knBpCfCAoSCLl3kVfN2N5wBdN5LBp"};
    public static final InterfaceC0923Bd A06;
    public static final int A07;
    public boolean A00;
    public final long A01;
    public final WN A02;
    public final C1062Hh A03;

    static {
        A01();
        A06 = new WP();
        A07 = C1078Hx.A08(A00(0, 3, 72));
    }

    public WO() {
        this(0L);
    }

    public WO(long j) {
        this.A01 = j;
        this.A02 = new WN(true);
        this.A03 = new C1062Hh(200);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            String[] strArr = A05;
            if (strArr[2].charAt(21) == strArr[4].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A05;
            strArr2[6] = "6nR4pRT1Z5KTQHbqvhpghrBhlvQkSoKV";
            strArr2[5] = "SkXTa4uQceGhkSQtr6wVij7rDC15CMq5";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 67);
            i4++;
        }
    }

    public static void A01() {
        A04 = new byte[]{66, 79, 56};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A02.A4l(interfaceC0922Bc, new C0952Cu(0, 1));
        interfaceC0922Bc.A5T();
        interfaceC0922Bc.AEx(new X0(C.TIME_UNSET));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        int i = interfaceC0921Bb.read(this.A03.A00, 0, 200);
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
        C1061Hg c1061Hg = new C1061Hg(c1062Hh.A00);
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
        int i4 = 0;
        while (true) {
            interfaceC0921Bb.ADl(c1062Hh.A00, 0, 2);
            c1062Hh.A0Y(0);
            if ((65526 & c1062Hh.A0I()) != 65520) {
                i4 = 0;
                i3 = 0;
                interfaceC0921Bb.AEm();
                i2++;
                if (i2 - i >= 8192) {
                    return false;
                }
                interfaceC0921Bb.A3S(i2);
            } else {
                i4++;
                if (i4 >= 4 && i3 > 188) {
                    return true;
                }
                interfaceC0921Bb.ADl(c1062Hh.A00, 0, 4);
                c1061Hg.A07(14);
                int iA04 = c1061Hg.A04(13);
                if (iA04 <= 6) {
                    return false;
                }
                interfaceC0921Bb.A3S(iA04 - 6);
                i3 += iA04;
            }
        }
    }
}
