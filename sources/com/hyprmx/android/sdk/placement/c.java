package com.hyprmx.android.sdk.placement;

import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements Placement {
    public a a;
    public PlacementType b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PlacementListener f4610d;

    public interface a extends com.hyprmx.android.sdk.bidding.c {
        void a(String str);

        boolean b(String str);

        void c(String str);
    }

    public c(a placementDelegate, PlacementType type, String name) {
        Intrinsics.checkNotNullParameter(placementDelegate, "placementDelegate");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = placementDelegate;
        this.b = type;
        this.c = name;
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final String getName() {
        return this.c;
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final PlacementType getType() {
        return this.b;
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final boolean isAdAvailable() {
        return this.a.b(this.c);
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final void loadAd() {
        if (this.b != PlacementType.INVALID) {
            this.a.a(this.c);
            return;
        }
        HyprMXLog.e("loadAd was called on an invalid placement!");
        PlacementListener placementListener = this.f4610d;
        if (placementListener != null) {
            placementListener.onAdNotAvailable(this);
        }
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final boolean loadAdWithBidResponse(String bidResponse) {
        Intrinsics.checkNotNullParameter(bidResponse, "bidResponse");
        return this.a.a(this.c, bidResponse);
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final Placement setPlacementListener(PlacementListener placementListener) {
        this.f4610d = placementListener;
        return this;
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final void setType(PlacementType placementType) {
        Intrinsics.checkNotNullParameter(placementType, "<set-?>");
        this.b = placementType;
    }

    @Override // com.hyprmx.android.sdk.placement.Placement
    public final void showAd() {
        if (this.b != PlacementType.INVALID) {
            this.a.c(this.c);
            return;
        }
        HyprMXLog.e("showAd called on an invalid placement!");
        PlacementListener placementListener = this.f4610d;
        if (placementListener != null) {
            placementListener.onAdStarted(this);
        }
        PlacementListener placementListener2 = this.f4610d;
        if (placementListener2 != null) {
            placementListener2.onAdDisplayError(this, HyprMXErrors.PLACEMENT_DOES_NOT_EXIST);
        }
        PlacementListener placementListener3 = this.f4610d;
        if (placementListener3 != null) {
            placementListener3.onAdClosed(this, false);
        }
    }
}
