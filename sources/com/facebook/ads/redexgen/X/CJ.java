package com.facebook.ads.redexgen.X;

import android.util.Log;
import java.util.Arrays;
import java.util.UUID;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class CJ {
    public static byte[] A00;
    public static String[] A01 = {"vniJFRP", "oJtPNZwcQG6hLH64wW6tXvk3sbQ9WwGW", "zry57w6QfhfaFpFxdZgKHC1xYn", "fo4QeY", "i9CLNlynjhorIFu8zs9NEh7lWGRKe1E6", "M5SbcVIJ6zX6bTvbAFwxovtl6mtBjy6T", "O1VKgn8XNf4GQEXWcT9RCCs6YBao3Pp0", "jcDd8FEzgCzhSc3FOh8Nko0kxmmUpCTh"};

    static {
        A04();
    }

    public static int A00(byte[] bArr) {
        CI ciA01 = A01(bArr);
        if (ciA01 != null) {
            return ciA01.A00;
        }
        if (A01[0].length() == 21) {
            throw new RuntimeException();
        }
        String[] strArr = A01;
        strArr[3] = "fw1Vu3";
        strArr[2] = "Fgm9cv2CAdprrHHvAJvClRGcka";
        return -1;
    }

    public static CI A01(byte[] bArr) {
        C1062Hh c1062Hh = new C1062Hh(bArr);
        if (c1062Hh.A07() < 32) {
            return null;
        }
        c1062Hh.A0Y(0);
        if (c1062Hh.A08() != c1062Hh.A04() + 4 || c1062Hh.A08() != C1.A0s) {
            return null;
        }
        int iA01 = C1.A01(c1062Hh.A08());
        if (iA01 > 1) {
            Log.w(A02(0, 12, 98), A02(12, 26, 36) + iA01);
            return null;
        }
        UUID uuid = new UUID(c1062Hh.A0L(), c1062Hh.A0L());
        if (iA01 == 1) {
            int iA0H = c1062Hh.A0H() * 16;
            if (A01[0].length() == 21) {
                throw new RuntimeException();
            }
            String[] strArr = A01;
            strArr[3] = "thpi9L";
            strArr[2] = "TMAT5NZ1bWTkNSNpNaLonMSfAF";
            c1062Hh.A0Z(iA0H);
        }
        int iA0H2 = c1062Hh.A0H();
        if (iA0H2 != c1062Hh.A04()) {
            return null;
        }
        byte[] bArr2 = new byte[iA0H2];
        c1062Hh.A0c(bArr2, 0, iA0H2);
        return new CI(uuid, iA01, bArr2);
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 50);
        }
        return new String(bArrCopyOfRange);
    }

    public static UUID A03(byte[] bArr) {
        CI ciA01 = A01(bArr);
        if (ciA01 == null) {
            return null;
        }
        return ciA01.A01;
    }

    public static void A04() {
        A00 = new byte[]{-28, 7, 7, -4, -43, 8, 3, 1, -23, 8, -3, 0, -85, -60, -55, -53, -58, -58, -59, -56, -54, -69, -70, 118, -58, -55, -55, -66, 118, -52, -69, -56, -55, -65, -59, -60, -112, 118};
    }
}
