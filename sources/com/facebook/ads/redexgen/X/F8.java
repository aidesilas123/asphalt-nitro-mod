package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class F8 extends AbstractC1567aT {
    public final YA A00;

    public F8(C06730x c06730x, List<UJ> list, YA ya) {
        super(c06730x, list, ya);
        this.A00 = ya;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1370Tj A0C(ViewGroup viewGroup, int i) {
        return new C1370Tj(new M0(this.A00));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1567aT, com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A0H */
    public final void A0E(C1370Tj c1370Tj, int i) {
        super.A0E(c1370Tj, i);
        M0 m0 = (M0) c1370Tj.A0l();
        MC mc = (MC) m0.getImageCardView();
        mc.setImageDrawable(null);
        A0F(mc, i);
        UJ uj = ((AbstractC1567aT) this).A01.get(i);
        uj.A11().A0G(this.A00);
        uj.A1N(m0, m0);
    }
}
