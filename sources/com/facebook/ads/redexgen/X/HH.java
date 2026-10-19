package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class HH implements InterfaceC1307Qx {
    public static byte[] A01;
    public static String[] A02 = {"pV4qaXw6VxHe7sBZO1Jm7", "tYmmDZR", "QxtgKachTN194eYcwGU9LkTJFmNVHEQq", "xizWbh8OYfs2b3YS4RQSAfdZXrf", "ZGXkvbP8ihMVuHVBPcyrpbYPgwlZhzIP", "8ikrsMyeeixNpMm9GyoBY2XQC58AAuyp", "5oOpXt9UGuRFEd", "RP1a17xo5hy9tsnm95xYo1Dg0S3kboh6"};
    public final boolean A00;

    static {
        A01();
    }

    public HH(boolean z) {
        this.A00 = z;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 63);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{Ascii.DC2, 74, 110, 66, 67, 89, 72, 67, 89, Ascii.ETB, Ascii.CR, 19, 36, 34, 36, 40, 55, 36, 97, 52, 51, 45, 123, 97, Ascii.FF, 43, 62, 43, 42, 44, 101, Ascii.DEL};
    }

    private void A02(Map<String, List<String>> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                Iterator<String> it = map.get(str).iterator();
                while (it.hasNext()) {
                    String str2 = str + A00(1, 1, 79) + it.next();
                }
            }
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Qx
    public final boolean A8x() {
        return this.A00;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Qx
    public final void A9c(HttpURLConnection httpURLConnection, Object obj) throws IOException {
        String str = httpURLConnection.getRequestMethod() + A00(0, 1, 13) + httpURLConnection.getURL().toString();
        if (obj instanceof String) {
            String str2 = A00(2, 9, 18) + ((String) obj);
        }
        Map<String, List<String>> requestProperties = httpURLConnection.getRequestProperties();
        String[] strArr = A02;
        if (strArr[4].length() == strArr[1].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A02;
        strArr2[7] = "GaHF5freueg6l7URhKCrm47FqBCtqYBi";
        strArr2[5] = "OrzNjk0gyiryng1un1TYaQe8BXJyjneo";
        A02(requestProperties);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1307Qx
    public final void A9d(InterfaceC1290Qg interfaceC1290Qg) {
        if (interfaceC1290Qg != null) {
            String str = A00(11, 13, 126) + interfaceC1290Qg.getUrl();
            String str2 = A00(24, 8, 96) + interfaceC1290Qg.A7v();
            A02(interfaceC1290Qg.A72());
        }
    }
}
