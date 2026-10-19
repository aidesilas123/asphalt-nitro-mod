package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class PF implements View.OnClickListener {
    public final /* synthetic */ PI A00;

    public PF(PI pi) {
        this.A00 = pi;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A02.AD6(this.A00.A01);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
