package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import com.facebook.ads.internal.exoplayer2.thirdparty.Format;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class WV extends CW {
    public static byte[] A01;
    public static String[] A02 = {"sf1snlIsJ6W0T2FnClxHrZdECoWprGfm", "N", "", "r2HEyqcTBk5ynLpIwHNeKGT5pvsr0hUz", "VJBF4MChRorpvGWaO0TH3IkbIinT6ci", "gVX", "V2gxFGplaBAwDTpDKBzIrO8nmlXbG3Ru", "XRqJkaMKHgiwUJro7qWKl9bCL3sckU6K"};
    public static final int A03;
    public static final byte[] A04;
    public boolean A00;

    static {
        A02();
        A03 = C1078Hx.A08(A01(0, 4, 111));
        A04 = new byte[]{79, 112, 117, 115, 72, 101, 97, 100};
    }

    private long A00(byte[] bArr) {
        int i;
        int i2;
        int i3 = bArr[0] & 255;
        switch (i3 & 3) {
            case 0:
                i = 1;
                break;
            case 1:
            case 2:
                i = 2;
                break;
            default:
                i = bArr[1] & 63;
                break;
        }
        int i4 = i3 >> 3;
        int i5 = i4 & 3;
        if (i4 >= 16) {
            if (A02[5].length() != 3) {
                throw new RuntimeException();
            }
            A02[5] = "Fg3";
            i2 = 2500 << i5;
        } else if (i4 >= 12) {
            i2 = 10000 << (i5 & 1);
        } else {
            if (A02[2].length() == 12) {
                throw new RuntimeException();
            }
            A02[2] = "pnsJXiCpejNcXc3iNsNdzofu9hZ";
            i2 = i5 == 3 ? 60000 : 10000 << i5;
        }
        return ((long) i) * ((long) i2);
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 10);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{42, Ascii.NAK, Ascii.DLE, Ascii.SYN, 79, 91, 74, 71, 65, 1, 65, 94, 91, 93};
    }

    private void A03(List<byte[]> list, int i) {
        list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong((((long) i) * C.NANOS_PER_SECOND) / 48000).array());
    }

    public static boolean A04(C1062Hh c1062Hh) {
        int iA04 = c1062Hh.A04();
        byte[] bArr = A04;
        if (iA04 < bArr.length) {
            return false;
        }
        byte[] bArr2 = new byte[bArr.length];
        c1062Hh.A0c(bArr2, 0, bArr.length);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final long A07(C1062Hh c1062Hh) {
        return A04(A00(c1062Hh.A00));
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final void A09(boolean z) {
        super.A09(z);
        if (z) {
            this.A00 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.CW
    public final boolean A0A(C1062Hh c1062Hh, long j, CV cv) throws InterruptedException, IOException {
        if (this.A00) {
            boolean z = c1062Hh.A08() == A03;
            c1062Hh.A0Y(0);
            return z;
        }
        byte[] bArrCopyOf = Arrays.copyOf(c1062Hh.A00, c1062Hh.A07());
        int i = bArrCopyOf[9] & 255;
        int i2 = ((bArrCopyOf[11] & 255) << 8) | (bArrCopyOf[10] & 255);
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(bArrCopyOf);
        A03(arrayList, i2);
        A03(arrayList, 3840);
        cv.A00 = Format.A07(null, A01(4, 10, 36), null, -1, -1, i, 48000, arrayList, null, 0, null);
        this.A00 = true;
        return true;
    }
}
