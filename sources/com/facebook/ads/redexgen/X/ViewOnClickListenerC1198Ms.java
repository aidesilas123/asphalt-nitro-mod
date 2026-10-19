package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ms, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1198Ms implements View.OnClickListener {
    public final /* synthetic */ C1202Mw A00;

    public ViewOnClickListenerC1198Ms(C1202Mw c1202Mw) {
        this.A00 = c1202Mw;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            if (this.A00.A08.canGoBack()) {
                this.A00.A08.goBack();
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
