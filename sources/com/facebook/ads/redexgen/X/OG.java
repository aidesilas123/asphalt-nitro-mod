package com.facebook.ads.redexgen.X;

import android.view.View;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class OG implements View.OnClickListener {
    public final /* synthetic */ C1347Sl A00;

    public OG(C1347Sl c1347Sl) {
        this.A00 = c1347Sl;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) throws Throwable {
        if (K0.A02(this)) {
            return;
        }
        try {
            this.A00.A0P = true;
            if (!this.A00.A0O) {
                C1347Sl c1347Sl = this.A00;
                c1347Sl.A0c(((FH) c1347Sl.A0d).A0G().toString());
                if (this.A00.A0G.A0H() >= 0) {
                    this.A00.A09.postDelayed(this.A00.A0j, this.A00.A0G.A0H());
                }
            }
            C1347Sl c1347Sl2 = this.A00;
            c1347Sl2.A0f(c1347Sl2.A0O ? false : true);
        } catch (Throwable th) {
            K0.A00(th, this);
        }
    }
}
