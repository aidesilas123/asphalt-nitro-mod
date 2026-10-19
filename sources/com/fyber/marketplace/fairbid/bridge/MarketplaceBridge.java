package com.fyber.marketplace.fairbid.bridge;

import android.content.Context;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.marketplace.fairbid.impl.d;

/* JADX INFO: loaded from: classes2.dex */
public abstract class MarketplaceBridge {
    public static final MarketplaceBridge a = new d();

    public static void currentAudienceAppliesCoppa() {
        InneractiveAdManager.currentAudienceAppliesToCoppa();
    }

    public static void currentAudienceIsAChild() {
        InneractiveAdManager.currentAudienceIsAChild();
    }

    public static String getVersion() {
        return InneractiveAdManager.getVersion();
    }

    public static MarketplaceBridge initialize(Context context, String str, String str2, boolean z) {
        InneractiveAdManager.initialize(context, str);
        IAConfigManager.M.t = str2;
        IAlog.a = z ? 2 : 5;
        return a;
    }

    public static boolean isChild() {
        return InneractiveAdManager.isCurrentUserAChild();
    }
}
