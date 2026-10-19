package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ur, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1404Ur implements R8 {
    public static byte[] A02;
    public final /* synthetic */ Y9 A00;
    public final /* synthetic */ R6 A01;

    static {
        A01();
    }

    public C1404Ur(R6 r6, Y9 y9) {
        this.A01 = r6;
        this.A00 = y9;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{-120, -121, -125, -106, -105, -108, -121, -127, -123, -111, -112, -120, -117, -119};
    }

    @Override // com.facebook.ads.redexgen.X.R8
    public final void A41() {
        try {
            IP.A0Q(this.A00).A2T(this.A01.A6b().optJSONObject(A00(0, 14, 2)));
        } catch (JSONException e2) {
            this.A00.A07().A3Y(e2);
        }
    }
}
