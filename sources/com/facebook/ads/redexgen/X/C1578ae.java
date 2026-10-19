package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ae, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1578ae implements InterfaceC07925p {
    public final /* synthetic */ FA A00;
    public final /* synthetic */ boolean A01;

    public C1578ae(FA fa, boolean z) {
        this.A00 = fa;
        this.A01 = z;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAW() {
        if (IP.A1S(this.A00.A04) && this.A01) {
            FA fa = this.A00;
            fa.A06 = C1240Oi.A01(fa.A04, (C1003Ey) this.A00.A03, 0, new C1579af(this));
        } else {
            this.A00.A0C.set(true);
            this.A00.A01.ACn(this.A00);
        }
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAX() {
        this.A00.A01.ACq(this.A00, AdError.CACHE_ERROR);
    }
}
