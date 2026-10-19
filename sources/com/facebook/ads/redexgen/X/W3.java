package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class W3 implements InterfaceC0920Ba {
    public static byte[] A05;
    public static String[] A06 = {"4UYaWsXN1cGpTlRGsO1EVWVYv3mJMVWU", "hbK8JAe0mxfaYRX1PJWZwY", "A0tXjRJ", "osk77A0r9", "0YYQ7Ec", "0ahCLR5uyRlwKx93emwBc8GJDT750HRT", "YIO", "F1mMZvBQ8EiEftVGCLgPL0zcj9avMacR"};
    public static final InterfaceC0923Bd A07;
    public int A00;
    public int A01;
    public InterfaceC0922Bc A02;
    public InterfaceC0930Bm A03;
    public W2 A04;

    static {
        A01();
        A07 = new W4();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A05, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 98);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A05 = new byte[]{53, 78, 83, 85, 80, 80, 79, 82, 84, 69, 68, 0, 79, 82, 0, 85, 78, 82, 69, 67, 79, 71, 78, 73, 90, 69, 68, 0, 87, 65, 86, 0, 72, 69, 65, 68, 69, 82, Ascii.SO, 52, 72, 55, 60, 66, 2, 69, 52, 74};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void A8e(InterfaceC0922Bc interfaceC0922Bc) {
        this.A02 = interfaceC0922Bc;
        this.A03 = interfaceC0922Bc.AFx(0, 1);
        this.A04 = null;
        interfaceC0922Bc.A5T();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final int AE9(InterfaceC0921Bb interfaceC0921Bb, C0925Bh c0925Bh) throws InterruptedException, IOException {
        if (this.A04 == null) {
            W2 w2A00 = C0955Cx.A00(interfaceC0921Bb);
            this.A04 = w2A00;
            if (w2A00 == null) {
                throw new C08729d(A00(0, 39, 126));
            }
            this.A03.A5j(Format.A06(null, A00(39, 9, 113), null, w2A00.A00(), 32768, this.A04.A03(), this.A04.A04(), this.A04.A02(), null, null, 0, null));
            this.A00 = this.A04.A01();
        }
        W2 w2 = this.A04;
        if (A06[0].charAt(24) != 'v') {
            throw new RuntimeException();
        }
        String[] strArr = A06;
        strArr[6] = "XBd";
        strArr[3] = "hS3DTCCH9";
        if (!w2.A07()) {
            C0955Cx.A03(interfaceC0921Bb, this.A04);
            this.A02.AEx(this.A04);
        }
        int iAEq = this.A03.AEq(interfaceC0921Bb, 32768 - this.A01, true);
        if (iAEq != -1) {
            this.A01 += iAEq;
        }
        int i = this.A01 / this.A00;
        if (i > 0) {
            long jA05 = this.A04.A05(interfaceC0921Bb.A7a() - ((long) this.A01));
            int i2 = this.A00 * i;
            int i3 = this.A01 - i2;
            this.A01 = i3;
            this.A03.AEs(jA05, 1, i2, i3, null);
        }
        return iAEq == -1 ? -1 : 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final void AEw(long j, long j2) {
        this.A01 = 0;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0920Ba
    public final boolean AFg(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        return C0955Cx.A00(interfaceC0921Bb) != null;
    }
}
