package com.facebook.ads.redexgen.X;

import android.util.AttributeSet;
import android.widget.RelativeLayout;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: loaded from: assets.dex */
public abstract class PX extends RelativeLayout implements InterfaceC1268Pk {
    public RX A00;

    public PX(YA ya) {
        super(ya);
    }

    public PX(YA ya, AttributeSet attributeSet, int i) {
        super(ya, attributeSet, i);
        setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
    }

    public void A07() {
    }

    public void A08() {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1268Pk
    public final void A9D(RX rx) {
        this.A00 = rx;
        A07();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC1268Pk
    public final void AG0(RX rx) {
        A08();
        this.A00 = null;
    }

    public RX getVideoView() {
        return this.A00;
    }
}
