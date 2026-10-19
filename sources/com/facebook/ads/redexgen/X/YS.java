package com.facebook.ads.redexgen.X;

import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class YS extends K8 {
    public static byte[] A01;
    public final /* synthetic */ C07935q A00;

    static {
        A02();
    }

    public YS(C07935q c07935q) {
        this.A00 = c07935q;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 18);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A01 = new byte[]{62, 44, 44, 58, 43, 44};
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        try {
            JSONArray jSONArray = this.A00.A05.getJSONArray(A00(0, 6, 77));
            for (int i = 0; i < jSONArray.length(); i++) {
                C07915o c07915oA00 = C07915o.A00(jSONArray.getJSONObject(i));
                this.A00.A09(c07915oA00.A04, c07915oA00);
            }
            this.A00.A02.A0W(new YU(this), new C6J(this.A00.A04, this.A00.A03));
        } catch (JSONException unused) {
            this.A00.A00.post(new YT(this));
        }
    }
}
