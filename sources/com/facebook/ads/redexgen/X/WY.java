package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WY extends CW {
    public static byte[] A02;
    public static String[] A03 = {"8dTWvXK8tch0WiEnFvHb8QUOTjgSOqY9", "GP5XsFGUIcP3F8wb7eo6", "CqCUMDrIKsNfOt03xA9INRdZ8", "ntm6pkiJXJn0b4vYMFRbAtYqalurqDmt", "MKNWZ4ceQqyXKZHhShlPBWdiS", "qmQfSGtBK4Bh2Swsb", "DS4", "jEA"};
    public WZ A00;
    public HU A01;

    static {
        A03();
    }

    private int A00(C1062Hh c1062Hh) {
        int i = (c1062Hh.A00[2] & 255) >> 4;
        switch (i) {
            case 1:
                return PsExtractor.AUDIO_STREAM;
            case 2:
            case 3:
            case 4:
            case 5:
                int i2 = i - 2;
                String[] strArr = A03;
                if (strArr[3].charAt(11) == strArr[0].charAt(11)) {
                    A03[1] = "m7WV3F64xJdvTLT";
                    return 576 << i2;
                }
                String[] strArr2 = A03;
                strArr2[6] = "ZGd";
                strArr2[7] = "V9k";
                return 576 << i2;
            case 6:
            case 7:
                c1062Hh.A0Z(4);
                c1062Hh.A0O();
                String[] strArr3 = A03;
                if (strArr3[3].charAt(11) != strArr3[0].charAt(11)) {
                    throw new RuntimeException();
                }
                String[] strArr4 = A03;
                strArr4[6] = "ycs";
                strArr4[7] = "AJV";
                int iA0E = i == 6 ? c1062Hh.A0E() : c1062Hh.A0I();
                c1062Hh.A0Y(0);
                return iA0E + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 12);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A02 = new byte[]{-97, -77, -94, -89, -83, 109, -92, -86, -97, -95};
    }

    public static boolean A04(C1062Hh c1062Hh) {
        return c1062Hh.A04() >= 5 && c1062Hh.A0E() == 127 && c1062Hh.A0M() == 1179402563;
    }

    public static boolean A05(byte[] bArr) {
        return bArr[0] == -1;
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final long A07(C1062Hh c1062Hh) {
        if (A05(c1062Hh.A00)) {
            return A00(c1062Hh);
        }
        return -1L;
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final void A09(boolean z) {
        super.A09(z);
        if (z) {
            this.A01 = null;
            this.A00 = null;
        }
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final boolean A0A(C1062Hh c1062Hh, long j, CV cv) throws InterruptedException, IOException {
        byte[] bArr = c1062Hh.A00;
        if (this.A01 == null) {
            this.A01 = new HU(bArr, 17);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 9, c1062Hh.A07());
            bArrCopyOfRange[4] = -128;
            cv.A00 = Format.A07(null, A02(0, 10, 50), null, -1, this.A01.A00(), this.A01.A01, this.A01.A06, Collections.singletonList(bArrCopyOfRange), null, 0, null);
            return true;
        }
        if ((bArr[0] & Ascii.DEL) == 3) {
            WZ wz = new WZ(this);
            this.A00 = wz;
            wz.A01(c1062Hh);
            return true;
        }
        if (!A05(bArr)) {
            return true;
        }
        WZ wz2 = this.A00;
        if (A03[5].length() != 17) {
            throw new RuntimeException();
        }
        A03[1] = "qWJSCS9yuHod5mMI2FbA5J9U";
        if (wz2 != null) {
            wz2.A00(j);
            cv.A01 = this.A00;
        }
        return false;
    }
}
