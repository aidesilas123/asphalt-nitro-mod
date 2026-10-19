package com.facebook.ads.redexgen.X;

import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public final class F9 extends AbstractC1567aT {
    public final YA A00;
    public final J6 A01;

    public F9(YA ya, C06730x c06730x, List<UJ> list, J6 j6) {
        super(c06730x, list, ya);
        this.A00 = ya;
        this.A01 = j6 == null ? new J6() : j6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A01, reason: merged with bridge method [inline-methods] */
    public final C1370Tj A0C(ViewGroup viewGroup, int i) {
        return new C1370Tj(new C1175Lv(this.A00, this.A01));
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1567aT, com.facebook.ads.redexgen.X.C4Q
    /* JADX INFO: renamed from: A0H */
    public final void A0E(C1370Tj c1370Tj, int i) {
        super.A0E(c1370Tj, i);
        C1175Lv c1175Lv = (C1175Lv) c1370Tj.A0l();
        A0F(c1175Lv.getImageCardView(), i);
        if (((AbstractC1567aT) this).A01.get(i) != null) {
            c1175Lv.setTitle(((AbstractC1567aT) this).A01.get(i).getAdHeadline());
            c1175Lv.setSubtitle(((AbstractC1567aT) this).A01.get(i).getAdLinkDescription());
            c1175Lv.setButtonText(((AbstractC1567aT) this).A01.get(i).getAdCallToAction());
        }
        UJ uj = ((AbstractC1567aT) this).A01.get(i);
        ArrayList arrayList = new ArrayList();
        arrayList.add(c1175Lv);
        uj.A1O(c1175Lv, c1175Lv, arrayList);
    }
}
