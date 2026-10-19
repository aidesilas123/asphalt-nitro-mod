package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class ZA extends C4M {
    public ZA(AbstractC07544c abstractC07544c) {
        super(abstractC07544c, null);
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A06() {
        return this.A02.A0h();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A07() {
        return this.A02.A0h() - this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A08() {
        return this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A09() {
        return this.A02.A0i();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0A() {
        return this.A02.A0e();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0B() {
        return (this.A02.A0h() - this.A02.A0e()) - this.A02.A0f();
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0C(View view) {
        return this.A02.A0n(view) + ((C07554d) view.getLayoutParams()).rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0D(View view) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return this.A02.A0m(view) + c07554d.leftMargin + c07554d.rightMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0E(View view) {
        C07554d c07554d = (C07554d) view.getLayoutParams();
        return this.A02.A0l(view) + c07554d.topMargin + c07554d.bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0F(View view) {
        return this.A02.A0k(view) - ((C07554d) view.getLayoutParams()).leftMargin;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0G(View view) {
        this.A02.A1E(view, true, this.A01);
        return this.A01.right;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final int A0H(View view) {
        this.A02.A1E(view, true, this.A01);
        return this.A01.left;
    }

    @Override // com.facebook.ads.redexgen.X.C4M
    public final void A0J(int i) {
        this.A02.A0z(i);
    }
}
