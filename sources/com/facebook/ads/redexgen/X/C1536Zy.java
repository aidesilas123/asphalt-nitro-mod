package com.facebook.ads.redexgen.X;

import android.os.Message;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Zy, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1536Zy extends AbstractRunnableC1125Jv {
    public final /* synthetic */ Message A00;
    public final /* synthetic */ AbstractC1534Zw A01;

    public C1536Zy(AbstractC1534Zw abstractC1534Zw, Message message) {
        this.A01 = abstractC1534Zw;
        this.A00 = message;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC1125Jv
    public final void A01() {
        this.A01.A04.A8M(this.A00);
    }
}
