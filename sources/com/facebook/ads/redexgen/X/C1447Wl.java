package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.facebook.ads.internal.exoplayer2.thirdparty.metadata.Metadata;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1447Wl implements InterfaceC0920Ba {
    public static byte[] A0E;
    public static String[] A0F = {"FKupPKXcsIkycQ3l5ptAH5wluEqc6YoI", "RW", "ogqWAOna8QODFLIqijT7vOYnhApvYyU7", "UAOUtvFDqNmRNLgZ1GU6DrNnbPesxUgh", "z4WGtVpeHmr0jWMfeyoB2cmDzFByDj9w", "gdGWUcFUabEj8aTRXEAi5amp", "tmhvTid", "WDNv6R6VbALBmvSk6DCmHF7NFi0i9puO"};
    public static final InterfaceC0923Bd A0G;
    public static final int A0H;
    public static final int A0I;
    public static final int A0J;
    public int A00;
    public int A01;
    public long A02;
    public long A03;
    public InterfaceC0922Bc A04;
    public InterfaceC0930Bm A05;
    public InterfaceC1448Wm A06;
    public Metadata A07;
    public final int A08;
    public final long A09;
    public final C0924Be A0A;
    public final Bf A0B;
    public final Bg A0C;
    public final C1062Hh A0D;

    static {
        A05();
        A0G = new C1449Wn();
        A0J = C1078Hx.A08(A04(32, 4, 37));
        A0H = C1078Hx.A08(A04(0, 4, 58));
        A0I = C1078Hx.A08(A04(28, 4, 24));
    }

    public C1447Wl() {
        this(0);
    }

    public C1447Wl(int i) {
        this(i, C.TIME_UNSET);
    }

    public C1447Wl(int i, long j) {
        this.A08 = i;
        this.A09 = j;
        this.A0D = new C1062Hh(10);
        this.A0C = new Bg();
        this.A0A = new C0924Be();
        this.A02 = C.TIME_UNSET;
        this.A0B = new Bf();
    }

    private int A00(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        if (this.A00 == 0) {
            interfaceC0921Bb.AEm();
            if (!interfaceC0921Bb.ADm(this.A0D.A00, 0, 4, true)) {
                return -1;
            }
            this.A0D.A0Y(0);
            int iA08 = this.A0D.A08();
            if (!A06(iA08, this.A01) || Bg.A00(iA08) == -1) {
                interfaceC0921Bb.AFe(1);
                this.A01 = 0;
                return 0;
            }
            Bg.A04(iA08, this.A0C);
            if (this.A02 == C.TIME_UNSET) {
                InterfaceC1448Wm interfaceC1448Wm = this.A06;
                long jA7a = interfaceC0921Bb.A7a();
                if (A0F[0].charAt(7) == '2') {
                    throw new RuntimeException();
                }
                A0F[5] = "uwsYCHPiCgNXlhDD9rc7dT19";
                this.A02 = interfaceC1448Wm.A7z(jA7a);
                if (this.A09 != C.TIME_UNSET) {
                    this.A02 += this.A09 - this.A06.A7z(0L);
                }
            }
            this.A00 = this.A0C.A02;
        }
        int iAEq = this.A05.AEq(interfaceC0921Bb, this.A00, true);
        if (iAEq == -1) {
            return -1;
        }
        int i = this.A00 - iAEq;
        this.A00 = i;
        if (i > 0) {
            return 0;
        }
        this.A05.AEs(this.A02 + ((this.A03 * 1000000) / ((long) this.A0C.A03)), 1, this.A0C.A02, 0, null);
        this.A03 += (long) this.A0C.A04;
        this.A00 = 0;
        return 0;
    }

    public static int A01(C1062Hh c1062Hh, int i) {
        if (c1062Hh.A07() >= i + 4) {
            c1062Hh.A0Y(i);
            int iA08 = c1062Hh.A08();
            String[] strArr = A0F;
            if (strArr[4].charAt(21) == strArr[3].charAt(21)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0F;
            strArr2[4] = "RZ9mFeyNnV0sPgPCsPCuasZg37Uzdp17";
            strArr2[3] = "fK9CAyTZYj28knSP6u8xHPIK1qnXYcxa";
            if (iA08 == A0J || iA08 == A0H) {
                return iA08;
            }
        }
        if (c1062Hh.A07() < 40) {
            return 0;
        }
        c1062Hh.A0Y(36);
        int iA082 = c1062Hh.A08();
        int i2 = A0I;
        if (iA082 == i2) {
            return i2;
        }
        return 0;
    }

    private DJ A02(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        interfaceC0921Bb.ADl(this.A0D.A00, 0, 4);
        this.A0D.A0Y(0);
        Bg.A04(this.A0D.A08(), this.A0C);
        return new DJ(interfaceC0921Bb.A7B(), interfaceC0921Bb.A7a(), this.A0C);
    }

    private InterfaceC1448Wm A03(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        C1062Hh c1062Hh = new C1062Hh(this.A0C.A02);
        interfaceC0921Bb.ADl(c1062Hh.A00, 0, this.A0C.A02);
        int i = 21;
        if ((this.A0C.A05 & 1) != 0) {
            int i2 = this.A0C.A01;
            if (A0F[5].length() != 24) {
                throw new RuntimeException();
            }
            String[] strArr = A0F;
            strArr[6] = "1a7oiXE";
            strArr[1] = "rh";
            if (i2 != 1) {
                i = 36;
            }
        } else if (this.A0C.A01 == 1) {
            i = 13;
        }
        int iA01 = A01(c1062Hh, i);
        if (iA01 != A0J && iA01 != A0H) {
            if (iA01 != A0I) {
                interfaceC0921Bb.AEm();
                return null;
            }
            D3 d3A00 = D3.A00(interfaceC0921Bb.A7B(), interfaceC0921Bb.A7a(), this.A0C, c1062Hh);
            interfaceC0921Bb.AFe(this.A0C.A02);
            return d3A00;
        }
        D2 d2A01 = D2.A01(interfaceC0921Bb.A7B(), interfaceC0921Bb.A7a(), this.A0C, c1062Hh);
        if (d2A01 != null && !this.A0A.A03()) {
            interfaceC0921Bb.AEm();
            interfaceC0921Bb.A3S(i + 141);
            interfaceC0921Bb.ADl(this.A0D.A00, 0, 3);
            this.A0D.A0Y(0);
            this.A0A.A04(this.A0D.A0G());
        }
        interfaceC0921Bb.AFe(this.A0C.A02);
        return (d2A01 == null || d2A01.A95() || iA01 != A0H) ? d2A01 : A02(interfaceC0921Bb);
    }

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0E, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 31);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A05() {
        A0E = new byte[]{-94, -57, -65, -56, -110, -92, -96, -79, -94, -89, -92, -93, 95, -77, -82, -82, 95, -84, -96, -83, -72, 95, -95, -72, -77, -92, -78, 109, -115, 121, -119, -128, -100, -83, -78, -85};
    }

    public static boolean A06(int i, long j) {
        return ((long) ((-128000) & i)) == ((-128000) & j);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0115  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean A07(com.facebook.ads.redexgen.X.InterfaceC0921Bb r14, boolean r15) throws java.lang.InterruptedException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1447Wl.A07(com.facebook.ads.redexgen.X.Bb, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A04 = interfaceC0922Bc;
        this.A05 = interfaceC0922Bc.AFx(0, 1);
        this.A04.A5T();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        if (this.A01 == 0) {
            try {
                A07(interfaceC0921Bb, false);
            } catch (EOFException unused) {
                return -1;
            }
        }
        if (this.A06 == null) {
            InterfaceC1448Wm interfaceC1448WmA03 = A03(interfaceC0921Bb);
            this.A06 = interfaceC1448WmA03;
            if (interfaceC1448WmA03 == null || (!interfaceC1448WmA03.A95() && (this.A08 & 1) != 0)) {
                this.A06 = A02(interfaceC0921Bb);
            }
            this.A04.AEx(this.A06);
            this.A05.A5j(Format.A05(null, this.A0C.A06, null, -1, 4096, this.A0C.A01, this.A0C.A03, -1, this.A0A.A00, this.A0A.A01, null, null, 0, null, (this.A08 & 2) != 0 ? null : this.A07));
        }
        return A00(interfaceC0921Bb);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        this.A01 = 0;
        this.A02 = C.TIME_UNSET;
        this.A03 = 0L;
        this.A00 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        return A07(interfaceC0921Bb, true);
    }
}
