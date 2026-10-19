package com.facebook.ads.redexgen.X;

import com.facebook.ads.internal.bridge.gms.AdvertisingId;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Xm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1474Xm implements C7W {
    public final /* synthetic */ AdvertisingId A00;
    public final /* synthetic */ C1473Xl A01;

    public C1474Xm(C1473Xl c1473Xl, AdvertisingId advertisingId) {
        this.A01 = c1473Xl;
        this.A00 = advertisingId;
    }

    @Override // com.facebook.ads.redexgen.X.C7W
    public final boolean A8w() {
        return this.A00.isLimitAdTracking();
    }

    @Override // com.facebook.ads.redexgen.X.C7W
    public final String getId() {
        return this.A00.getId();
    }
}
