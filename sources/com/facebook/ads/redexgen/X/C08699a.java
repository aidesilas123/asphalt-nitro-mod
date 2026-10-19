package com.facebook.ads.redexgen.X;

import android.util.Log;
import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.9a, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C08699a {
    public static byte[] A0F;
    public long A00;
    public C08699a A01;
    public C08709b A02;
    public TrackGroupArray A03;
    public GS A04;
    public boolean A05;
    public boolean A06;
    public GS A07;
    public final InterfaceC1419Vg A08;
    public final Object A09;
    public final InterfaceC0998Et[] A0A;
    public final boolean[] A0B;
    public final EY A0C;
    public final GR A0D;
    public final InterfaceC08879s[] A0E;

    static {
        A01();
    }

    public C08699a(InterfaceC08879s[] interfaceC08879sArr, long j, GR gr, GU gu, EY ey, Object obj, C08709b c08709b) {
        this.A0E = interfaceC08879sArr;
        this.A00 = j - c08709b.A03;
        this.A0D = gr;
        this.A0C = ey;
        this.A09 = HI.A01(obj);
        this.A02 = c08709b;
        this.A0A = new InterfaceC0998Et[interfaceC08879sArr.length];
        this.A0B = new boolean[interfaceC08879sArr.length];
        InterfaceC1419Vg interfaceC1419VgA4g = ey.A4g(c08709b.A04, gu);
        this.A08 = c08709b.A02 != Long.MIN_VALUE ? new BW(interfaceC1419VgA4g, true, 0L, c08709b.A02) : interfaceC1419VgA4g;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0F, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 30);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A0F = new byte[]{79, 103, 102, 107, 99, 82, 103, 112, 107, 109, 102, 74, 109, 110, 102, 103, 112, 81, 100, 115, 104, 110, 101, 33, 115, 100, 109, 100, 96, 114, 100, 33, 103, 96, 104, 109, 100, 101, 47};
    }

    private void A02(GS gs) {
        for (int i = 0; i < gs.A00; i++) {
            boolean zA00 = gs.A00(i);
            GO goA00 = gs.A01.A00(i);
            if (zA00 && goA00 != null) {
                goA00.A5P();
            }
        }
    }

    private void A03(GS gs) {
        GS gs2 = this.A07;
        this.A07 = gs;
        if (gs != null) {
            A02(gs);
        }
    }

    private void A04(InterfaceC0998Et[] interfaceC0998EtArr) {
        int i = 0;
        while (true) {
            InterfaceC08879s[] interfaceC08879sArr = this.A0E;
            if (i >= interfaceC08879sArr.length) {
                return;
            }
            if (interfaceC08879sArr[i].A83() == 5 && this.A04.A00(i)) {
                interfaceC0998EtArr[i] = new C1424Vl();
            }
            i++;
        }
    }

    private void A05(InterfaceC0998Et[] interfaceC0998EtArr) {
        int i = 0;
        while (true) {
            InterfaceC08879s[] interfaceC08879sArr = this.A0E;
            if (i >= interfaceC08879sArr.length) {
                return;
            }
            if (interfaceC08879sArr[i].A83() == 5) {
                interfaceC0998EtArr[i] = null;
            }
            i++;
        }
    }

    public final long A06() {
        if (this.A06) {
            return this.A08.A7M();
        }
        return 0L;
    }

    public final long A07() {
        return this.A00;
    }

    public final long A08(long j) {
        return j - A07();
    }

    public final long A09(long j) {
        return A07() + j;
    }

    public final long A0A(long j, boolean z) {
        return A0B(j, z, new boolean[this.A0E.length]);
    }

    public final long A0B(long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = false;
            if (i >= this.A04.A00) {
                break;
            }
            boolean[] zArr2 = this.A0B;
            if (!z && this.A04.A02(this.A07, i)) {
                z2 = true;
            }
            zArr2[i] = z2;
            i++;
        }
        A05(this.A0A);
        A03(this.A04);
        GP gp = this.A04.A01;
        long jAF1 = this.A08.AF1(gp.A01(), this.A0B, this.A0A, zArr, j);
        A04(this.A0A);
        this.A05 = false;
        int i2 = 0;
        while (true) {
            InterfaceC0998Et[] interfaceC0998EtArr = this.A0A;
            if (i2 >= interfaceC0998EtArr.length) {
                return jAF1;
            }
            if (interfaceC0998EtArr[i2] != null) {
                HI.A04(this.A04.A00(i2));
                if (this.A0E[i2].A83() != 5) {
                    this.A05 = true;
                }
            } else {
                HI.A04(gp.A00(i2) == null);
            }
            i2++;
        }
    }

    public final long A0C(boolean z) {
        if (!this.A06) {
            return this.A02.A03;
        }
        long jA68 = this.A08.A68();
        return (jA68 == Long.MIN_VALUE && z) ? this.A02.A01 : jA68;
    }

    public final void A0D() {
        A03(null);
        try {
            if (this.A02.A02 != Long.MIN_VALUE) {
                this.A0C.AET(((BW) this.A08).A05);
            } else {
                this.A0C.AET(this.A08);
            }
        } catch (RuntimeException e2) {
            Log.e(A00(0, 17, 28), A00(17, 22, 31), e2);
        }
    }

    public final void A0E(float f2) throws C9K {
        this.A06 = true;
        this.A03 = this.A08.A82();
        A0I(f2);
        long jA0A = A0A(this.A02.A03, false);
        this.A00 += this.A02.A03 - jA0A;
        this.A02 = this.A02.A01(jA0A);
    }

    public final void A0F(long j) {
        this.A08.A4Q(A08(j));
    }

    public final void A0G(long j) {
        if (this.A06) {
            this.A08.AEK(A08(j));
        }
    }

    public final boolean A0H() {
        return this.A06 && (!this.A05 || this.A08.A68() == Long.MIN_VALUE);
    }

    public final boolean A0I(float f2) throws C9K {
        GS gsA0T = this.A0D.A0T(this.A0E, this.A03);
        if (gsA0T.A01(this.A07)) {
            return false;
        }
        this.A04 = gsA0T;
        for (GO go : gsA0T.A01.A01()) {
            if (go != null) {
                go.ACP(f2);
            }
        }
        return true;
    }
}
