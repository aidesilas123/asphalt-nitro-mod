package com.vungle.ads;

import com.json.o2;
import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.vungle.ads.s1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: VungleError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vungle/ads/PlacementAdTypeMismatchError;", "Lcom/vungle/ads/VungleError;", o2.i, "", "(Ljava/lang/String;)V", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class PlacementAdTypeMismatchError extends VungleError {
    public PlacementAdTypeMismatchError(String str) {
        super(207, Sdk.SDKError.Reason.PLACEMENT_AD_TYPE_MISMATCH, str + " Ad type does not match with placement type.", str, null, null, 48, null);
    }
}
