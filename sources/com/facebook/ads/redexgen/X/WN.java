package com.facebook.ads.redexgen.X;

import android.util.Log;
import android.util.Pair;
import androidx.core.app.FrameMetricsAggregator;
import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.util.Arrays;
import java.util.Collections;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WN implements InterfaceC0941Cg {
    public static byte[] A0H;
    public static String[] A0I = {"aRSbhnMLIcOzj", "ArMoJofeV0W2c5eK3C8YvO0k1qJSW4Bu", "08qFCQPWLGI3uv5FT5gA6GEjfGrW3Yqx", "08xirDFjjs8oqtTIfBkr", "oUVAEbDN9zve", "EoNb", "rtTHy9LVM9SlY", "UaKoPz55Hu2hTR949azFeJYsN1lXPKTw"};
    public static final byte[] A0J;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public long A04;
    public long A05;
    public long A06;
    public InterfaceC0930Bm A07;
    public InterfaceC0930Bm A08;
    public InterfaceC0930Bm A09;
    public String A0A;
    public boolean A0B;
    public boolean A0C;
    public final C1061Hg A0D;
    public final C1062Hh A0E;
    public final String A0F;
    public final boolean A0G;

    static {
        A06();
        A0J = new byte[]{73, 68, 51};
    }

    public WN(boolean z) {
        this(z, null);
    }

    public WN(boolean z, String str) {
        this.A0D = new C1061Hg(new byte[7]);
        this.A0E = new C1062Hh(Arrays.copyOf(A0J, 10));
        A03();
        this.A0G = z;
        this.A0F = str;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0H, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 124);
        }
        return new String(bArrCopyOfRange);
    }

    private void A01() throws C08729d {
        this.A0D.A07(0);
        if (this.A0C) {
            this.A0D.A08(10);
        } else {
            int iA04 = this.A0D.A04(2) + 1;
            if (iA04 != 2) {
                Log.w(A00(22, 10, 59), A00(32, 28, 25) + iA04 + A00(0, 22, 57));
                iA04 = 2;
            }
            int iA042 = this.A0D.A04(4);
            this.A0D.A08(1);
            byte[] bArrA07 = HM.A07(iA04, iA042, this.A0D.A04(3));
            Pair<Integer, Integer> pairA03 = HM.A03(bArrA07);
            Format formatA07 = Format.A07(this.A0A, A00(75, 15, 35), null, -1, -1, ((Integer) pairA03.second).intValue(), ((Integer) pairA03.first).intValue(), Collections.singletonList(bArrA07), null, 0, this.A0F);
            this.A05 = 1024000000 / ((long) formatA07.A0C);
            this.A09.A5j(formatA07);
            this.A0C = true;
        }
        this.A0D.A08(4);
        int iA043 = (this.A0D.A04(13) - 2) - 5;
        if (this.A0B) {
            iA043 -= 2;
        }
        A07(this.A09, this.A05, 0, iA043);
    }

    private void A02() {
        this.A08.AEr(this.A0E, 10);
        this.A0E.A0Y(6);
        A07(this.A08, 0L, 10, this.A0E.A0D() + 10);
    }

    private void A03() {
        this.A03 = 0;
        this.A00 = 0;
        this.A01 = 256;
    }

    private void A04() {
        this.A03 = 2;
        this.A00 = 0;
    }

    private void A05() {
        this.A03 = 1;
        this.A00 = A0J.length;
        this.A02 = 0;
        this.A0E.A0Y(0);
    }

    public static void A06() {
        A0H = new byte[]{-31, -43, Ascii.ETB, 42, 41, -43, Ascii.SYN, 40, 40, 42, 34, Ascii.RS, 35, Ascii.FS, -43, -10, -10, -8, -43, 1, -8, -29, -8, Ascii.ESC, 43, 42, 9, Ascii.FS, Ascii.CAN, Ascii.ESC, Ascii.FS, 41, -39, -6, 9, -6, -8, 9, -6, -7, -75, -10, 10, -7, -2, 4, -75, 4, -9, -1, -6, -8, 9, -75, 9, Ascii.SO, 5, -6, -49, -75, 34, 49, 49, 45, 42, 36, 34, 53, 42, 48, 47, -16, 42, 37, -12, 0, Ascii.DC4, 3, 8, Ascii.SO, -50, Ascii.FF, Ascii.SI, -45, 0, -52, Ascii.VT, 0, 19, Ascii.FF};
    }

    private void A07(InterfaceC0930Bm interfaceC0930Bm, long j, int i, int i2) {
        this.A03 = 3;
        this.A00 = i;
        this.A07 = interfaceC0930Bm;
        this.A04 = j;
        this.A02 = i2;
    }

    private void A08(C1062Hh c1062Hh) {
        byte[] bArr = c1062Hh.A00;
        int iA06 = c1062Hh.A06();
        int iA07 = c1062Hh.A07();
        while (iA06 < iA07) {
            int i = iA06 + 1;
            int i2 = bArr[iA06] & 255;
            int i3 = this.A01;
            if (i3 == 512 && i2 >= 240 && i2 != 255) {
                this.A0B = (i2 & 1) == 0;
                A04();
                c1062Hh.A0Y(i);
                return;
            }
            switch (i3 | i2) {
                case 329:
                    this.A01 = 768;
                    iA06 = i;
                    break;
                case FrameMetricsAggregator.EVERY_DURATION /* 511 */:
                    this.A01 = 512;
                    iA06 = i;
                    break;
                case 836:
                    this.A01 = 1024;
                    iA06 = i;
                    break;
                case 1075:
                    A05();
                    c1062Hh.A0Y(i);
                    break;
                default:
                    if (i3 == 256) {
                        iA06 = i;
                    } else {
                        this.A01 = 256;
                        iA06 = i - 1;
                    }
                    break;
            }
            return;
        }
        c1062Hh.A0Y(iA06);
    }

    private void A09(C1062Hh c1062Hh) {
        int iMin = Math.min(c1062Hh.A04(), this.A02 - this.A00);
        this.A07.AEr(c1062Hh, iMin);
        int i = this.A00 + iMin;
        this.A00 = i;
        int i2 = this.A02;
        if (i == i2) {
            this.A07.AEs(this.A06, 1, i2, 0, null);
            this.A06 += this.A04;
            A03();
        }
    }

    private boolean A0A(C1062Hh c1062Hh, byte[] bArr, int i) {
        int iMin = Math.min(c1062Hh.A04(), i - this.A00);
        c1062Hh.A0c(bArr, this.A00, iMin);
        int i2 = this.A00 + iMin;
        this.A00 = i2;
        return i2 == i;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4O(C1062Hh c1062Hh) throws C08729d {
        while (c1062Hh.A04() > 0) {
            switch (this.A03) {
                case 0:
                    A08(c1062Hh);
                    break;
                case 1:
                    if (A0A(c1062Hh, this.A0E.A00, 10)) {
                        A02();
                    }
                    break;
                case 2:
                    if (A0A(c1062Hh, this.A0D.A00, this.A0B ? 7 : 5)) {
                        A01();
                    }
                    break;
                case 3:
                    A09(c1062Hh);
                    break;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void A4l(InterfaceC0922Bc interfaceC0922Bc, C0952Cu c0952Cu) {
        c0952Cu.A05();
        this.A0A = c0952Cu.A04();
        this.A09 = interfaceC0922Bc.AFx(c0952Cu.A03(), 1);
        if (!this.A0G) {
            this.A08 = new X2();
            return;
        }
        c0952Cu.A05();
        InterfaceC0930Bm interfaceC0930BmAFx = interfaceC0922Bc.AFx(c0952Cu.A03(), 4);
        this.A08 = interfaceC0930BmAFx;
        if (A0I[4].length() != 12) {
            throw new RuntimeException();
        }
        A0I[5] = "GBp";
        interfaceC0930BmAFx.A5j(Format.A0B(c0952Cu.A04(), A00(60, 15, 69), null, -1, null));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADi() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void ADj(long j, boolean z) {
        this.A06 = j;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0941Cg
    public final void AEv() {
        A03();
    }
}
