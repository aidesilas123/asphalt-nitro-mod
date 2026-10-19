package com.applovin.impl.sdk.b;

import android.content.Context;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.e.ac;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.m;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.SoftReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    private AppLovinAd aIN;
    private SoftReference<AppLovinAdLoadListener> aIO;
    private volatile String aIQ;
    protected final AppLovinAdServiceImpl age;
    private String agi;
    protected final n sdk;
    public final Map<String, Object> agg = Collections.synchronizedMap(new HashMap());
    private final Object aIP = new Object();
    private volatile boolean aIR = false;

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: com.applovin.impl.sdk.b.a$a, reason: collision with other inner class name */
    class C0079a implements AppLovinAdLoadListener {
        private final AppLovinAdLoadListener aIT;

        C0079a(AppLovinAdLoadListener appLovinAdLoadListener) {
            this.aIT = appLovinAdLoadListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void gN(int i) {
            try {
                this.aIT.failedToReceiveAd(i);
            } catch (Throwable th) {
                x.e("AppLovinIncentivizedInterstitial", "Unable to notify listener about ad load failure", th);
                a.this.sdk.Cs().d("IncentivizedAdController", "adLoadFailed", th);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: lambda$adReceived$0, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void a(AppLovinAd appLovinAd) {
            try {
                this.aIT.adReceived(appLovinAd);
            } catch (Throwable th) {
                x.e("AppLovinIncentivizedInterstitial", "Unable to notify ad listener about a newly loaded ad", th);
                a.this.sdk.Cs().d("IncentivizedAdController", "adLoaded", th);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(final AppLovinAd appLovinAd) {
            a.this.aIN = appLovinAd;
            if (this.aIT != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(appLovinAd);
                    }
                });
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(final int i) {
            if (this.aIT != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.gN(i);
                    }
                });
            }
        }
    }

    private class b implements com.applovin.impl.sdk.ad.h, AppLovinAdClickListener, AppLovinAdRewardListener, AppLovinAdVideoPlaybackListener {
        private final AppLovinAd aIU;
        private final AppLovinAdDisplayListener aIV;
        private final AppLovinAdClickListener aIW;
        private final AppLovinAdVideoPlaybackListener aIX;
        private final AppLovinAdRewardListener aIY;

        private b(AppLovinAd appLovinAd, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
            this.aIU = appLovinAd;
            this.aIV = appLovinAdDisplayListener;
            this.aIW = appLovinAdClickListener;
            this.aIX = appLovinAdVideoPlaybackListener;
            this.aIY = appLovinAdRewardListener;
        }

        private void f(com.applovin.impl.sdk.ad.e eVar) {
            int i;
            String str;
            a.this.sdk.BN();
            if (x.Fn()) {
                a.this.sdk.BN().f("IncentivizedAdController", "Finishing direct ad...");
            }
            String strJu = a.this.Ju();
            if (!StringUtils.isValidString(strJu) || !a.this.aIR) {
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().i("IncentivizedAdController", "Invalid reward state - result: " + strJu + " and wasFullyEngaged: " + a.this.aIR);
                }
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().f("IncentivizedAdController", "Cancelling any incoming reward requests for this ad");
                }
                eVar.yg();
                if (a.this.aIR) {
                    a.this.sdk.BN();
                    if (x.Fn()) {
                        a.this.sdk.BN().i("IncentivizedAdController", "User close the ad after fully watching but reward validation task did not return on time");
                    }
                    i = AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT;
                    str = "network_timeout";
                } else {
                    a.this.sdk.BN();
                    if (x.Fn()) {
                        a.this.sdk.BN().i("IncentivizedAdController", "User close the ad prematurely");
                    }
                    i = AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO;
                    str = "user_closed_video";
                }
                eVar.a(c.dn(str));
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().f("IncentivizedAdController", "Notifying listener of reward validation failure");
                }
                m.a(this.aIY, eVar, i);
            }
            if (eVar.GW().getAndSet(true)) {
                return;
            }
            a.this.sdk.BN();
            if (x.Fn()) {
                a.this.sdk.BN().f("IncentivizedAdController", "Scheduling report rewarded ad...");
            }
            a.this.sdk.BO().a(new com.applovin.impl.sdk.e.x(eVar, a.this.sdk), q.b.REWARD);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            m.a(this.aIW, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            m.a(this.aIV, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            String str;
            AppLovinAd appLovinAdHB = appLovinAd instanceof com.applovin.impl.sdk.ad.f ? ((com.applovin.impl.sdk.ad.f) appLovinAd).HB() : appLovinAd;
            if (appLovinAdHB instanceof com.applovin.impl.sdk.ad.e) {
                f((com.applovin.impl.sdk.ad.e) appLovinAdHB);
            } else {
                if (appLovinAdHB == null) {
                    str = "null/expired ad";
                } else {
                    str = "invalid ad of type: " + appLovinAdHB;
                }
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().i("IncentivizedAdController", "Received `adHidden` callback for " + str);
                }
            }
            a.this.f(appLovinAdHB);
            a.this.sdk.BN();
            if (x.Fn()) {
                a.this.sdk.BN().f("IncentivizedAdController", "Notifying listener of rewarded ad dismissal");
            }
            m.b(this.aIV, appLovinAd);
        }

        @Override // com.applovin.impl.sdk.ad.h
        public void onAdDisplayFailed(String str) {
            String str2;
            AppLovinAd appLovinAdHB = this.aIU;
            if (appLovinAdHB instanceof com.applovin.impl.sdk.ad.f) {
                appLovinAdHB = ((com.applovin.impl.sdk.ad.f) appLovinAdHB).HB();
            }
            boolean z = this.aIV instanceof com.applovin.impl.sdk.ad.h;
            if (appLovinAdHB instanceof com.applovin.impl.sdk.ad.e) {
                f((com.applovin.impl.sdk.ad.e) appLovinAdHB);
            } else {
                if (appLovinAdHB == null) {
                    str2 = "null/expired ad";
                } else {
                    str2 = "invalid ad of type: " + appLovinAdHB;
                }
                a.this.sdk.BN();
                if (x.Fn()) {
                    x xVarBN = a.this.sdk.BN();
                    StringBuilder sb = new StringBuilder();
                    sb.append("Received `");
                    sb.append(z ? "adDisplayFailed" : "adHidden");
                    sb.append("` callback for ");
                    sb.append(str2);
                    xVarBN.i("IncentivizedAdController", sb.toString());
                }
            }
            a.this.f(appLovinAdHB);
            if (z) {
                m.a(this.aIV, str);
            } else {
                m.b(this.aIV, this.aIU);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
            a.this.dm("quota_exceeded");
            m.b(this.aIY, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
            a.this.dm("rejected");
            m.c(this.aIY, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
            a.this.dm("accepted");
            m.a(this.aIY, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            a.this.dm("network_timeout");
            m.a(this.aIY, appLovinAd, i);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            m.a(this.aIX, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d2, boolean z) {
            m.a(this.aIX, appLovinAd, d2, z);
            a.this.aIR = z;
        }
    }

    public a(String str, AppLovinSdk appLovinSdk) {
        this.sdk = appLovinSdk.a();
        this.age = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
        this.agi = str;
    }

    private void Jt() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        SoftReference<AppLovinAdLoadListener> softReference = this.aIO;
        if (softReference == null || (appLovinAdLoadListener = softReference.get()) == null) {
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Ju() {
        String str;
        synchronized (this.aIP) {
            str = this.aIQ;
        }
        return str;
    }

    private AppLovinAdRewardListener Jv() {
        return new AppLovinAdRewardListener() { // from class: com.applovin.impl.sdk.b.a.1
            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().i("IncentivizedAdController", "User over quota: " + map);
                }
            }

            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().i("IncentivizedAdController", "Reward rejected: " + map);
                }
            }

            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().f("IncentivizedAdController", "Reward validated: " + map);
                }
            }

            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
                a.this.sdk.BN();
                if (x.Fn()) {
                    a.this.sdk.BN().i("IncentivizedAdController", "Reward validation failed: " + i);
                }
            }
        };
    }

    @Nullable
    private String a(AppLovinAd appLovinAd, AppLovinAd appLovinAd2) {
        if (appLovinAd == null) {
            x.H("IncentivizedAdController", "Unable to retrieve the loaded ad. This can occur when attempting to show an expired ad.: " + appLovinAd2);
            return "Unable to retrieve the loaded ad. This can occur when attempting to show an expired ad.";
        }
        if (appLovinAd2.getType() == AppLovinAdType.INCENTIVIZED || appLovinAd2.getType() == AppLovinAdType.AUTO_INCENTIVIZED) {
            return null;
        }
        x.H("IncentivizedAdController", "Attempting to display ad with invalid ad type: " + appLovinAd2.getType());
        return "Attempting to display ad with invalid ad type";
    }

    private void a(AppLovinAdImpl appLovinAdImpl, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        b bVar = new b(appLovinAdImpl, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        AppLovinAd appLovinAdA = u.a((AppLovinAd) appLovinAdImpl, this.sdk);
        String strA = a(appLovinAdA, appLovinAdImpl);
        if (StringUtils.isValidString(strA)) {
            a(appLovinAdImpl, strA, bVar, bVar);
            return;
        }
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreate = AppLovinInterstitialAd.create(this.sdk.getWrappingSdk(), context);
        for (String str : this.agg.keySet()) {
            appLovinInterstitialAdDialogCreate.setExtraInfo(str, this.agg.get(str));
        }
        appLovinInterstitialAdDialogCreate.setAdDisplayListener(bVar);
        appLovinInterstitialAdDialogCreate.setAdVideoPlaybackListener(bVar);
        appLovinInterstitialAdDialogCreate.setAdClickListener(bVar);
        appLovinInterstitialAdDialogCreate.showAndRender(appLovinAdA);
        a((com.applovin.impl.sdk.ad.e) appLovinAdA, bVar);
    }

    private void a(AppLovinAdImpl appLovinAdImpl, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        b bVar = new b(appLovinAdImpl, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        AppLovinAd appLovinAdA = u.a((AppLovinAd) appLovinAdImpl, this.sdk);
        String strA = a(appLovinAdA, appLovinAdImpl);
        if (StringUtils.isValidString(strA)) {
            a(appLovinAdImpl, strA, bVar, bVar);
            return;
        }
        AppLovinInterstitialAdDialog appLovinInterstitialAdDialogCreate = AppLovinInterstitialAd.create(this.sdk.getWrappingSdk(), context);
        for (String str : this.agg.keySet()) {
            appLovinInterstitialAdDialogCreate.setExtraInfo(str, this.agg.get(str));
        }
        appLovinInterstitialAdDialogCreate.setAdDisplayListener(bVar);
        appLovinInterstitialAdDialogCreate.setAdVideoPlaybackListener(bVar);
        appLovinInterstitialAdDialogCreate.setAdClickListener(bVar);
        appLovinInterstitialAdDialogCreate.showAndRender(appLovinAdA, viewGroup, lifecycle);
        a((com.applovin.impl.sdk.ad.e) appLovinAdA, bVar);
    }

    private void a(com.applovin.impl.sdk.ad.e eVar, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.sdk.BO().a(new ac(eVar, appLovinAdRewardListener, this.sdk), q.b.REWARD);
    }

    private void a(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl = appLovinAd != null ? (AppLovinAdImpl) appLovinAd : (AppLovinAdImpl) this.aIN;
        if (appLovinAdImpl != null) {
            a(appLovinAdImpl, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        } else {
            x.H("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            Jt();
        }
    }

    private void a(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl = appLovinAd != null ? (AppLovinAdImpl) appLovinAd : (AppLovinAdImpl) this.aIN;
        if (appLovinAdImpl != null) {
            a(appLovinAdImpl, viewGroup, lifecycle, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        } else {
            x.H("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
            Jt();
        }
    }

    private void a(AppLovinAd appLovinAd, String str, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, com.applovin.impl.sdk.ad.h hVar) {
        this.sdk.BR().a(com.applovin.impl.sdk.d.f.aTd);
        m.a(appLovinAdVideoPlaybackListener, appLovinAd, 0.0d, false);
        m.a(hVar, str);
    }

    private void b(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.age.loadNextIncentivizedAd(this.agi, appLovinAdLoadListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dm(String str) {
        synchronized (this.aIP) {
            this.aIQ = str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAd2 = this.aIN;
        if (appLovinAd2 == null) {
            return;
        }
        if (!(appLovinAd2 instanceof com.applovin.impl.sdk.ad.f)) {
            if (appLovinAd == appLovinAd2) {
                this.aIN = null;
            }
        } else {
            com.applovin.impl.sdk.ad.f fVar = (com.applovin.impl.sdk.ad.f) appLovinAd2;
            if (fVar.HB() == null || appLovinAd == fVar.HB()) {
                this.aIN = null;
            }
        }
    }

    public boolean Js() {
        return this.aIN != null;
    }

    public void a(AppLovinAd appLovinAd, Context context, String str, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener = Jv();
        }
        a(appLovinAd, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    public String getZoneId() {
        return this.agi;
    }

    public void preload(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.sdk.BN();
        if (x.Fn()) {
            this.sdk.BN().f("IncentivizedAdController", "User requested preload of incentivized ad...");
        }
        this.aIO = new SoftReference<>(appLovinAdLoadListener);
        if (!Js()) {
            b(new C0079a(appLovinAdLoadListener));
            return;
        }
        x.H("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(this.aIN);
        }
    }

    public void setExtraInfo(String str, Object obj) {
        this.agg.put(str, obj);
    }

    public void show(AppLovinAd appLovinAd, ViewGroup viewGroup, Lifecycle lifecycle, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        a(appLovinAd, viewGroup, lifecycle, context, appLovinAdRewardListener == null ? Jv() : appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }
}
