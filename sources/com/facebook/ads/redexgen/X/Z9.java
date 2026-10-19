package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Z9 extends C4M {
    public Z9(AbstractC07544c abstractC07544c) {
        super(abstractC07544c, null);
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A06() {
        return this.A02.A0X();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A07() {
        return this.A02.A0X() - this.A02.A0d();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A08() {
        return this.A02.A0d();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A09() {
        return this.A02.A0Y();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0A() {
        return this.A02.A0g();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0B() {
        return (this.A02.A0X() - this.A02.A0g()) - this.A02.A0d();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0C(View view) {
        return this.A02.A0j(view) + ((C07554d) view.getLayoutParams()).bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0D(View view) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return this.A02.A0l(view) + c07554d.topMargin + c07554d.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0E(View view) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return this.A02.A0m(view) + c07554d.leftMargin + c07554d.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0F(View view) {
        return this.A02.A0o(view) - ((C07554d) view.getLayoutParams()).topMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0G(View view) {
        this.A02.A1E(view, true, this.A01);
        return this.A01.bottom;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0H(View view) {
        this.A02.A1E(view, true, this.A01);
        return this.A01.top;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final void A0J(int i) {
        this.A02.A10(i);
    }
}
