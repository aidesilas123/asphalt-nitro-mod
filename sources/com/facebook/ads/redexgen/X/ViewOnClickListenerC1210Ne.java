package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Ne, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1210Ne implements View.OnClickListener {
    public final /* synthetic */ C1212Ng A00;

    public ViewOnClickListenerC1210Ne(C1212Ng c1212Ng) {
        this.A00 = c1212Ng;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A04();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
