package com.facebook.ads.redexgen.X;

import java.util.ArrayList;
import java.util.List;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.0e, reason: invalid class name and case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C06550e extends C2O implements J2 {
    public C08789j A00;
    public List<PC> A01;

    public C06550e(YA ya) {
        super(ya);
        this.A00 = new C08789j(this, 1, null, null, null);
    }

    public final void A23(C1285Qb c1285Qb) {
        C08789j c08789j = this.A00;
        if (c08789j != null) {
            c08789j.A0d(c1285Qb);
        }
    }

    public C08789j getCarouselCardBehaviorHelper() {
        return this.A00;
    }

    public void setCardsInfo(ArrayList arrayList) {
        this.A01 = arrayList;
        this.A00.A0e(arrayList);
    }
}
