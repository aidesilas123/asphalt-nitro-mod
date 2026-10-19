package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.protocol.AdErrorType;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ap, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1589ap implements InterfaceC07925p {
    public final /* synthetic */ int A00;
    public final /* synthetic */ C1584ak A01;
    public final /* synthetic */ C1584ak A02;
    public final /* synthetic */ C8G A03;

    public C1589ap(C1584ak c1584ak, int i, C8G c8g, C1584ak c1584ak2) {
        this.A01 = c1584ak;
        this.A00 = i;
        this.A03 = c8g;
        this.A02 = c1584ak2;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAW() {
        this.A01.A0B(this.A00, this.A03);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC07925p
    public final void AAX() {
        this.A01.A00.ABm(this.A02, JG.A00(AdErrorType.NO_FILL));
    }
}
