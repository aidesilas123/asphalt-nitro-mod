package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public class T2 extends K8 {
    public final /* synthetic */ C1206Na A00;

    public T2(C1206Na c1206Na) {
        this.A00 = c1206Na;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        if (this.A00.isPressed()) {
            this.A00.postDelayed(this, r2.A07);
        } else {
            this.A00.setPressed(true);
            C1206Na c1206Na = this.A00;
            c1206Na.postOnAnimationDelayed(c1206Na.A09, 250L);
        }
    }
}
