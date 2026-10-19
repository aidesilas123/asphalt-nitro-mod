package com.kidoz.sdk.api.general;

import android.app.Activity;
import com.kidoz.sdk.api.ads.fullscreen.interstitial.InterstitialManager;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedManager;

/* JADX INFO: loaded from: classes4.dex */
public class MemoryManager {
    public static void init() {
        InterstitialManager.resetSession();
        RewardedManager.resetSession();
    }

    public static void onActivityDestroyed(Activity activity) {
        int iHashCode = activity.hashCode();
        InterstitialManager.clearActivitySession(iHashCode);
        RewardedManager.clearActivitySession(iHashCode);
    }
}
