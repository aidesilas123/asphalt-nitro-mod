package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class VH implements InterfaceC1033Gc {
    public static byte[] A0A;
    public static String[] A0B = {"QvoqMDlujHZGkbfh87JugdjLyzIxT7Wh", "ZZchp3HeTsLmxg3WfZ3Y", "qhagKIv", "Y1FNp0MjJJUWN0FCWTznZ2J9LVjCbw0g", "qdDuvYrChXaUr4tN", "YWBrlCwfH1YxEEmdkJFSbaSmAQF4", "KXNImhaNyDm6MeVCqM70", "pGNt1qWL1myUumzYaBIGkqUD2WTNJwvO"};
    public InterfaceC1033Gc A00;
    public InterfaceC1033Gc A01;
    public InterfaceC1033Gc A02;
    public InterfaceC1033Gc A03;
    public InterfaceC1033Gc A04;
    public InterfaceC1033Gc A05;
    public InterfaceC1033Gc A06;
    public final Context A07;
    public final InterfaceC1033Gc A08;
    public final InterfaceC1053Gy<? super InterfaceC1033Gc> A09;

    static {
        A07();
    }

    public VH(Context context, InterfaceC1053Gy<? super InterfaceC1033Gc> interfaceC1053Gy, InterfaceC1033Gc interfaceC1033Gc) {
        this.A07 = context.getApplicationContext();
        this.A09 = interfaceC1053Gy;
        this.A08 = (InterfaceC1033Gc) HI.A01(interfaceC1033Gc);
    }

    private InterfaceC1033Gc A00() {
        if (this.A00 == null) {
            this.A00 = new VM(this.A07, this.A09);
        }
        return this.A00;
    }

    private InterfaceC1033Gc A01() {
        if (this.A01 == null) {
            this.A01 = new VL(this.A07, this.A09);
        }
        return this.A01;
    }

    private InterfaceC1033Gc A02() {
        if (this.A02 == null) {
            this.A02 = new VK();
        }
        return this.A02;
    }

    private InterfaceC1033Gc A03() {
        if (this.A04 == null) {
            this.A04 = new VD(this.A09);
        }
        return this.A04;
    }

    private InterfaceC1033Gc A04() {
        if (this.A05 == null) {
            this.A05 = new V4(this.A07, this.A09);
        }
        return this.A05;
    }

    private InterfaceC1033Gc A05() {
        if (this.A06 == null) {
            try {
                this.A06 = (InterfaceC1033Gc) Class.forName(A06(141, 60, 110)).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException unused) {
                Log.w(A06(85, 17, 30), A06(15, 70, 22));
            } catch (Exception e2) {
                throw new RuntimeException(A06(102, 34, 22), e2);
            }
            InterfaceC1033Gc interfaceC1033Gc = this.A06;
            String[] strArr = A0B;
            if (strArr[1].length() == strArr[2].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A0B;
            strArr2[6] = "M1stUSKIngTBOPXJSAAv";
            strArr2[4] = "pJ0gFaSQQ06jpnK4";
            if (interfaceC1033Gc == null) {
                this.A06 = this.A08;
            }
        }
        return this.A06;
    }

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0A, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 92);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A0A = new byte[]{Ascii.SYN, 88, 87, 93, 75, 86, 80, 93, 102, 88, 74, 74, 92, 77, Ascii.SYN, Ascii.VT, 62, 62, 47, 39, 58, 62, 35, 36, 45, 106, 62, 37, 106, 58, 38, 43, 51, 106, Ascii.CAN, Ascii.RS, 7, Ascii.SUB, 106, 57, 62, 56, 47, 43, 39, 106, 61, 35, 62, 34, 37, 63, 62, 106, 46, 47, 58, 47, 36, 46, 35, 36, 45, 106, 37, 36, 106, 62, 34, 47, 106, Ascii.CAN, Ascii.RS, 7, Ascii.SUB, 106, 47, 50, 62, 47, 36, 57, 35, 37, 36, 6, 39, 36, 35, 55, 46, 54, 6, 35, 54, 35, 17, 45, 55, 48, 33, 39, Ascii.SI, 56, 56, 37, 56, 106, 35, 36, 57, 62, 43, 36, 62, 35, 43, 62, 35, 36, 45, 106, Ascii.CAN, Ascii.RS, 7, Ascii.SUB, 106, 47, 50, 62, 47, 36, 57, 35, 37, 36, 60, 46, 46, 56, 41, 81, 93, 95, Ascii.FS, 84, 83, 81, 87, 80, 93, 93, 89, Ascii.FS, 83, 86, 65, Ascii.FS, 91, 92, 70, 87, 64, 92, 83, 94, Ascii.FS, 87, 74, 93, 66, 94, 83, 75, 87, 64, 0, Ascii.FS, 87, 74, 70, Ascii.FS, 64, 70, 95, 66, Ascii.FS, 96, 70, 95, 66, 118, 83, 70, 83, 97, 93, 71, 64, 81, 87, 96, 108, 109, 119, 102, 109, 119, 115, 118, 99, 118, 89, 74, 92, 89, 78, 88, 68, 94, 89, 72, 78, 87, 81, 72, 85};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final Uri A85() {
        InterfaceC1033Gc interfaceC1033Gc = this.A03;
        if (interfaceC1033Gc == null) {
            return null;
        }
        return interfaceC1033Gc.A85();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final long ADb(C1037Gg c1037Gg) throws IOException {
        HI.A04(this.A03 == null);
        String scheme = c1037Gg.A04.getScheme();
        if (C1078Hx.A0e(c1037Gg.A04)) {
            if (c1037Gg.A04.getPath().startsWith(A06(0, 15, 101))) {
                InterfaceC1033Gc interfaceC1033GcA00 = A00();
                String[] strArr = A0B;
                if (strArr[1].length() == strArr[2].length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A0B;
                strArr2[1] = "klcz1c4PkgrD18lWpLHv";
                strArr2[2] = "u5g7BFA";
                this.A03 = interfaceC1033GcA00;
            } else {
                this.A03 = A03();
            }
        } else if (A06(136, 5, 1).equals(scheme)) {
            this.A03 = A00();
        } else if (A06(201, 7, 95).equals(scheme)) {
            this.A03 = A01();
        } else if (A06(223, 4, 121).equals(scheme)) {
            this.A03 = A05();
        } else if (A06(208, 4, 75).equals(scheme)) {
            this.A03 = A02();
        } else if (A06(212, 11, 119).equals(scheme)) {
            this.A03 = A04();
        } else {
            this.A03 = this.A08;
        }
        return this.A03.ADb(c1037Gg);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final void close() throws IOException {
        InterfaceC1033Gc interfaceC1033Gc = this.A03;
        if (interfaceC1033Gc != null) {
            try {
                interfaceC1033Gc.close();
            } finally {
                this.A03 = null;
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1033Gc
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return this.A03.read(bArr, i, i2);
    }
}
