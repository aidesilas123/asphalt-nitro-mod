package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1187Mh implements View.OnClickListener {
    public final /* synthetic */ C1189Mj A00;

    public ViewOnClickListenerC1187Mh(C1189Mj c1189Mj) {
        this.A00 = c1189Mj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A02.A8F();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
