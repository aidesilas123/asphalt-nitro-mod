package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class MN implements View.OnClickListener {
    public final /* synthetic */ MQ A00;

    public MN(MQ mq) {
        this.A00 = mq;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            if (this.A00.A05) {
                this.A00.A04.A4I();
            } else {
                this.A00.A04.A4J();
            }
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
