package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.as, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1592as extends K8 {
    public static byte[] A02;
    public final /* synthetic */ C06710v A00;
    public final /* synthetic */ JSONObject A01;

    static {
        A02();
    }

    public C1592as(C06710v c06710v, JSONObject jSONObject) {
        this.A00 = c06710v;
        this.A01 = jSONObject;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 21);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{7, 19, 4, Ascii.DLE, Ascii.DC4, 4, Ascii.SI, 2, Ascii.CAN, 62, 2, 0, 17, 17, 8, Ascii.SI, 6};
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        try {
            this.A00.A05.await();
            synchronized (this.A00.A02) {
                this.A00.A02.A0B(this.A01);
                this.A00.A06.countDown();
            }
        } catch (InterruptedException e2) {
            this.A00.A03.A07().A9M(A00(0, 17, 116), C08417x.A1B, new C08427y(e2));
        } catch (JSONException e3) {
            this.A00.A0M();
            this.A00.A03.A07().A9M(A00(0, 17, 116), C08417x.A1A, new C08427y(e3));
        }
    }
}
