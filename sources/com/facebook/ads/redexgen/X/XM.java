package com.facebook.ads.redexgen.X;

import android.os.SystemClock;
import android.util.Log;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class XM implements InterfaceC0894Aa {
    public static byte[] A01;
    public static String[] A02 = {"uFnK", "23brwyJGPu3ZknDoMNdw3hVXVLFEULQy", "FtMR8ROvDO4Zz8SuhvbrIDHAZ1hbcqSx", "4tDbtxEkY45WyXaQwFKWRvOHK17MthWz", "P3L0", "jQPyzSgXTRUrKPul", "L4bq6z2eevSU7Qg95t0o6YCr4fHdh5", "Io3idew6HPzrUVEIzO8xEfp6xkmYSMtW"};
    public final /* synthetic */ XL A00;

    static {
        A01();
    }

    public XM(XL xl) {
        this.A00 = xl;
    }

    public /* synthetic */ XM(XL xl, C0897Ad c0897Ad) {
        this(xl);
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A02[5].length() == 27) {
                throw new RuntimeException();
            }
            A02[5] = "3SKjhf7gYf6c2NzhB";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 109);
            i4++;
        }
    }

    public static void A01() {
        A01 = new byte[]{109, 97, 92, 104, 121, 116, 114, 73, 111, 124, 126, 118, Ascii.DC2, 60, 53, 52, 41, 50, 53, 60, 123, 50, 54, 43, 52, 40, 40, 50, 57, 55, 34, 123, 55, 58, 41, 60, 62, 123, 58, 46, 63, 50, 52, 123, 55, 58, 47, 62, 53, 56, 34, 97, 123, 35, 0, 5, 2, Ascii.EM, Ascii.US, 5, 3, 80, 17, 5, Ascii.DC4, Ascii.EM, Ascii.US, 80, 4, Ascii.EM, Ascii.GS, Ascii.NAK, 3, 4, 17, Ascii.GS, 0, 80, 88, Ascii.SYN, 2, 17, Ascii.GS, Ascii.NAK, 80, 0, Ascii.US, 3, Ascii.EM, 4, Ascii.EM, Ascii.US, Ascii.RS, 80, Ascii.GS, Ascii.EM, 3, Ascii.GS, 17, 4, 19, Ascii.CAN, 89, 74, 80, 79, 108, 105, 110, 117, 115, 105, 111, 60, 125, 105, 120, 117, 115, 60, 104, 117, 113, 121, 111, 104, 125, 113, 108, 60, 52, 111, 101, 111, 104, 121, 113, 60, Ascii.DEL, 112, 115, Ascii.DEL, 119, 60, 113, 117, 111, 113, 125, 104, Ascii.DEL, 116, 53, 38, 60};
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0894Aa
    public final void ABl(long j) {
        Log.w(A00(2, 10, 112), A00(12, 41, 54) + j);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0894Aa
    public final void ACV(long j, long j2, long j3, long j4) {
        StringBuilder sbAppend = new StringBuilder().append(A00(53, 52, 29)).append(j);
        String strA00 = A00(0, 2, 44);
        String string = sbAppend.append(strA00).append(j2).append(strA00).append(j3).append(strA00).append(j4).append(strA00).append(this.A00.A03()).append(strA00).append(this.A00.A04()).toString();
        if (XL.A0q) {
            throw new C0900Ag(string, null);
        }
        Log.w(A00(2, 10, 112), string);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0894Aa
    public final void AD7(long j, long j2, long j3, long j4) {
        StringBuilder sbAppend = new StringBuilder().append(A00(105, 50, 113)).append(j);
        String strA00 = A00(0, 2, 44);
        String string = sbAppend.append(strA00).append(j2).append(strA00).append(j3).append(strA00).append(j4).append(strA00).append(this.A00.A03()).append(strA00).append(this.A00.A04()).toString();
        if (XL.A0q) {
            throw new C0900Ag(string, null);
        }
        String[] strArr = A02;
        if (strArr[4].length() != strArr[0].length()) {
            throw new RuntimeException();
        }
        A02[3] = "q4b4TTgkvPPQBYTsQFxk23ASltXkXf65";
        Log.w(A00(2, 10, 112), string);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC0894Aa
    public final void ADG(int i, long j) {
        if (this.A00.A0R != null) {
            this.A00.A0R.ADH(i, j, SystemClock.elapsedRealtime() - this.A00.A0E);
        }
    }
}
