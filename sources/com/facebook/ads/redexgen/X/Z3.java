package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class Z3 implements InterfaceC07744x {
    public final /* synthetic */ AbstractC07544c A00;

    public Z3(AbstractC07544c abstractC07544c) {
        this.A00 = abstractC07544c;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07744x
    public final View A6H(int i) {
        return this.A00.A0t(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07744x
    public final int A6J(View view) {
        return this.A00.A0j(view) + ((C07554d) view.getLayoutParams()).bottomMargin;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07744x
    public final int A6K(View view) {
        return this.A00.A0o(view) - ((C07554d) view.getLayoutParams()).topMargin;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07744x
    public final int A7S() {
        return this.A00.A0X() - this.A00.A0d();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07744x
    public final int A7T() {
        return this.A00.A0g();
    }
}
