package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import com.applovin.exoplayer2.common.base.Ascii;
import java.util.Arrays;
import org.json.JSONObject;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.5q, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C07935q {
    public static byte[] A07;
    public static String[] A08 = {"QC6ROF3GbFPL6U2BchtfuOIlWA", "mAXyphBg0ZoA2", "nmk1i7vNQUMlLTVPnMJLcVhB6M", "xf2dPS9SncVtV17kxTxgHOfrSuJpis3", "Y24xgR3", "pU5dMF2zEzzc2yzou8JPWDE5BQxzeO1x", "dnQEZ1usH0f6s5VsA3sVBX2XHmBfQenJ", "5qnsTvKOcggfe9NlhRnI8aAzom1PIzJ"};
    public final Handler A00;
    public final InterfaceC07925p A01;
    public final C6Q A02;
    public final String A03;
    public final String A04;
    public final JSONObject A05;
    public final boolean A06;

    static {
        A07();
    }

    public C07935q(C6Q c6q, JSONObject jSONObject, String str, String str2, boolean z, InterfaceC07925p interfaceC07925p) {
        this.A02 = c6q;
        this.A05 = jSONObject;
        this.A03 = str;
        this.A04 = str2;
        this.A06 = z && A0A(jSONObject);
        this.A01 = interfaceC07925p;
        this.A00 = new Handler(Looper.getMainLooper());
    }

    public static String A03(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 52);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        A07 = new byte[]{72, 90, 90, 76, 93, 90, 78, 65, 68, 77, 105, 109, 97, 103, 101, 0, Ascii.US, Ascii.DC2, 19, Ascii.EM};
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A09(boolean z, C07915o c07915o) {
        String strA03 = A03(6, 4, 28);
        String strA032 = A03(15, 5, 66);
        String strA033 = A03(10, 5, 52);
        if (!z) {
            if (strA033.equals(c07915o.A02)) {
                this.A02.A0b(new C6O(c07915o.A03, -1, -1, this.A04, this.A03));
                return;
            } else if (strA032.equals(c07915o.A02)) {
                this.A02.A0a(new C6M(c07915o.A03, this.A04, this.A03));
                return;
            } else {
                if (strA03.equals(c07915o.A02)) {
                    this.A02.A0X(new C6M(c07915o.A03, this.A04, this.A03));
                    return;
                }
                return;
            }
        }
        boolean zEquals = strA033.equals(c07915o.A02);
        if (A08[6].charAt(22) == 'q') {
            throw new RuntimeException();
        }
        String[] strArr = A08;
        strArr[3] = "Ngd5gA2SMQ4Pqx2mjoy1oHjbJUKCicI";
        strArr[7] = "LorLYeRbgteEMpgZiQ82pTGbH7n24yI";
        if (zEquals) {
            this.A02.A0c(new C6O(c07915o.A03, -1, -1, this.A04, this.A03));
        } else if (strA032.equals(c07915o.A02)) {
            this.A02.A0Z(new C6M(c07915o.A03, this.A04, this.A03));
        } else if (strA03.equals(c07915o.A02)) {
            this.A02.A0Y(new C6M(c07915o.A03, this.A04, this.A03));
        }
    }

    public static boolean A0A(JSONObject jSONObject) {
        return jSONObject != null && jSONObject.has(A03(0, 6, 29));
    }

    public final void A0B() {
        if (!this.A06) {
            this.A01.AAX();
        }
        ExecutorC1154La.A06.execute(new YS(this));
    }
}
