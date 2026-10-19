package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.exoplayer2.thirdparty.source.TrackGroupArray;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class BW implements InterfaceC1419Vg, InterfaceC1420Vh {
    public static String[] A06 = {"ZtwyXb21lqsDJdKT2ajh9JxAXgW69QuB", "FrcJuXyaSLrnc8pAXv2TAxnFyZgF4qHK", "0iGJizGlWH9", "qhteMkWWDojgH5n0mIn7zojGTGtfRfRL", "S4vRLIoihFPQ", "xoDrhUfozcoi1lbYtymgci4hovtTAG3t", "yhmtadr4WKeMx7Xbvtz69UkymvwaYHjB", "iiLQKF6aVsd0mv8Gzt0Boeru5TAZQ446"};
    public long A00;
    public long A01;
    public long A02;
    public InterfaceC1420Vh A03;
    public C1425Vm[] A04 = new C1425Vm[0];
    public final InterfaceC1419Vg A05;

    public BW(InterfaceC1419Vg interfaceC1419Vg, boolean z, long j, long j2) {
        this.A05 = interfaceC1419Vg;
        this.A02 = z ? j : C.TIME_UNSET;
        this.A01 = j;
        this.A00 = j2;
    }

    private C08909v A00(long j, C08909v c08909v) {
        long jA0E = C1078Hx.A0E(c08909v.A01, 0L, j - this.A01);
        long j2 = c08909v.A00;
        long j3 = this.A00;
        long jA0E2 = C1078Hx.A0E(j2, 0L, j3 == Long.MIN_VALUE ? Long.MAX_VALUE : j3 - j);
        return (jA0E == c08909v.A01 && jA0E2 == c08909v.A00) ? c08909v : new C08909v(jA0E, jA0E2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0999Eu
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final void AAx(InterfaceC1419Vg interfaceC1419Vg) {
        this.A03.AAx(this);
    }

    public static boolean A02(long j, GO[] goArr) {
        if (j != 0) {
            for (GO go : goArr) {
                if (go != null && !C1055Ha.A09(go.A7m().A0O)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean A03() {
        return this.A02 != C.TIME_UNSET;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final boolean A4Q(long j) {
        return this.A05.A4Q(j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void A55(long j, boolean z) {
        this.A05.A55(j, z);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long A5s(long j, C08909v c08909v) {
        long j2 = this.A01;
        if (j == j2) {
            return j2;
        }
        return this.A05.A5s(j, A00(j, c08909v));
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long A68() {
        long jA68 = this.A05.A68();
        if (jA68 != Long.MIN_VALUE) {
            long j = this.A00;
            if (j != Long.MIN_VALUE) {
                if (A06[2].length() == 17) {
                    throw new RuntimeException();
                }
                A06[5] = "DtDan6JMsc2D9dL8KrRs9GVt0cLu7T4O";
                if (jA68 >= j) {
                }
            }
            return jA68;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long A7M() {
        long jA7M = this.A05.A7M();
        if (jA7M != Long.MIN_VALUE) {
            long j = this.A00;
            if (j == Long.MIN_VALUE || jA7M < j) {
                return jA7M;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final TrackGroupArray A82() {
        return this.A05.A82();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void AA3() throws IOException {
        this.A05.AA3();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1420Vh
    public final void ACW(InterfaceC1419Vg interfaceC1419Vg) {
        this.A03.ACW(this);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void ADu(InterfaceC1420Vh interfaceC1420Vh, long j) {
        this.A03 = interfaceC1420Vh;
        this.A05.ADu(this, j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final long AED() {
        if (A03()) {
            long j = this.A02;
            if (A06[4].length() != 12) {
                throw new RuntimeException();
            }
            A06[6] = "LhyfL76jA11YYofpKqTom8Rw5oMGbfG9";
            this.A02 = C.TIME_UNSET;
            long jAED = AED();
            return jAED != C.TIME_UNSET ? jAED : j;
        }
        long jAED2 = this.A05.AED();
        if (jAED2 == C.TIME_UNSET) {
            return C.TIME_UNSET;
        }
        boolean z = true;
        HI.A04(jAED2 >= this.A01);
        long j2 = this.A00;
        if (j2 != Long.MIN_VALUE && jAED2 > j2) {
            z = false;
        }
        HI.A04(z);
        return jAED2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    public final void AEK(long j) {
        this.A05.AEK(j);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0050  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long AF0(long r10) {
        /*
            r9 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r9.A02 = r0
            com.facebook.ads.redexgen.X.Vm[] r3 = r9.A04
            int r2 = r3.length
            r8 = 0
            r1 = 0
        Lc:
            if (r1 >= r2) goto L18
            r0 = r3[r1]
            if (r0 == 0) goto L15
            r0.A00()
        L15:
            int r1 = r1 + 1
            goto Lc
        L18:
            com.facebook.ads.redexgen.X.Vg r0 = r9.A05
            long r6 = r0.AF0(r10)
            int r0 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1))
            if (r0 == 0) goto L50
            long r1 = r9.A01
            int r0 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r0 < 0) goto L51
            long r4 = r9.A00
            r1 = -9223372036854775808
            int r0 = (r4 > r1 ? 1 : (r4 == r1 ? 0 : -1))
            if (r0 == 0) goto L50
            int r3 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.BW.A06
            r0 = 0
            r1 = r1[r0]
            r0 = 28
            char r1 = r1.charAt(r0)
            r0 = 57
            if (r1 == r0) goto L47
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L47:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.BW.A06
            java.lang.String r1 = "Q"
            r0 = 2
            r2[r0] = r1
            if (r3 > 0) goto L51
        L50:
            r8 = 1
        L51:
            com.facebook.ads.redexgen.X.HI.A04(r8)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BW.AF0(long):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e  */
    @Override // com.facebook.ads.redexgen.X.InterfaceC1419Vg
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long AF1(com.facebook.ads.redexgen.X.GO[] r16, boolean[] r17, com.facebook.ads.redexgen.X.InterfaceC0998Et[] r18, boolean[] r19, long r20) {
        /*
            r15 = this;
            r4 = r18
            int r0 = r4.length
            com.facebook.ads.redexgen.X.Vm[] r0 = new com.facebook.ads.redexgen.X.C1425Vm[r0]
            r15.A04 = r0
            int r0 = r4.length
            com.facebook.ads.redexgen.X.Et[] r11 = new com.facebook.ads.redexgen.X.InterfaceC0998Et[r0]
            r2 = 0
        Lb:
            int r0 = r4.length
            r3 = 0
            if (r2 >= r0) goto L20
            com.facebook.ads.redexgen.X.Vm[] r1 = r15.A04
            r0 = r4[r2]
            com.facebook.ads.redexgen.X.Vm r0 = (com.facebook.ads.redexgen.X.C1425Vm) r0
            r1[r2] = r0
            if (r0 == 0) goto L1b
            com.facebook.ads.redexgen.X.Et r3 = r0.A01
        L1b:
            r11[r2] = r3
            int r2 = r2 + 1
            goto Lb
        L20:
            com.facebook.ads.redexgen.X.Vg r8 = r15.A05
            r9 = r16
            r10 = r17
            r12 = r19
            r13 = r20
            long r7 = r8.AF1(r9, r10, r11, r12, r13)
            boolean r0 = r15.A03()
            if (r0 == 0) goto L8e
            long r0 = r15.A01
            int r2 = (r13 > r0 ? 1 : (r13 == r0 ? 0 : -1))
            if (r2 != 0) goto L8e
            boolean r0 = A02(r0, r9)
            if (r0 == 0) goto L8e
            r0 = r7
        L41:
            r15.A02 = r0
            int r0 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1))
            if (r0 == 0) goto L59
            long r1 = r15.A01
            int r0 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 < 0) goto L8c
            long r1 = r15.A00
            r5 = -9223372036854775808
            int r0 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r0 == 0) goto L59
            int r0 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1))
            if (r0 > 0) goto L8c
        L59:
            r0 = 1
        L5a:
            com.facebook.ads.redexgen.X.HI.A04(r0)
            r5 = 0
        L5e:
            int r0 = r4.length
            if (r5 >= r0) goto L94
            r0 = r11[r5]
            if (r0 != 0) goto L72
            com.facebook.ads.redexgen.X.Vm[] r0 = r15.A04
            r0[r5] = r3
        L69:
            com.facebook.ads.redexgen.X.Vm[] r0 = r15.A04
            r0 = r0[r5]
            r4[r5] = r0
            int r5 = r5 + 1
            goto L5e
        L72:
            r0 = r4[r5]
            if (r0 == 0) goto L80
            com.facebook.ads.redexgen.X.Vm[] r0 = r15.A04
            r0 = r0[r5]
            com.facebook.ads.redexgen.X.Et r1 = r0.A01
            r0 = r11[r5]
            if (r1 == r0) goto L69
        L80:
            com.facebook.ads.redexgen.X.Vm[] r2 = r15.A04
            r1 = r11[r5]
            com.facebook.ads.redexgen.X.Vm r0 = new com.facebook.ads.redexgen.X.Vm
            r0.<init>(r15, r1)
            r2[r5] = r0
            goto L69
        L8c:
            r0 = 0
            goto L5a
        L8e:
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            goto L41
        L94:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.BW.AF1(com.facebook.ads.redexgen.X.GO[], boolean[], com.facebook.ads.redexgen.X.Et[], boolean[], long):long");
    }
}
