package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.applovin.exoplayer2.common.base.Ascii;
import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class ES {
    public static byte[] A03;
    public static String[] A04 = {"UShKNNFg87kJKFq9zZ4MXrM1TZqBqByP", "bNbNgwYs44UALuoZhh", "UOZFjFwmfZ6Uk9K0z0C", "pvrkJysKsIVU", "ICsDSmeasSqv6BvMkmxncpzNQ0k3b5KN", "yTEFvUo2j", "amPx4bchTjSSxZ8pJApIWlQt7YwmxhXF", "zL4iYMzloDmr1aHfk19k2KMtR5ocnLoy"};
    public InterfaceC0920Ba A00;
    public final InterfaceC0922Bc A01;
    public final InterfaceC0920Ba[] A02;

    static {
        A01();
    }

    public ES(InterfaceC0920Ba[] interfaceC0920BaArr, InterfaceC0922Bc interfaceC0922Bc) {
        this.A02 = interfaceC0920BaArr;
        this.A01 = interfaceC0922Bc;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 47);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        String[] strArr = A04;
        if (strArr[6].charAt(23) != strArr[7].charAt(23)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A04;
        strArr2[2] = "BFR1v4rNBeEaqGbowcf";
        strArr2[5] = "QYASgTnFJ";
        A03 = new byte[]{-52, -61, 6, Ascii.DC2, Ascii.CAN, Ascii.SI, 7, -61, Ascii.NAK, 8, 4, 7, -61, Ascii.ETB, Ascii.VT, 8, -61, Ascii.SYN, Ascii.ETB, Ascii.NAK, 8, 4, Ascii.DLE, -47, -17, Ascii.DLE, Ascii.SI, 6, -63, Ascii.DLE, 7, -63, Ascii.NAK, 9, 6, -63, 2, Ascii.ETB, 2, 10, Ascii.CR, 2, 3, Ascii.CR, 6, -63, 6, Ascii.EM, Ascii.NAK, 19, 2, 4, Ascii.NAK, Ascii.DLE, 19, Ascii.DC4, -63, -55};
    }

    public final InterfaceC0920Ba A02(InterfaceC0921Bb interfaceC0921Bb, Uri uri) throws InterruptedException, IOException {
        InterfaceC0920Ba interfaceC0920Ba = this.A00;
        if (interfaceC0920Ba != null) {
            return interfaceC0920Ba;
        }
        InterfaceC0920Ba[] interfaceC0920BaArr = this.A02;
        int length = interfaceC0920BaArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            InterfaceC0920Ba interfaceC0920Ba2 = interfaceC0920BaArr[i];
            try {
                if (interfaceC0920Ba2.AFg(interfaceC0921Bb)) {
                    this.A00 = interfaceC0920Ba2;
                    interfaceC0921Bb.AEm();
                    break;
                }
                continue;
            } catch (EOFException unused) {
            } catch (Throwable th) {
                interfaceC0921Bb.AEm();
                throw th;
            }
            interfaceC0921Bb.AEm();
            i++;
        }
        InterfaceC0920Ba interfaceC0920Ba3 = this.A00;
        if (interfaceC0920Ba3 == null) {
            throw new C1416Vd(A00(24, 34, 114) + C1078Hx.A0S(this.A02) + A00(0, 24, 116), uri);
        }
        interfaceC0920Ba3.A8e(this.A01);
        return this.A00;
    }

    public final void A03() {
        if (this.A00 != null) {
            this.A00 = null;
        }
    }
}
