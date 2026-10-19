package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1457Wv implements InterfaceC0920Ba {
    public static byte[] A0F;
    public static String[] A0G = {"QnLOeuXESrCaGCWmeMmr3ccgSJivirlh", "YhzsmTzzzxhtyY2gbPt9z7nrByNpJ8AG", "zwujZ5tU8kb2uxp5tp3MFQMZqwl6Xl8T", "kc6RUJmY0MGel4Ws9MlGHroinjQjp2AB", "ZiGWNZua4Zts1sNsjYBSU4OXsNo5k01z", "vZczIWNBPrLvTkXGahgR3lrPVHA61MAE", "WEnNwLMqAaXyN6vSaeVfRhJYgSEHaora", "u0NJWOpvT5UyzhfOPQB88kiisy6mVL7a"};
    public static final InterfaceC0923Bd A0H;
    public static final int A0I;
    public int A00;
    public int A02;
    public int A03;
    public long A05;
    public InterfaceC0922Bc A06;
    public C1459Wx A07;
    public C1454Ws A08;
    public boolean A09;
    public final C1062Hh A0C = new C1062Hh(4);
    public final C1062Hh A0B = new C1062Hh(9);
    public final C1062Hh A0E = new C1062Hh(11);
    public final C1062Hh A0D = new C1062Hh();
    public final C1456Wu A0A = new C1456Wu();
    public int A01 = 1;
    public long A04 = C.TIME_UNSET;

    static {
        A03();
        A0H = new C1458Ww();
        A0I = C1078Hx.A08(A01(0, 3, 61));
    }

    private C1062Hh A00(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        if (this.A02 > this.A0D.A05()) {
            C1062Hh c1062Hh = this.A0D;
            c1062Hh.A0b(new byte[Math.max(c1062Hh.A05() * 2, this.A02)], 0);
        } else {
            this.A0D.A0Y(0);
        }
        this.A0D.A0X(this.A02);
        interfaceC0921Bb.readFully(this.A0D.A00, 0, this.A02);
        return this.A0D;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 84);
        }
        return new String(bArrCopyOfRange);
    }

    private void A02() {
        long j;
        if (!this.A09) {
            this.A06.AEx(new X0(C.TIME_UNSET));
            this.A09 = true;
        }
        if (this.A04 == C.TIME_UNSET) {
            if (this.A0A.A0D() == C.TIME_UNSET) {
                long j2 = this.A05;
                String[] strArr = A0G;
                if (strArr[5].charAt(20) != strArr[0].charAt(20)) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0G;
                strArr2[7] = "L5UStG7DYoKpX710PXz3zQwSbfDogpGa";
                strArr2[6] = "NY6hXsIFzv8ItyXdU8z07IBZswL3MGXa";
                j = -j2;
            } else {
                j = 0;
            }
            this.A04 = j;
        }
    }

    public static void A03() {
        A0F = new byte[]{-41, -35, -25};
    }

    private void A04(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        interfaceC0921Bb.AFe(this.A00);
        this.A00 = 0;
        this.A01 = 3;
    }

    private boolean A05(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        if (!interfaceC0921Bb.AEE(this.A0B.A00, 0, 9, true)) {
            return false;
        }
        this.A0B.A0Y(0);
        this.A0B.A0Z(4);
        int iA0E = this.A0B.A0E();
        boolean z = (iA0E & 4) != 0;
        boolean z2 = (iA0E & 1) != 0;
        if (z && this.A07 == null) {
            this.A07 = new C1459Wx(this.A06.AFx(8, 1));
        }
        if (z2 && this.A08 == null) {
            this.A08 = new C1454Ws(this.A06.AFx(9, 2));
        }
        this.A06.A5T();
        this.A00 = (this.A0B.A08() - 9) + 4;
        this.A01 = 2;
        return true;
    }

    private boolean A06(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        boolean z = true;
        int i = this.A03;
        if (i == 8 && this.A07 != null) {
            A02();
            C1459Wx c1459Wx = this.A07;
            C1062Hh c1062HhA00 = A00(interfaceC0921Bb);
            long j = this.A04;
            String[] strArr = A0G;
            if (strArr[2].charAt(9) == strArr[1].charAt(9)) {
                throw new RuntimeException();
            }
            A0G[4] = "14LyfFoDFqyov0bzU05kIxDiosYU9C09";
            c1459Wx.A00(c1062HhA00, j + this.A05);
        } else if (i == 9 && this.A08 != null) {
            A02();
            this.A08.A00(A00(interfaceC0921Bb), this.A04 + this.A05);
        } else if (i != 18 || this.A09) {
            interfaceC0921Bb.AFe(this.A02);
            z = false;
        } else {
            this.A0A.A00(A00(interfaceC0921Bb), this.A05);
            long jA0D = this.A0A.A0D();
            if (jA0D != C.TIME_UNSET) {
                this.A06.AEx(new X0(jA0D));
                this.A09 = true;
            }
        }
        this.A00 = 4;
        this.A01 = 2;
        return z;
    }

    private boolean A07(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        if (!interfaceC0921Bb.AEE(this.A0E.A00, 0, 11, true)) {
            return false;
        }
        this.A0E.A0Y(0);
        this.A03 = this.A0E.A0E();
        this.A02 = this.A0E.A0G();
        this.A05 = this.A0E.A0G();
        this.A05 = (((long) (this.A0E.A0E() << 24)) | this.A05) * 1000;
        this.A0E.A0Z(3);
        this.A01 = 4;
        return true;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A06 = interfaceC0922Bc;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        while (true) {
            switch (this.A01) {
                case 1:
                    if (!A05(interfaceC0921Bb)) {
                        return -1;
                    }
                    break;
                    break;
                case 2:
                    A04(interfaceC0921Bb);
                    break;
                case 3:
                    if (!A07(interfaceC0921Bb)) {
                        return -1;
                    }
                    break;
                    break;
                case 4:
                    if (A06(interfaceC0921Bb)) {
                        return 0;
                    }
                    break;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        this.A01 = 1;
        this.A04 = C.TIME_UNSET;
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        interfaceC0921Bb.ADl(this.A0C.A00, 0, 3);
        this.A0C.A0Y(0);
        if (this.A0C.A0G() != A0I) {
            return false;
        }
        interfaceC0921Bb.ADl(this.A0C.A00, 0, 2);
        this.A0C.A0Y(0);
        if ((this.A0C.A0I() & 250) != 0) {
            return false;
        }
        interfaceC0921Bb.ADl(this.A0C.A00, 0, 4);
        this.A0C.A0Y(0);
        int iA08 = this.A0C.A08();
        interfaceC0921Bb.AEm();
        interfaceC0921Bb.A3S(iA08);
        interfaceC0921Bb.ADl(this.A0C.A00, 0, 4);
        this.A0C.A0Y(0);
        return this.A0C.A08() == 0;
    }
}
