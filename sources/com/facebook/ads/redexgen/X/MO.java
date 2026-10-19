package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class MO implements View.OnClickListener {
    public final /* synthetic */ MQ A00;

    public MO(MQ mq) {
        this.A00 = mq;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A04.A99();
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
