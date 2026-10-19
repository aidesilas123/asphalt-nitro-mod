package com.facebook.ads.redexgen.X;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.be, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1633be {
    public InterfaceC1634bf A00;

    public final void A00() {
        InterfaceC1634bf interfaceC1634bf = this.A00;
        if (interfaceC1634bf != null) {
            interfaceC1634bf.onStart();
        }
    }

    public final void A01() {
        InterfaceC1634bf interfaceC1634bf = this.A00;
        if (interfaceC1634bf != null) {
            interfaceC1634bf.onStop();
        }
    }

    public final void A02(InterfaceC1634bf interfaceC1634bf) {
        this.A00 = interfaceC1634bf;
    }
}
