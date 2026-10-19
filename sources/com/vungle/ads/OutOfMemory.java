package com.vungle.ads;

import com.vungle.ads.internal.protos.Sdk;
import kotlin.Metadata;

/* JADX INFO: renamed from: com.vungle.ads.r1, reason: from Kotlin metadata */
/* JADX INFO: compiled from: VungleError.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"Lcom/vungle/ads/OutOfMemory;", "Lcom/vungle/ads/VungleError;", "()V", "vungle-ads_release"}, mv = {1, 7, 1}, xi = 48)
public final class OutOfMemory extends VungleError {
    public OutOfMemory() {
        super(3001, Sdk.SDKError.Reason.OUT_OF_MEMORY, "Config: Out of Memory", null, null, null, 56, null);
    }
}
