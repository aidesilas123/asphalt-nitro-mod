package com.hyprmx.android.sdk.placement;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\f\u001a\u00020\rH&J\b\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0003H&J\u0012\u0010\u0012\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J\b\u0010\u0015\u001a\u00020\u000fH&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0018\u0010\u0006\u001a\u00020\u0007X¦\u000e¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000b¨\u0006\u0016À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/placement/Placement;", "", "name", "", "getName", "()Ljava/lang/String;", "type", "Lcom/hyprmx/android/sdk/placement/PlacementType;", "getType", "()Lcom/hyprmx/android/sdk/placement/PlacementType;", "setType", "(Lcom/hyprmx/android/sdk/placement/PlacementType;)V", "isAdAvailable", "", "loadAd", "", "loadAdWithBidResponse", "bidResponse", "setPlacementListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/hyprmx/android/sdk/placement/PlacementListener;", "showAd", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public interface Placement {
    String getName();

    PlacementType getType();

    boolean isAdAvailable();

    void loadAd();

    boolean loadAdWithBidResponse(String bidResponse);

    Placement setPlacementListener(PlacementListener listener);

    void setType(PlacementType placementType);

    void showAd();
}
