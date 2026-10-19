package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Mk, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1190Mk implements View.OnClickListener {
    public final /* synthetic */ TM A00;

    public ViewOnClickListenerC1190Mk(TM tm) {
        this.A00 = tm;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A0B.A8F();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
