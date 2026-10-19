package com.facebook.ads.redexgen.X;

import android.text.TextUtils;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ro, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1324Ro extends AbstractC1284Qa {
    public final /* synthetic */ C7H A00;

    public C1324Ro(C7H c7h) {
        this.A00 = c7h;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1284Qa
    public final void A03() {
        if (this.A00.A0E.A07()) {
            return;
        }
        C7H c7h = this.A00;
        c7h.setImpressionRecordingFlag(c7h.A0E);
        if (TextUtils.isEmpty(this.A00.A0A)) {
            return;
        }
        ((AbstractC1365Td) ((AbstractC1365Td) this.A00)).A0C.A9S(this.A00.A0A, new NL().A03(this.A00.A09).A02(this.A00.A0E).A04(((AbstractC1365Td) ((AbstractC1365Td) this.A00)).A0A.A0N()).A05());
        C1R.A07(((AbstractC1365Td) ((AbstractC1365Td) this.A00)).A0A.A0x(), this.A00.A0D);
        this.A00.A0D.A0E().A2g();
        C2C.A00(this.A00.A03.A0M());
    }
}
