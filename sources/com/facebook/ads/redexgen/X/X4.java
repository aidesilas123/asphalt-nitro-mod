package com.facebook.ads.redexgen.X;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class X4 implements InterfaceC0921Bb {
    public static String[] A07 = {"WXHfHzHth2Al5uPNAeAj07mTCizYfL", "Ea4PVszhPWUkUOAzwMvLCDFSUaducjj7", "YmMP3hbiPsyrKpNosY6PcrNT297v1Qrn", "DJcyMwta", "hLB8mG9dKKyMH1LM5ESzC", "Vr0ZnTk4fnCFSbIFCLxfH748g1DMsTn2", "7kDa6eDxYJ9kj6HJXeCECzm6I99XwLPU", "QseCjdkBkHi9C8DCiNRIrV91qCtwuZnL"};
    public int A00;
    public int A01;
    public long A02;
    public final long A04;
    public final InterfaceC1033Gc A05;
    public byte[] A03 = new byte[65536];
    public final byte[] A06 = new byte[4096];

    public X4(InterfaceC1033Gc interfaceC1033Gc, long j, long j2) {
        this.A05 = interfaceC1033Gc;
        this.A02 = j;
        this.A04 = j2;
    }

    private int A00(int i) {
        int iMin = Math.min(this.A00, i);
        A05(iMin);
        return iMin;
    }

    private int A01(byte[] bArr, int i, int i2) {
        int i3 = this.A00;
        if (i3 == 0) {
            return 0;
        }
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.A03, 0, bArr, i, iMin);
        A05(iMin);
        return iMin;
    }

    private int A02(byte[] bArr, int i, int i2, int i3, boolean z) throws InterruptedException, IOException {
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        int i4 = this.A05.read(bArr, i + i3, i2 - i3);
        if (i4 != -1) {
            return i3 + i4;
        }
        if (i3 == 0 && z) {
            return -1;
        }
        throw new EOFException();
    }

    private void A03(int i) {
        if (i != -1) {
            this.A02 += (long) i;
        }
    }

    private void A04(int i) {
        int i2 = this.A01 + i;
        byte[] bArr = this.A03;
        if (i2 > bArr.length) {
            this.A03 = Arrays.copyOf(this.A03, C1078Hx.A06(bArr.length * 2, 65536 + i2, 524288 + i2));
        }
    }

    private void A05(int i) {
        int i2 = this.A00 - i;
        this.A00 = i2;
        this.A01 = 0;
        byte[] bArr = this.A03;
        byte[] bArr2 = this.A03;
        if (i2 < bArr2.length - 524288) {
            bArr = new byte[65536 + i2];
        }
        System.arraycopy(bArr2, i, bArr, 0, i2);
        this.A03 = bArr;
    }

    public final boolean A06(int i, boolean z) throws InterruptedException, IOException {
        A04(i);
        int iMin = Math.min(this.A00 - this.A01, i);
        while (iMin < i) {
            iMin = A02(this.A03, this.A01, i, iMin, z);
            if (iMin == -1) {
                return false;
            }
        }
        int i2 = this.A01 + i;
        this.A01 = i2;
        this.A00 = Math.max(this.A00, i2);
        return true;
    }

    public final boolean A07(int i, boolean z) throws InterruptedException, IOException {
        int iA00 = A00(i);
        while (iA00 < i && iA00 != -1) {
            iA00 = A02(this.A06, -iA00, Math.min(i, this.A06.length + iA00), iA00, z);
        }
        A03(iA00);
        return iA00 != -1;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final void A3S(int i) throws InterruptedException, IOException {
        A06(i, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final long A7B() {
        return this.A04;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final long A7V() {
        return this.A02 + ((long) this.A01);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final long A7a() {
        return this.A02;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final void ADl(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        ADm(bArr, i, i2, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final boolean ADm(byte[] bArr, int i, int i2, boolean z) throws InterruptedException, IOException {
        if (!A06(i2, z)) {
            return false;
        }
        System.arraycopy(this.A03, this.A01 - i2, bArr, i, i2);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0051 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056 A[RETURN, SYNTHETIC] */
    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean AEE(byte[] r10, int r11, int r12, boolean r13) throws java.lang.InterruptedException, java.io.IOException {
        /*
            r9 = this;
            r4 = r10
            r5 = r11
            r6 = r12
            int r7 = r9.A01(r4, r5, r6)
        L7:
            r3 = -1
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.X4.A07
            r0 = 5
            r1 = r2[r0]
            r0 = 7
            r2 = r2[r0]
            r0 = 6
            char r1 = r1.charAt(r0)
            char r0 = r2.charAt(r0)
            if (r1 == r0) goto L21
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r0.<init>()
            throw r0
        L21:
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.X4.A07
            java.lang.String r1 = "Jrnjt2kK808bOfAL2dwi4gGQEivMT1gd"
            r0 = 5
            r2[r0] = r1
            java.lang.String r1 = "BeMd7gkFpNMGNNjn1C0ltMDP7X04qF1j"
            r0 = 7
            r2[r0] = r1
            if (r7 >= r6) goto L38
            if (r7 == r3) goto L38
            r3 = r9
            r8 = r13
            int r7 = r3.A02(r4, r5, r6, r7, r8)
            goto L7
        L38:
            r9.A03(r7)
            java.lang.String[] r1 = com.facebook.ads.redexgen.X.X4.A07
            r0 = 3
            r0 = r1[r0]
            int r1 = r0.length()
            r0 = 12
            if (r1 == r0) goto L53
            java.lang.String[] r2 = com.facebook.ads.redexgen.X.X4.A07
            java.lang.String r1 = "kVyK5NlwbVR8i9TPL7EEmQ28yX1F3goU"
            r0 = 6
            r2[r0] = r1
            if (r7 == r3) goto L56
        L51:
            r0 = 1
        L52:
            return r0
        L53:
            if (r7 == r3) goto L56
            goto L51
        L56:
            r0 = 0
            goto L52
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.X4.AEE(byte[], int, int, boolean):boolean");
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final void AEm() {
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final int AFb(int i) throws InterruptedException, IOException {
        int iA00 = A00(i);
        if (iA00 == 0) {
            byte[] bArr = this.A06;
            iA00 = A02(bArr, 0, Math.min(i, bArr.length), 0, true);
        }
        A03(iA00);
        return iA00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final void AFe(int i) throws InterruptedException, IOException {
        A07(i, false);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final int read(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        int iA01 = A01(bArr, i, i2);
        if (iA01 == 0) {
            iA01 = A02(bArr, i, i2, 0, true);
        }
        A03(iA01);
        return iA01;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0921Bb
    public final void readFully(byte[] bArr, int i, int i2) throws InterruptedException, IOException {
        AEE(bArr, i, i2, false);
    }
}
