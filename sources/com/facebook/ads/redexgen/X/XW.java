package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XW implements C9Z {
    public static byte[] A0A;
    public static String[] A0B = {"QBw2naITCC87BBmeZEHB", "QG9qcoN67OZ9HCiBeCwQ37yZ8k9VzRIx", "huClURZcVSvs210svchTpygB", "SPjUxwmyMxCkovVHB3ukUPObWP0MyL9L", "Qo3gDbJmZiOUOvD4YrLGADsp8gVNY68y", "aCbITSFANaeoynFt6tlPTZT3Ud0BkJzi", "LC42BZreN0Trrj0tndAjNl8pur2kDdxK", "yIqlj0SUGgDzqSotNJk32MbE6gj6YGfF"};
    public int A00;
    public boolean A01;
    public final int A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;
    public final VJ A07;
    public final C1066Hl A08;
    public final boolean A09;

    static {
        A02();
    }

    public XW() {
        this(new VJ(true, 65536));
    }

    @Deprecated
    public XW(VJ vj) {
        this(vj, DefaultLoadControl.DEFAULT_MIN_BUFFER_MS, 50000, 2500, 5000, -1, true);
    }

    @Deprecated
    public XW(VJ vj, int i, int i2, int i3, int i4, int i5, boolean z) {
        this(vj, i, i2, i3, i4, i5, z, null);
    }

    @Deprecated
    public XW(VJ vj, int i, int i2, int i3, int i4, int i5, boolean z, C1066Hl c1066Hl) {
        String strA01 = A01(54, 19, 78);
        String strA012 = A01(21, 1, 70);
        A03(i3, 0, strA01, strA012);
        String strA013 = A01(22, 32, 48);
        A03(i4, 0, strA013, strA012);
        String strA014 = A01(84, 11, 0);
        A03(i, i3, strA014, strA01);
        A03(i, i4, strA014, strA013);
        A03(i2, i, A01(73, 11, 89), strA014);
        this.A07 = vj;
        this.A06 = ((long) i) * 1000;
        this.A05 = ((long) i2) * 1000;
        this.A04 = ((long) i3) * 1000;
        this.A03 = ((long) i4) * 1000;
        this.A02 = i5;
        this.A09 = z;
        this.A08 = c1066Hl;
    }

    private final int A00(XS[] xsArr, GP gp) {
        int iA01 = 0;
        for (int i = 0; i < xsArr.length; i++) {
            if (gp.A00(i) != null) {
                iA01 += C1078Hx.A01(xsArr[i].A83());
            }
        }
        return iA01;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 83);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0A = new byte[]{-97, -30, -32, -19, -19, -18, -13, -97, -31, -28, -97, -21, -28, -14, -14, -97, -13, -25, -32, -19, -97, -55, -27, -8, -23, -23, -24, -11, -55, -14, -11, -45, -17, -28, -4, -27, -28, -26, -18, -60, -23, -9, -24, -11, -43, -24, -27, -8, -23, -23, -24, -11, -48, -10, 3, Ascii.SYN, 7, 7, 6, 19, -25, Ascii.DLE, 19, -15, Ascii.CR, 2, Ascii.SUB, 3, 2, 4, Ascii.FF, -18, Ascii.DC4, Ascii.EM, Ascii.CR, 36, -18, 33, Ascii.DC2, Ascii.DC2, 17, Ascii.RS, -7, Ascii.US, -64, -68, -63, -107, -56, -71, -71, -72, -59, -96, -58};
    }

    public static void A03(int i, int i2, String str, String str2) {
        HI.A05(i >= i2, str + A01(0, 21, 44) + str2);
    }

    private void A04(boolean z) {
        this.A00 = 0;
        C1066Hl c1066Hl = this.A08;
        if (c1066Hl != null && this.A01) {
            c1066Hl.A03(0);
        }
        this.A01 = false;
        if (z) {
            this.A07.A03();
        }
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final VJ A5v() {
        return this.A07;
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final long A60() {
        return 0L;
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void ACg() {
        A04(true);
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void AD4() {
        A04(true);
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void ADD(XS[] xsArr, TrackGroupArray trackGroupArray, GP gp) {
        int iA00 = this.A02;
        if (iA00 == -1) {
            iA00 = A00(xsArr, gp);
        }
        this.A00 = iA00;
        this.A07.A04(iA00);
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final boolean AEo() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final boolean AFX(long j, float f2) {
        boolean z;
        boolean z2 = true;
        boolean z3 = this.A07.A02() >= this.A00;
        boolean z4 = this.A01;
        long jMin = this.A06;
        if (f2 > 1.0f) {
            jMin = Math.min(C1078Hx.A0C(jMin, f2), this.A05);
        }
        if (j < jMin) {
            if (!this.A09 && z3) {
                z2 = false;
            }
            this.A01 = z2;
        } else if (j > this.A05 || z3) {
            this.A01 = false;
        }
        C1066Hl c1066Hl = this.A08;
        if (A0B[0].length() != 20) {
            throw new RuntimeException();
        }
        String[] strArr = A0B;
        strArr[1] = "QKQzs8A5eNnCMvZO6Czn4VC5jQwn3nPR";
        strArr[4] = "QpEe5JzrMZm1KKJ9dYBmwnmG628Fesko";
        if (c1066Hl != null && (z = this.A01) != z4) {
            if (z) {
                c1066Hl.A00(0);
            } else {
                c1066Hl.A03(0);
            }
        }
        return this.A01;
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final boolean AFa(long j, float f2, boolean z) {
        long jA0D = C1078Hx.A0D(j, f2);
        long j2 = z ? this.A03 : this.A04;
        return j2 <= 0 || jA0D >= j2 || (!this.A09 && this.A07.A02() >= this.A00);
    }

    @Override // com.facebook.ads.redexgen.X.C9Z
    public final void onPrepared() {
        A04(false);
    }
}
