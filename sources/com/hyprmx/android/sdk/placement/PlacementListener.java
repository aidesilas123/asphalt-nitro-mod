package com.hyprmx.android.sdk.placement;

import com.hyprmx.android.sdk.core.HyprMXErrors;

/* JADX INFO: loaded from: classes2.dex */
public interface PlacementListener {
    void onAdAvailable(Placement placement);

    void onAdClosed(Placement placement, boolean z);

    void onAdDisplayError(Placement placement, HyprMXErrors hyprMXErrors);

    void onAdExpired(Placement placement);

    void onAdNotAvailable(Placement placement);

    void onAdStarted(Placement placement);
}
