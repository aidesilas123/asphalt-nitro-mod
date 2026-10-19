package com.bytedance.sdk.openadsdk;

import android.content.Context;
import com.bytedance.sdk.openadsdk.api.interstitial.PAGInterstitialAdLoadListener;
import com.bytedance.sdk.openadsdk.api.reward.PAGRewardedAdLoadListener;
import com.bytedance.sdk.openadsdk.component.c.b;
import com.bytedance.sdk.openadsdk.component.reward.e;
import com.bytedance.sdk.openadsdk.component.reward.g;
import com.bytedance.sdk.openadsdk.component.reward.j;
import com.bytedance.sdk.openadsdk.component.reward.l;

/* JADX INFO: loaded from: classes2.dex */
public class TTC3Proxy {
    public static void a(Context context) {
        try {
            l.a(context).a();
        } catch (Throwable unused) {
        }
        try {
            e.a(context).a();
        } catch (Throwable unused2) {
        }
    }

    public static void loadFull(Context context, AdSlot adSlot, PAGInterstitialAdLoadListener pAGInterstitialAdLoadListener) {
        adSlot.setDurationSlotType(8);
        e.a(context).a(adSlot, new b(pAGInterstitialAdLoadListener));
    }

    public static void loadReward(Context context, AdSlot adSlot, PAGRewardedAdLoadListener pAGRewardedAdLoadListener) {
        adSlot.setDurationSlotType(7);
        l.a(context).a(adSlot, new g(pAGRewardedAdLoadListener));
    }

    public static void verityPlayable(String str, int i, String str2, String str3, String str4) {
        j.a(str, i, str2, str3, str4);
    }
}
