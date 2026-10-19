package com.vungle.ads;

import com.json.o2;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.vungle.ads.t1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: VungleError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/PlacementNotFoundError;", "Lcom/vungle/ads/VungleError;", o2.i, "", "(Ljava/lang/String;)V", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class PlacementNotFoundError extends VungleError {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlacementNotFoundError(String placementId) {
        super(201, Sdk.SDKError.Reason.INVALID_PLACEMENT_ID, "Placement '" + placementId + "' is invalid", placementId, null, null, 48, null);
        Intrinsics.checkNotNullParameter(placementId, "placementId");
    }
}
