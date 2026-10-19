package com.facebook.ads.redexgen.X;

import com.applovin.exoplayer2.common.base.Ascii;
import java.util.ArrayList;
import java.util.Arrays;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class JB implements Runnable {
    public static byte[] A03;
    public final /* synthetic */ C7S A00;
    public final /* synthetic */ JE A01;
    public final /* synthetic */ String A02;

    static {
        A01();
    }

    public JB(JE je, String str, C7S c7s) {
        this.A01 = je;
        this.A02 = str;
        this.A00 = c7s;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 121);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{3, Ascii.ESC, 5, 60, 61, 39, 32, 59, 38, 45, 89, 78, 91, 68, 89, 95, 66, 69, 76, 54, 33, 53, 49, 33, 55, 48, Ascii.ESC, 45, 32};
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        ArrayList<JD> arrayList;
        if (K0.A02(this)) {
            return;
        }
        try {
            C08427y c08427y = new C08427y(A00(0, 3, 52));
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            jSONObject.put(A00(3, 7, 45), jSONArray);
            jSONObject.put(A00(19, 10, 61), this.A02);
            synchronized (this.A01.A0D) {
                arrayList = new ArrayList(this.A01.A0D);
                this.A01.A0D.clear();
            }
            for (JD jd : arrayList) {
                jSONArray.put(A00(0, 0, 60) + jd.A00 + ';' + jd.A02 + ';' + jd.A01);
            }
            c08427y.A05(jSONObject);
            c08427y.A03(1);
            this.A00.A07().A9N(A00(10, 9, 82), C08417x.A2Q, c08427y);
        } catch (JSONException unused) {
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
