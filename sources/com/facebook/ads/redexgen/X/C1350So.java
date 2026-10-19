package com.facebook.ads.redexgen.X;

import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.So, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public class C1350So extends K8 {
    public final /* synthetic */ C1347Sl A00;

    public C1350So(C1347Sl c1347Sl) {
        this.A00 = c1347Sl;
    }

    @Override // com.facebook.ads.redexgen.X.K8
    public final void A06() {
        if (!this.A00.A0Z) {
            LV.A0F(1000, this.A00.A0M);
        }
        this.A00.postDelayed(this, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }
}
