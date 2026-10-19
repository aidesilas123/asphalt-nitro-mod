package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.lang.reflect.Constructor;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class X3 implements InterfaceC0923Bd {
    public static byte[] A06;
    public static final Constructor<? extends InterfaceC0920Ba> A07;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public int A05 = 1;

    static {
        A01();
        Constructor<? extends InterfaceC0920Ba> constructor = null;
        try {
            constructor = Class.forName(A00(74, 59, 61)).asSubclass(InterfaceC0920Ba.class).getConstructor(new Class[0]);
        } catch (ClassNotFoundException unused) {
        } catch (Exception e2) {
            throw new RuntimeException(A00(0, 34, 105), e2);
        }
        A07 = constructor;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 120);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{38, 83, 83, 80, 83, 1, 74, 79, 84, 85, 66, 79, 85, 74, 66, 85, 74, 79, 72, 1, 39, 45, 34, 36, 1, 70, 89, 85, 70, 79, 84, 74, 80, 79, 42, 67, 58, 77, 69, 58, 56, 73, 58, 57, -11, 58, 71, 71, 68, 71, -11, 56, 71, 58, 54, 73, 62, 67, 60, -11, Ascii.ESC, 33, Ascii.SYN, Ascii.CAN, -11, 58, 77, 73, 71, 54, 56, 73, 68, 71, Ascii.CAN, 36, 34, -29, Ascii.ESC, Ascii.SYN, Ascii.CAN, Ascii.SUB, Ascii.ETB, 36, 36, 32, -29, Ascii.SYN, Ascii.EM, 40, -29, Ascii.RS, 35, 41, Ascii.SUB, 39, 35, Ascii.SYN, 33, -29, Ascii.SUB, 45, 36, 37, 33, Ascii.SYN, 46, Ascii.SUB, 39, -25, -29, Ascii.SUB, 45, 41, -29, Ascii.ESC, 33, Ascii.SYN, Ascii.CAN, -29, -5, 33, Ascii.SYN, Ascii.CAN, -6, 45, 41, 39, Ascii.SYN, Ascii.CAN, 41, 36, 39};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0923Bd
    public final synchronized InterfaceC0920Ba[] A4Y() {
        InterfaceC0920Ba[] interfaceC0920BaArr;
        Constructor<? extends InterfaceC0920Ba> constructor = A07;
        interfaceC0920BaArr = new InterfaceC0920Ba[constructor == null ? 12 : 13];
        interfaceC0920BaArr[0] = new C1450Wo(this.A01);
        interfaceC0920BaArr[1] = new C1440We(this.A00);
        interfaceC0920BaArr[2] = new C1438Wc(this.A03);
        interfaceC0920BaArr[3] = new C1447Wl(this.A02);
        interfaceC0920BaArr[4] = new WO();
        interfaceC0920BaArr[5] = new WR();
        interfaceC0920BaArr[6] = new W5(this.A05, this.A04);
        interfaceC0920BaArr[7] = new C1457Wv();
        interfaceC0920BaArr[8] = new WW();
        interfaceC0920BaArr[9] = new WB();
        interfaceC0920BaArr[10] = new W3();
        interfaceC0920BaArr[11] = new C1460Wy();
        if (constructor != null) {
            try {
                interfaceC0920BaArr[12] = constructor.newInstance(new Object[0]);
            } catch (Exception e2) {
                throw new IllegalStateException(A00(34, 40, 93), e2);
            }
        }
        return interfaceC0920BaArr;
    }
}
