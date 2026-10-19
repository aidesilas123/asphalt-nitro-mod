package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ex, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1002Ex extends AbstractC1547a9 {
    public View A00;
    public C0978Dz A01;

    public C1002Ex(C0978Dz c0978Dz, C06931r c06931r) {
        super(c0978Dz, c06931r);
        this.A01 = c0978Dz;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0L() {
        if (this.A00 == null) {
            this.A01.A0E().A3v();
        } else {
            this.A01.A0E().A3u();
            this.A06.A0E(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0N(InterfaceC06640o interfaceC06640o, C8F c8f, C8D c8d, C06941s c06941s) {
        this.A01.A0E().A3o();
        C1584ak c1584ak = (C1584ak) interfaceC06640o;
        C1550aC c1550aC = new C1550aC(this, c06941s, c1584ak);
        A0E().postDelayed(c1550aC, c8f.A05().A05());
        c1584ak.A0I(this.A01, this.A08, this.A07.A07, new C1549aB(this, c1550aC), c06941s);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0Q(String str) {
        this.A01.A0E().A3t(str != null);
        super.A0Q(str);
    }

    @Override // com.facebook.ads.redexgen.X.AbstractC1547a9
    public final void A0T(boolean z) {
        super.A0T(z);
        this.A00 = null;
    }
}
