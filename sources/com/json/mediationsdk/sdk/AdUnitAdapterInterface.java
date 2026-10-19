package com.json.mediationsdk.sdk;

import com.json.mediationsdk.INetworkInitCallbackListener;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u00012\u00020\u0002¨\u0006\u0003"}, d2 = {"Lcom/ironsource/mediationsdk/sdk/AdUnitAdapterInterface;", "Lcom/ironsource/mediationsdk/sdk/ReleaseMemoryAdapterInterface;", "Lcom/ironsource/mediationsdk/INetworkInitCallbackListener;", "mediationsdk_release"}, mv = {1, 8, 0}, xi = 48)
public interface AdUnitAdapterInterface extends ReleaseMemoryAdapterInterface, INetworkInitCallbackListener {
    /* synthetic */ void onNetworkInitCallbackFailed(String str);

    /* synthetic */ void onNetworkInitCallbackSuccess();
}
