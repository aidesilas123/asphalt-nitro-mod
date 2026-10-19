package com.kidoz.sdk.api.ads.fullscreen;

import android.app.Activity;
import com.kidoz.sdk.api.ads.AdCallback;
import com.kidoz.sdk.api.ads.fullscreen.rewarded.RewardedAd;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class KidozFullScreenAdManager {
    protected static String TAG = "";
    private final ConcurrentHashMap<String, WeakReference<FullScreenAd>> adInstances = new ConcurrentHashMap<>();

    private static abstract class InternalFullScreenEventListener implements BaseInterstitial.IOnInterstitialEventListener {
        private final String instanceId;

        InternalFullScreenEventListener(String str) {
            this.instanceId = str;
        }
    }

    protected KidozFullScreenAdManager() {
        TAG = getClass().getSimpleName();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void removeAdInstance(String str) {
        FullScreenAd fullScreenAd;
        WeakReference<FullScreenAd> weakReferenceRemove = this.adInstances.remove(str);
        if (weakReferenceRemove == null || (fullScreenAd = weakReferenceRemove.get()) == null) {
            return;
        }
        fullScreenAd.destroy();
    }

    public void clearActivitySession_(int i) {
        FullScreenAd fullScreenAd;
        Iterator<String> it = this.adInstances.keySet().iterator();
        while (it.hasNext()) {
            WeakReference<FullScreenAd> weakReference = this.adInstances.get(it.next());
            if (weakReference != null && (fullScreenAd = weakReference.get()) != null && i == fullScreenAd.getContextId()) {
                removeAdInstance(fullScreenAd.getInstanceId());
            }
        }
    }

    protected abstract FullScreenAd getNewAdInstance(Activity activity, String str);

    boolean isLoaded(String str) {
        FullScreenAd fullScreenAd;
        WeakReference<FullScreenAd> weakReference = this.adInstances.get(str);
        return (weakReference == null || weakReference.get() == null || (fullScreenAd = weakReference.get()) == null || !fullScreenAd.isLoaded()) ? false : true;
    }

    protected void loadFullScreenAd(Activity activity, final String str, final AdCallback adCallback) {
        WeakReference<FullScreenAd> weakReference = this.adInstances.get(str);
        if (weakReference != null && weakReference.get() != null) {
            if (isLoaded(str)) {
                adCallback.onAdLoaded(this.adInstances.get(str).get());
                return;
            } else {
                adCallback.onAdFailedToLoad(new KidozError(KidozError.Type.instanceAlreadyLoading));
                return;
            }
        }
        final FullScreenAd newAdInstance = getNewAdInstance(activity, str);
        newAdInstance.setInternalFullScreenEventListener(new InternalFullScreenEventListener(str) { // from class: com.kidoz.sdk.api.ads.fullscreen.KidozFullScreenAdManager.1
            @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener
            public void onAdFailedToShow(KidozError kidozError) {
                KidozFullScreenAdManager.this.removeAdInstance(str);
                adCallback.onAdFailedToShow(kidozError);
            }

            @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener
            public void onAdImpression() {
                adCallback.onAdImpression();
            }

            @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener
            public void onAdLoaded() {
                adCallback.onAdLoaded(newAdInstance);
            }

            @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener
            public void onAdShown() {
                adCallback.onAdShown(newAdInstance);
            }

            @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener
            public void onClosed() {
                KidozFullScreenAdManager.this.removeAdInstance(str);
                adCallback.onAdClosed(newAdInstance);
            }

            @Override // com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial.IOnInterstitialEventListener
            public void onFailedToLoad(KidozError kidozError) {
                KidozFullScreenAdManager.this.removeAdInstance(str);
                adCallback.onAdFailedToLoad(kidozError);
            }
        });
        if (newAdInstance instanceof RewardedAd) {
            newAdInstance.setRewardedEventListener((BaseInterstitial.IOnInterstitialRewardedEventListener) adCallback);
        }
        this.adInstances.put(str, new WeakReference<>(newAdInstance));
        newAdInstance.load();
    }
}
