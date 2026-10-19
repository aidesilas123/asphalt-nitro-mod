package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class S1 implements OP {
    public final /* synthetic */ S0 A00;

    public S1(S0 s0) {
        this.A00 = s0;
    }

    @Override // com.facebook.ads.redexgen.X.OP
    public final void ADR(View view) {
        if (this.A00.A09) {
            this.A00.A07 = false;
        }
    }

    @Override // com.facebook.ads.redexgen.X.OP
    public final void ADT(View view) {
        AbstractC1346Sk abstractC1346Sk = (AbstractC1346Sk) view;
        abstractC1346Sk.A15();
        if (this.A00.A09) {
            this.A00.A07 = true;
        }
        if (this.A00.A04.A0Z() && ((Integer) abstractC1346Sk.getTag(-1593835536)).intValue() == 0) {
            this.A00.A04.A0U();
        }
    }
}
