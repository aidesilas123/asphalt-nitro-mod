package com.applovin.mediation.nativeAds.adPlacer;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.applovin.impl.mediation.b.d;
import com.applovin.impl.mediation.nativeAds.a.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.x;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class MaxAdPlacer implements b.a {
    private AppLovinSdkUtils.Size aYT;
    private MaxNativeAdViewBinder aYU;
    private final com.applovin.impl.mediation.nativeAds.a.a aYV;
    private final com.applovin.impl.mediation.nativeAds.a.b aYW;
    private Listener aYX;
    protected final x logger;
    protected final n sdk;

    public interface Listener {
        void onAdClicked(MaxAd maxAd);

        void onAdLoaded(int i);

        void onAdRemoved(int i);

        void onAdRevenuePaid(MaxAd maxAd);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, Context context) {
        this(maxAdPlacerSettings, AppLovinSdk.getInstance(context), context);
    }

    public MaxAdPlacer(MaxAdPlacerSettings maxAdPlacerSettings, AppLovinSdk appLovinSdk, Context context) {
        this.aYT = AppLovinSdkUtils.Size.ZERO;
        n nVarA = appLovinSdk.a();
        this.sdk = nVarA;
        x xVarBN = nVarA.BN();
        this.logger = xVarBN;
        this.aYV = new com.applovin.impl.mediation.nativeAds.a.a(maxAdPlacerSettings);
        this.aYW = new com.applovin.impl.mediation.nativeAds.a.b(maxAdPlacerSettings, context, this);
        if (x.Fn()) {
            xVarBN.f("MaxAdPlacer", "Initializing ad placer with settings: " + maxAdPlacerSettings);
        }
    }

    private void MN() {
        int iYM;
        while (this.aYW.yO() && (iYM = this.aYV.yM()) != -1) {
            if (x.Fn()) {
                this.logger.f("MaxAdPlacer", "Placing ad at position: " + iYM);
            }
            this.aYV.a(this.aYW.yP(), iYM);
            Listener listener = this.aYX;
            if (listener != null) {
                listener.onAdLoaded(iYM);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void MO() {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Clearing all cached ads");
        }
        this.aYV.clearAds();
        this.aYW.clearAds();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i, Collection collection) {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Clearing trailing ads after position " + i);
        }
        this.aYV.g(collection);
    }

    private void a(Collection<Integer> collection, Runnable runnable) {
        Iterator<Integer> it = collection.iterator();
        while (it.hasNext()) {
            this.aYW.destroyAd(this.aYV.gq(it.next().intValue()));
        }
        runnable.run();
        if (collection.isEmpty()) {
            return;
        }
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Removed " + collection.size() + " ads from stream: " + collection);
        }
        if (this.aYX != null) {
            Iterator<Integer> it2 = collection.iterator();
            while (it2.hasNext()) {
                this.aYX.onAdRemoved(it2.next().intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void hb(int i) {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Removing item at position: " + i);
        }
        this.aYV.removeItem(i);
    }

    public void clearAds() {
        a(this.aYV.yN(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.MO();
            }
        });
    }

    public Collection<Integer> clearTrailingAds(final int i) {
        final Collection<Integer> collectionGr = this.aYV.gr(i);
        if (!collectionGr.isEmpty()) {
            a(collectionGr, new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(i, collectionGr);
                }
            });
        }
        return collectionGr;
    }

    public void destroy() {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Destroying ad placer");
        }
        clearAds();
        this.aYW.destroy();
    }

    public long getAdItemId(int i) {
        if (isFilledPosition(i)) {
            return -System.identityHashCode(this.aYV.gq(i));
        }
        return 0L;
    }

    public AppLovinSdkUtils.Size getAdSize(int i, int i2) {
        if (isFilledPosition(i)) {
            AppLovinSdkUtils.Size size = this.aYT;
            boolean z = size != AppLovinSdkUtils.Size.ZERO;
            int iMin = Math.min(z ? size.getWidth() : 360, i2);
            d dVar = (d) this.aYV.gq(i);
            if ("small_template_1".equalsIgnoreCase(dVar.yn())) {
                return new AppLovinSdkUtils.Size(iMin, z ? this.aYT.getHeight() : 120);
            }
            if (MaxNativeAdView.MEDIUM_TEMPLATE_1.equalsIgnoreCase(dVar.yn())) {
                return new AppLovinSdkUtils.Size(iMin, (int) (((double) iMin) / (z ? ((double) this.aYT.getWidth()) / ((double) this.aYT.getHeight()) : 1.2d)));
            }
            if (z) {
                return this.aYT;
            }
            if (dVar.yl() != null) {
                View mainView = dVar.yl().getMainView();
                return new AppLovinSdkUtils.Size(mainView.getMeasuredWidth(), mainView.getMeasuredHeight());
            }
        }
        return AppLovinSdkUtils.Size.ZERO;
    }

    public int getAdjustedCount(int i) {
        return this.aYV.getAdjustedCount(i);
    }

    public int getAdjustedPosition(int i) {
        return this.aYV.getAdjustedPosition(i);
    }

    public int getOriginalPosition(int i) {
        return this.aYV.getOriginalPosition(i);
    }

    public void insertItem(int i) {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Inserting item at position: " + i);
        }
        this.aYV.insertItem(i);
    }

    public boolean isAdPosition(int i) {
        return this.aYV.isAdPosition(i);
    }

    public boolean isFilledPosition(int i) {
        return this.aYV.isFilledPosition(i);
    }

    public void loadAds() {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Loading ads");
        }
        this.aYW.loadAds();
    }

    public void moveItem(int i, int i2) {
        this.aYV.moveItem(i, i2);
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onAdRevenuePaid(MaxAd maxAd) {
        Listener listener = this.aYX;
        if (listener != null) {
            listener.onAdRevenuePaid(maxAd);
        }
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onNativeAdClicked(MaxAd maxAd) {
        Listener listener = this.aYX;
        if (listener != null) {
            listener.onAdClicked(maxAd);
        }
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onNativeAdLoadFailed(String str, MaxError maxError) {
        if (x.Fn()) {
            this.logger.i("MaxAdPlacer", "Native ad failed to load: " + maxError);
        }
    }

    @Override // com.applovin.impl.mediation.nativeAds.a.b.a
    public void onNativeAdLoaded() {
        if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Native ad enqueued");
        }
        MN();
    }

    public void removeItem(final int i) {
        a(isFilledPosition(i) ? Collections.singletonList(Integer.valueOf(i)) : Collections.emptyList(), new Runnable() { // from class: com.applovin.mediation.nativeAds.adPlacer.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.hb(i);
            }
        });
    }

    public void renderAd(int i, ViewGroup viewGroup) {
        MaxAd maxAdGq = this.aYV.gq(i);
        if (maxAdGq == null) {
            if (x.Fn()) {
                this.logger.f("MaxAdPlacer", "An ad is not available for position: " + i);
                return;
            }
            return;
        }
        MaxNativeAdView maxNativeAdViewYl = ((d) maxAdGq).yl();
        if (maxNativeAdViewYl == null) {
            if (this.aYU == null) {
                if (x.Fn()) {
                    this.logger.i("MaxAdPlacer", "Unable to render ad at position: " + i + ". If you're using a custom ad template, check that nativeAdViewBinder is set.");
                    return;
                }
                return;
            }
            maxNativeAdViewYl = new MaxNativeAdView(this.aYU, viewGroup.getContext());
            if (this.aYW.render(maxNativeAdViewYl, maxAdGq)) {
                if (x.Fn()) {
                    this.logger.f("MaxAdPlacer", "Rendered ad at position: " + i);
                }
            } else if (x.Fn()) {
                this.logger.i("MaxAdPlacer", "Unable to render ad at position: " + i);
            }
        } else if (x.Fn()) {
            this.logger.f("MaxAdPlacer", "Using pre-rendered ad at position: " + i);
        }
        for (int childCount = viewGroup.getChildCount(); childCount >= 0; childCount--) {
            if (viewGroup.getChildAt(childCount) instanceof MaxNativeAdView) {
                viewGroup.removeViewAt(childCount);
            }
        }
        if (maxNativeAdViewYl.getParent() != null) {
            ((ViewGroup) maxNativeAdViewYl.getParent()).removeView(maxNativeAdViewYl);
        }
        viewGroup.addView(maxNativeAdViewYl, -1, -1);
    }

    public void setAdSize(int i, int i2) {
        this.aYT = new AppLovinSdkUtils.Size(i, i2);
    }

    public void setListener(Listener listener) {
        this.aYX = listener;
    }

    public void setNativeAdViewBinder(MaxNativeAdViewBinder maxNativeAdViewBinder) {
        this.aYU = maxNativeAdViewBinder;
    }

    public void updateFillablePositions(int i, int i2) {
        this.aYV.Q(i, i2);
        if (i == -1 || i2 == -1) {
            return;
        }
        MN();
    }
}
