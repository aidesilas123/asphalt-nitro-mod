package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Wr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1453Wr implements InterfaceC0934Bs {
    public static byte[] A07;
    public static String[] A08 = {"S6y5l6jxI9", "6mnEH66ZFffSlH4yeHJS8qNG", "YOAMbMDgHDJdJlquETda64yXe2Dsnigk", "hsyrHKVntalAWTsGKMDD", "vPfGZ", "fU8euoLNwl", "f8hQ6WKdo4yu3", "0USUeFTSnT76dGHmDwgcSkrJJgtZvyOb"};
    public int A00;
    public int A01;
    public long A02;
    public InterfaceC0935Bu A03;
    public final byte[] A06 = new byte[8];
    public final ArrayDeque<C0933Br> A05 = new ArrayDeque<>();
    public final C0937Bz A04 = new C0937Bz();

    static {
        A05();
    }

    private double A00(InterfaceC0921Bb interfaceC0921Bb, int i) throws InterruptedException, IOException {
        return i == 4 ? Float.intBitsToFloat((int) r1) : Double.longBitsToDouble(A02(interfaceC0921Bb, i));
    }

    private long A01(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        interfaceC0921Bb.AEm();
        while (true) {
            interfaceC0921Bb.ADl(this.A06, 0, 4);
            int iA00 = C0937Bz.A00(this.A06[0]);
            if (iA00 != -1 && iA00 <= 4) {
                int iA01 = (int) C0937Bz.A01(this.A06, iA00, false);
                if (this.A03.A8v(iA01)) {
                    interfaceC0921Bb.AFe(iA00);
                    return iA01;
                }
            }
            interfaceC0921Bb.AFe(1);
        }
    }

    private long A02(InterfaceC0921Bb interfaceC0921Bb, int i) throws InterruptedException, IOException {
        interfaceC0921Bb.readFully(this.A06, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | ((long) (this.A06[i2] & 255));
        }
        return j;
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 40);
        }
        return new String(bArrCopyOfRange);
    }

    private String A04(InterfaceC0921Bb interfaceC0921Bb, int i) throws InterruptedException, IOException {
        if (i == 0) {
            return A03(0, 0, 103);
        }
        byte[] bArr = new byte[i];
        interfaceC0921Bb.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new String(bArr, 0, i);
    }

    public static void A05() {
        A07 = new byte[]{124, -95, -87, -108, -97, -100, -105, 83, -104, -97, -104, -96, -104, -95, -89, 83, -89, -84, -93, -104, 83, -100, -63, -55, -76, -65, -68, -73, 115, -71, -65, -62, -76, -57, 115, -58, -68, -51, -72, -115, 115, -27, 10, Ascii.DC2, -3, 8, 5, 0, -68, 5, 10, Ascii.DLE, 1, 3, 1, Ascii.SO, -68, Ascii.SI, 5, Ascii.SYN, 1, -42, -68, -127, -94, -96, -105, -100, -107, 78, -109, -102, -109, -101, -109, -100, -94, 78, -95, -105, -88, -109, 104, 78};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0934Bs
    public final void A8f(InterfaceC0935Bu interfaceC0935Bu) {
        this.A03 = interfaceC0935Bu;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0934Bs
    public final boolean AEB(InterfaceC0921Bb interfaceC0921Bb) throws InterruptedException, IOException {
        HI.A04(this.A03 != null);
        while (true) {
            if (!this.A05.isEmpty()) {
                long jA7a = interfaceC0921Bb.A7a();
                C0933Br c0933BrPeek = this.A05.peek();
                if (A08[4].length() == 19) {
                    throw new RuntimeException();
                }
                A08[1] = "iTM85rd";
                if (jA7a >= c0933BrPeek.A01) {
                    this.A03.A5S(this.A05.pop().A00);
                    return true;
                }
            }
            if (this.A01 == 0) {
                long jA05 = this.A04.A05(interfaceC0921Bb, true, false, 4);
                if (jA05 == -2) {
                    jA05 = A01(interfaceC0921Bb);
                }
                if (jA05 == -1) {
                    return false;
                }
                this.A00 = (int) jA05;
                this.A01 = 1;
            }
            if (this.A01 == 1) {
                this.A02 = this.A04.A05(interfaceC0921Bb, false, true, 8);
                this.A01 = 2;
            }
            int iA6l = this.A03.A6l(this.A00);
            switch (iA6l) {
                case 0:
                    interfaceC0921Bb.AFe((int) this.A02);
                    this.A01 = 0;
                    break;
                case 1:
                    long jA7a2 = interfaceC0921Bb.A7a();
                    this.A05.push(new C0933Br(this.A00, jA7a2 + this.A02));
                    this.A03.AFj(this.A00, jA7a2, this.A02);
                    this.A01 = 0;
                    return true;
                case 2:
                    long j = this.A02;
                    if (j > 8) {
                        throw new C08729d(A03(41, 22, 116) + this.A02);
                    }
                    this.A03.A8j(this.A00, A02(interfaceC0921Bb, (int) j));
                    this.A01 = 0;
                    return true;
                case 3:
                    long j2 = this.A02;
                    if (j2 > 2147483647L) {
                        throw new C08729d(A03(63, 21, 6) + this.A02);
                    }
                    this.A03.AFr(this.A00, A04(interfaceC0921Bb, (int) j2));
                    this.A01 = 0;
                    return true;
                case 4:
                    this.A03.A3y(this.A00, (int) this.A02, interfaceC0921Bb);
                    if (A08[7].charAt(2) != 'S') {
                        A08[2] = "x8X2xTnJq9Kheln0ABdW7PO8kghsREvE";
                        this.A01 = 0;
                        return true;
                    }
                    A08[4] = "mGqeeb15RRoJ11oGs7LhfnjQvY";
                    this.A01 = 0;
                    return true;
                case 5:
                    long j3 = this.A02;
                    if (j3 != 4 && j3 != 8) {
                        throw new C08729d(A03(21, 20, 43) + this.A02);
                    }
                    this.A03.A5f(this.A00, A00(interfaceC0921Bb, (int) j3));
                    this.A01 = 0;
                    return true;
                default:
                    throw new C08729d(A03(0, 21, 11) + iA6l);
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0934Bs
    public final void reset() {
        this.A01 = 0;
        this.A05.clear();
        this.A04.A06();
    }
}
