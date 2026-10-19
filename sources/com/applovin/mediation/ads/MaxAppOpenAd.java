package com.applovin.mediation.ads;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.applovin.impl.mediation.ads.MaxFullscreenAdImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.utils.u;
import com.applovin.mediation.MaxAdExpirationListener;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.sdk.AppLovinSdk;

/* JADX INFO: loaded from: classes.dex */
public class MaxAppOpenAd {
    private final MaxFullscreenAdImpl aYv;

    public MaxAppOpenAd(@NonNull String str, @NonNull Context context) {
        this(str, AppLovinSdk.getInstance(context));
    }

    public MaxAppOpenAd(@NonNull String str, @NonNull AppLovinSdk appLovinSdk) {
        a.logApiCall("MaxAppOpenAd", "MaxAppOpenAd(adUnitId=" + str + ", sdk=" + appLovinSdk + ")");
        this.aYv = new MaxFullscreenAdImpl(str.trim(), MaxAdFormat.APP_OPEN, null, "MaxAppOpenAd", appLovinSdk.a());
    }

    public void destroy() {
        this.aYv.logApiCall("destroy()");
        this.aYv.destroy();
    }

    @NonNull
    public String getAdUnitId() {
        return this.aYv.getAdUnitId();
    }

    public boolean isReady() {
        boolean zIsReady = this.aYv.isReady();
        this.aYv.logApiCall("isReady() " + zIsReady + " for ad unit id " + this.aYv.getAdUnitId());
        return zIsReady;
    }

    public void loadAd() {
        this.aYv.logApiCall("loadAd()");
        this.aYv.loadAd(null);
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        this.aYv.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.aYv.setAdReviewListener(maxAdReviewListener);
    }

    public void setExpirationListener(MaxAdExpirationListener maxAdExpirationListener) {
        this.aYv.logApiCall("setExpirationListener(listener=" + maxAdExpirationListener + ")");
        this.aYv.setExpirationListener(maxAdExpirationListener);
    }

    public void setExtraParameter(@NonNull String str, @Nullable String str2) {
        this.aYv.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.aYv.setExtraParameter(str, str2);
    }

    public void setListener(@Nullable MaxAdListener maxAdListener) {
        this.aYv.logApiCall("setListener(listener=" + maxAdListener + ")");
        this.aYv.setListener(maxAdListener);
    }

    public void setLocalExtraParameter(@NonNull String str, @Nullable Object obj) {
        this.aYv.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.aYv.setLocalExtraParameter(str, obj);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        this.aYv.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.aYv.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(@Nullable MaxAdRevenueListener maxAdRevenueListener) {
        this.aYv.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.aYv.setRevenueListener(maxAdRevenueListener);
    }

    public void showAd() {
        showAd(null);
    }

    public void showAd(@Nullable String str) {
        showAd(str, null);
    }

    public void showAd(@Nullable String str, @Nullable String str2) {
        this.aYv.logApiCall("showAd(placement=" + str + ", customData=" + str2 + ")");
        u.N(str2, "MaxAppOpenAd");
        this.aYv.showAd(str, str2, null);
    }

    @NonNull
    public String toString() {
        return "" + this.aYv;
    }
}
