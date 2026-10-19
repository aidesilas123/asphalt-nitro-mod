package com.facebook.ads.redexgen.X;

import com.facebook.ads.AdError;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ab, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1575ab implements InterfaceC06891n {
    public final /* synthetic */ FA A00;

    public C1575ab(FA fa) {
        this.A00 = fa;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06891n
    public final void ACM(AdError adError) {
        this.A00.A01.ACq(this.A00, adError);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC06891n
    public final void ACN() {
        this.A00.A0C.set(true);
        this.A00.A01.ACn(this.A00);
    }
}
