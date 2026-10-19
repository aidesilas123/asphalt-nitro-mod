package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Bo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC0931Bo {
    public final InterfaceC0930Bm A00;

    public AbstractC0931Bo(InterfaceC0930Bm interfaceC0930Bm) {
        this.A00 = interfaceC0930Bm;
    }

    public final void A00(C1062Hh c1062Hh, long j) throws C08729d {
        if (A0C(c1062Hh)) {
            A0B(c1062Hh, j);
        }
    }

    public abstract void A0B(C1062Hh c1062Hh, long j) throws C08729d;

    public abstract boolean A0C(C1062Hh c1062Hh) throws C08729d;
}
