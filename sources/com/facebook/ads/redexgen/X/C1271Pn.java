package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public final class C1271Pn implements InterfaceC1265Ph {
    public final View A00;
    public final YA A01;

    public C1271Pn(YA ya, View view) {
        this.A01 = ya;
        this.A00 = view;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1265Ph
    public final double A8B() {
        return C1285Qb.A0E(this.A00, 0, this.A01).A00();
    }
}
