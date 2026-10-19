package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Sf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1341Sf implements OY {
    public static byte[] A01;
    public final /* synthetic */ AnonymousClass96 A00;

    static {
        A01();
    }

    public C1341Sf(AnonymousClass96 anonymousClass96) {
        this.A00 = anonymousClass96;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 23);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-49, -53, -64, -40};
    }

    @Override // com.facebook.ads.redexgen.X.OY
    public final void ADO(String str, JSONObject jSONObject) {
        if (str.equals(A00(0, 4, 72))) {
            this.A00.AFn();
            if (IP.A1X(this.A00.A07)) {
                this.A00.A07.A0A().AB1();
            }
        }
        this.A00.A0F.A0h(str, jSONObject);
    }
}
