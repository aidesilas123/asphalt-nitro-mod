package com.facebook.ads.redexgen.X;

import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;

/* JADX WARN: Classes with same name are omitted, all sources:
  assets.dex
  assets/audience_network.dex
 */
/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.aW, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets.dex */
public abstract class AbstractC1570aW implements InterfaceC06640o {
    public int A00;
    public long A01;
    public RewardData A02;

    public final void A00(int i) {
        this.A00 = i;
    }

    public final void A01(long j) {
        this.A01 = j;
    }

    public final void A02(RewardData rewardData) {
        this.A02 = rewardData;
    }

    public abstract int A0G();

    public abstract C1C A0H();

    public abstract boolean A0I();

    @Override // com.facebook.ads.redexgen.X.InterfaceC06640o
    public final AdPlacementType A7W() {
        return AdPlacementType.REWARDED_VIDEO;
    }
}
