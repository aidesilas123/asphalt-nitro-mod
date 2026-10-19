package com.facebook.ads.redexgen.X;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ST extends AbstractC1284Qa {
    public static byte[] A01;
    public final /* synthetic */ AbstractC1254Ow A00;

    static {
        A01();
    }

    public ST(AbstractC1254Ow abstractC1254Ow) {
        this.A00 = abstractC1254Ow;
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{90, 81, 88, 80, 87, 92, 93, 102, 88, 93, 102, 80, 87, 93, 92, 65};
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1284Qa
    public final void A03() {
        if (this.A00.A08.A07()) {
            return;
        }
        this.A00.A08.A05();
        if (TextUtils.isEmpty(this.A00.A05.A11())) {
            return;
        }
        Map<String, String> mapA05 = new NL().A03(this.A00.A0B).A02(this.A00.A08).A04(this.A00.A05.A0N()).A05();
        mapA05.put(A00(0, 16, 10), A00(0, 0, 11) + this.A00.A01);
        this.A00.A07.A9S(this.A00.A05.A11(), mapA05);
        C1R.A07(this.A00.A05.A0x(), this.A00.A06);
        this.A00.A06.A0E().A2g();
        if (!this.A00.A03) {
            C2C.A00(this.A00.A05.A0M());
        }
        if (this.A00.A04) {
            return;
        }
        this.A00.A09.A3z(this.A00.A0A.A74());
    }
}
