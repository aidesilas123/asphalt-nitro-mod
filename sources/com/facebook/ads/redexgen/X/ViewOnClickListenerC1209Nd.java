package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Nd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class ViewOnClickListenerC1209Nd implements View.OnClickListener {
    public final /* synthetic */ C1212Ng A00;

    public ViewOnClickListenerC1209Nd(C1212Ng c1212Ng) {
        this.A00 = c1212Ng;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A04.ABz();
            if (this.A00.A00 != null) {
                LV.A0L(this.A00.A00);
            }
            for (View view2 : this.A00.A06) {
                LV.A0N(view2, 0);
            }
            LV.A0J(this.A00);
            if (this.A00.A05 != null) {
                LV.A0N(this.A00.A05, 0);
                this.A00.A05.A0b(EnumC1267Pj.A02, 14);
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
