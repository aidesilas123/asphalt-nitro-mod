package com.applovin.impl.mediation.ads;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.d;
import com.applovin.impl.sdk.b;
import com.applovin.impl.sdk.e.ab;
import com.applovin.impl.sdk.e.q;
import com.applovin.impl.sdk.f;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.u;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class MaxNativeAdLoaderImpl extends com.applovin.impl.mediation.ads.a implements b.a, f.a {
    public static final String KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE = "ad_request_type";
    private String amN;
    private String amS;
    private final Object amY;
    private final a anE;
    private d.a anF;
    private MaxNativeAdListener anG;
    private final Map<String, MaxNativeAdView> anH;
    private final Set<com.applovin.impl.mediation.b.d> anI;

    /* JADX INFO: Access modifiers changed from: private */
    class a implements a.InterfaceC0060a {
        private a() {
        }

        private void c(MaxNativeAdView maxNativeAdView) {
            com.applovin.impl.mediation.b.d dVarUz;
            b adViewTracker = maxNativeAdView.getAdViewTracker();
            if (adViewTracker == null || (dVarUz = adViewTracker.uz()) == null) {
                return;
            }
            x xVar = MaxNativeAdLoaderImpl.this.logger;
            if (x.Fn()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.f(maxNativeAdLoaderImpl.tag, "Destroying previous ad");
            }
            MaxNativeAdLoaderImpl.this.destroy(dVarUz);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(MaxAd maxAd) {
            x xVar = MaxNativeAdLoaderImpl.this.logger;
            if (x.Fn()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.f(maxNativeAdLoaderImpl.tag, "Native ad loaded");
            }
            com.applovin.impl.mediation.b.d dVar = (com.applovin.impl.mediation.b.d) maxAd;
            dVar.setPlacement(MaxNativeAdLoaderImpl.this.amN);
            dVar.setCustomData(MaxNativeAdLoaderImpl.this.amS);
            MaxNativeAdLoaderImpl.this.sdk.Co().V(dVar);
            synchronized (MaxNativeAdLoaderImpl.this.amY) {
                MaxNativeAdLoaderImpl.this.anI.add(dVar);
            }
            MaxNativeAdView maxNativeAdViewBF = MaxNativeAdLoaderImpl.this.bF(dVar.getLoadTag());
            if (maxNativeAdViewBF == null) {
                x xVar2 = MaxNativeAdLoaderImpl.this.logger;
                if (x.Fn()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl2 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl2.logger.f(maxNativeAdLoaderImpl2.tag, "No custom view provided, checking template");
                }
                String strYn = dVar.yn();
                if (StringUtils.isValidString(strYn)) {
                    x xVar3 = MaxNativeAdLoaderImpl.this.logger;
                    if (x.Fn()) {
                        MaxNativeAdLoaderImpl maxNativeAdLoaderImpl3 = MaxNativeAdLoaderImpl.this;
                        maxNativeAdLoaderImpl3.logger.f(maxNativeAdLoaderImpl3.tag, "Using template: " + strYn + "...");
                    }
                    maxNativeAdViewBF = new MaxNativeAdView(strYn, com.applovin.impl.sdk.n.getApplicationContext());
                }
            }
            if (maxNativeAdViewBF == null) {
                x xVar4 = MaxNativeAdLoaderImpl.this.logger;
                if (x.Fn()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl4 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl4.logger.f(maxNativeAdLoaderImpl4.tag, "No native ad view to render. Returning the native ad to be rendered later.");
                }
                x xVar5 = MaxNativeAdLoaderImpl.this.logger;
                if (x.Fn()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl5 = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl5.logger.f(maxNativeAdLoaderImpl5.tag, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=null, nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.anG);
                }
                com.applovin.impl.sdk.utils.m.a(MaxNativeAdLoaderImpl.this.anG, (MaxNativeAdView) null, maxAd, true, true);
                MaxNativeAdLoaderImpl.this.a(dVar);
                return;
            }
            c(maxNativeAdViewBF);
            MaxNativeAdLoaderImpl.this.a(maxNativeAdViewBF, dVar, dVar.getNativeAd());
            x xVar6 = MaxNativeAdLoaderImpl.this.logger;
            if (x.Fn()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl6 = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl6.logger.f(maxNativeAdLoaderImpl6.tag, "MaxNativeAdListener.onNativeAdLoaded(nativeAdView=" + maxNativeAdViewBF + ", nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.anG);
            }
            com.applovin.impl.sdk.utils.m.a(MaxNativeAdLoaderImpl.this.anG, maxNativeAdViewBF, maxAd, true, true);
            MaxNativeAdLoaderImpl.this.a(dVar);
            MaxNativeAdLoaderImpl.this.b(maxNativeAdViewBF);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(@NonNull MaxAd maxAd) {
            x xVar = MaxNativeAdLoaderImpl.this.logger;
            if (x.Fn()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.f(maxNativeAdLoaderImpl.tag, "MaxNativeAdListener.onNativeAdClicked(nativeAd=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.anG);
            }
            com.applovin.impl.sdk.utils.m.a(MaxNativeAdLoaderImpl.this.anG, maxAd, true, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(@NonNull MaxAd maxAd, @NonNull MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(@NonNull MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(@NonNull MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(@NonNull String str, @NonNull MaxError maxError) {
            MaxNativeAdLoaderImpl.this.bF(((MaxErrorImpl) maxError).getLoadTag());
            x xVar = MaxNativeAdLoaderImpl.this.logger;
            if (x.Fn()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.f(maxNativeAdLoaderImpl.tag, "MaxNativeAdListener.onNativeAdLoadFailed(adUnitId=" + str + ", error=" + maxError + "), listener=" + MaxNativeAdLoaderImpl.this.anG);
            }
            com.applovin.impl.sdk.utils.m.a(MaxNativeAdLoaderImpl.this.anG, str, maxError, true, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(@NonNull final MaxAd maxAd) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.s
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.f(maxAd);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdRequestListener
        public void onAdRequestStarted(@NonNull String str) {
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(@NonNull MaxAd maxAd) {
            x xVar = MaxNativeAdLoaderImpl.this.logger;
            if (x.Fn()) {
                MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                maxNativeAdLoaderImpl.logger.f(maxNativeAdLoaderImpl.tag, "MaxAdRevenueListener.onAdRevenuePaid(ad=" + maxAd + "), listener=" + MaxNativeAdLoaderImpl.this.revenueListener);
            }
            com.applovin.impl.sdk.utils.m.a(MaxNativeAdLoaderImpl.this.revenueListener, maxAd, true, true);
        }
    }

    public MaxNativeAdLoaderImpl(String str, com.applovin.impl.sdk.n nVar) {
        super(str, MaxAdFormat.NATIVE, "MaxNativeAdLoader", nVar);
        this.anE = new a();
        this.anF = d.a.PUBLISHER_INITIATED;
        this.amY = new Object();
        this.anH = new HashMap();
        this.anI = new HashSet();
        nVar.Cv().a(this);
        if (x.Fn()) {
            this.logger.f(this.tag, "Created new MaxNativeAdLoader (" + this + ")");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.mediation.b.d dVar) {
        if (dVar.yo().get()) {
            return;
        }
        this.sdk.Cb().a(dVar, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final MaxNativeAdView maxNativeAdView, final com.applovin.impl.mediation.b.d dVar, final MaxNativeAd maxNativeAd) {
        dVar.setNativeAdView(maxNativeAdView);
        g(dVar);
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl.2
            @Override // java.lang.Runnable
            public void run() {
                x xVar = MaxNativeAdLoaderImpl.this.logger;
                if (x.Fn()) {
                    MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                    maxNativeAdLoaderImpl.logger.f(maxNativeAdLoaderImpl.tag, "Rendering native ad view: " + maxNativeAdView);
                }
                maxNativeAdView.render(dVar, MaxNativeAdLoaderImpl.this.anE, MaxNativeAdLoaderImpl.this.sdk);
                maxNativeAd.setNativeAdView(maxNativeAdView);
                if (maxNativeAd.prepareForInteraction(maxNativeAdView.getClickableViews(), maxNativeAdView)) {
                    return;
                }
                maxNativeAd.prepareViewForInteraction(maxNativeAdView);
            }
        };
        if (maxNativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        } else {
            this.sdk.BO().a(new ab(this.sdk, "renderMaxNativeAd", runnable), q.b.MEDIATION_MAIN);
        }
    }

    private void a(String str, MaxNativeAdView maxNativeAdView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.amY) {
            this.anH.put(str, maxNativeAdView);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(MaxNativeAdView maxNativeAdView) {
        b adViewTracker = maxNativeAdView.getAdViewTracker();
        if (adViewTracker != null) {
            if (com.applovin.impl.sdk.utils.h.KW()) {
                if (maxNativeAdView.isAttachedToWindow()) {
                    adViewTracker.uy();
                }
            } else if (maxNativeAdView.getParent() != null) {
                adViewTracker.uy();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public MaxNativeAdView bF(String str) {
        MaxNativeAdView maxNativeAdViewRemove;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.amY) {
            maxNativeAdViewRemove = this.anH.remove(str);
        }
        return maxNativeAdViewRemove;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void destroy() {
        this.anG = null;
        this.sdk.Cv().b(this);
        synchronized (this.amY) {
            this.anH.clear();
            this.anI.clear();
        }
        super.destroy();
    }

    public void destroy(MaxAd maxAd) {
        b adViewTracker;
        if (!(maxAd instanceof com.applovin.impl.mediation.b.d)) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Destroy failed on non-native ad(" + maxAd + ")");
                return;
            }
            return;
        }
        com.applovin.impl.mediation.b.d dVar = (com.applovin.impl.mediation.b.d) maxAd;
        if (dVar.ur()) {
            if (x.Fn()) {
                this.logger.f(this.tag, "Native ad (" + dVar + ") has already been destroyed");
                return;
            }
            return;
        }
        synchronized (this.amY) {
            this.anI.remove(dVar);
        }
        MaxNativeAdView maxNativeAdViewYl = dVar.yl();
        if (maxNativeAdViewYl != null && (adViewTracker = maxNativeAdViewYl.getAdViewTracker()) != null && maxAd.equals(adViewTracker.uz())) {
            maxNativeAdViewYl.recycle();
        }
        MaxNativeAd nativeAd = dVar.getNativeAd();
        if (nativeAd != null && nativeAd.getAdViewTracker() != null) {
            nativeAd.getAdViewTracker().destroy();
        }
        this.sdk.Cb().a(dVar);
        this.sdk.Cy().destroyAd(dVar);
        this.sdk.CD().o(this.adUnitId, dVar.getLoadTag());
    }

    public String getPlacement() {
        return this.amN;
    }

    public void handleNativeAdViewRendered(MaxAd maxAd) {
        MaxNativeAd nativeAd = ((com.applovin.impl.mediation.b.d) maxAd).getNativeAd();
        if (nativeAd == null) {
            if (x.Fn()) {
                this.logger.i(this.tag, "Failed to handle native ad rendered. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        b adViewTracker = nativeAd.getAdViewTracker();
        if (adViewTracker != null) {
            adViewTracker.uy();
        } else if (x.Fn()) {
            this.logger.i(this.tag, "Failed to handle native ad rendered. Could not retrieve tracker. Ad might not have been registered via MaxNativeAdLoader.a(...).");
        }
    }

    public void loadAd(@Nullable MaxNativeAdView maxNativeAdView) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Loading native ad for '" + this.adUnitId + "' into '" + maxNativeAdView + "' and notifying " + this.anE + "...");
        }
        this.extraParameters.put("integration_type", maxNativeAdView != null ? "custom_ad_view" : "no_ad_view");
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        a(lowerCase, maxNativeAdView);
        this.sdk.Cy().loadAd(this.adUnitId, lowerCase, MaxAdFormat.NATIVE, this.anF, this.localExtraParameters, this.extraParameters, com.applovin.impl.sdk.n.getApplicationContext(), this.anE);
    }

    @Override // com.applovin.impl.sdk.b.a
    public void onAdExpired(com.applovin.impl.sdk.ad.g gVar) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Ad expired for ad unit id " + getAdUnitId());
        }
        if (x.Fn()) {
            this.logger.f(this.tag, "MaxNativeAdListener.onNativeAdExpired(nativeAd=" + gVar + "), listener=" + this.anG);
        }
        com.applovin.impl.sdk.utils.m.b(this.anG, (MaxAd) gVar, true, true);
    }

    @Override // com.applovin.impl.sdk.f.a
    public void onCreativeIdGenerated(String str, String str2) {
        com.applovin.impl.mediation.b.d next;
        Iterator<com.applovin.impl.mediation.b.d> it = this.anI.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            } else {
                next = it.next();
                if (next.xA().equalsIgnoreCase(str)) {
                    break;
                }
            }
        }
        if (next != null) {
            next.bV(str2);
            com.applovin.impl.sdk.utils.m.a(this.adReviewListener, str2, next);
            synchronized (this.amY) {
                this.anI.remove(next);
            }
        }
    }

    public void registerClickableViews(final List<View> list, final ViewGroup viewGroup, MaxAd maxAd) {
        com.applovin.impl.mediation.b.d dVar = (com.applovin.impl.mediation.b.d) maxAd;
        final MaxNativeAd nativeAd = dVar.getNativeAd();
        if (nativeAd == null) {
            if (x.Fn()) {
                this.logger.i(this.tag, "Failed to register native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
                return;
            }
            return;
        }
        dVar.c(viewGroup);
        this.sdk.Co().V(dVar);
        g(dVar);
        nativeAd.setClickableViews(list);
        nativeAd.setAdViewTracker(new b(dVar, viewGroup, this.anE, this.sdk));
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl.1
            @Override // java.lang.Runnable
            public void run() {
                if (nativeAd.prepareForInteraction(list, viewGroup)) {
                    return;
                }
                x.H(MaxNativeAdLoaderImpl.this.tag, "Failed to prepare native ad for interaction...");
            }
        };
        if (nativeAd.shouldPrepareViewForInteractionOnMainThread()) {
            AppLovinSdkUtils.runOnUiThread(runnable);
        } else {
            this.sdk.BO().a(new ab(this.sdk, "renderMaxNativeAd", runnable), q.b.MEDIATION_MAIN);
        }
    }

    public boolean render(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
        if (!(maxAd instanceof com.applovin.impl.mediation.b.d)) {
            x.H(this.tag, "Failed to render native ad. `ad` needs to be of type `MediatedNativeAd` to render.");
            return false;
        }
        if (maxNativeAdView == null) {
            x.H(this.tag, "Failed to render native ad. `adView` to render cannot be null.");
            return false;
        }
        com.applovin.impl.mediation.b.d dVar = (com.applovin.impl.mediation.b.d) maxAd;
        MaxNativeAd nativeAd = dVar.getNativeAd();
        if (nativeAd == null) {
            if (x.Fn()) {
                this.logger.i(this.tag, "Failed to render native ad. Could not retrieve MaxNativeAd. The ad may have already been destroyed.");
            }
            return false;
        }
        if (nativeAd.isExpired() && !((Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aJJ)).booleanValue()) {
            x.H(this.tag, "Cancelled rendering for expired native ad. Check if an ad is expired before displaying using `MaxAd.getNativeAd().isExpired()`");
            return false;
        }
        a(maxNativeAdView, dVar, nativeAd);
        b(maxNativeAdView);
        return true;
    }

    public void setCustomData(String str) {
        u.N(str, this.tag);
        this.amS = str;
    }

    @Override // com.applovin.impl.mediation.ads.a
    public void setLocalExtraParameter(String str, Object obj) {
        super.setLocalExtraParameter(str, obj);
        if (KEY_EXTRA_PARAMETER_AD_REQUEST_TYPE.equalsIgnoreCase(str) && (obj instanceof d.a)) {
            this.anF = (d.a) obj;
        }
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        if (x.Fn()) {
            this.logger.f(this.tag, "Setting native ad listener: " + maxNativeAdListener);
        }
        this.anG = maxNativeAdListener;
    }

    public void setPlacement(String str) {
        this.amN = str;
    }

    @NonNull
    public String toString() {
        return "MaxNativeAdLoader{adUnitId='" + this.adUnitId + "', nativeAdListener=" + this.anG + ", revenueListener=" + this.revenueListener + '}';
    }
}
