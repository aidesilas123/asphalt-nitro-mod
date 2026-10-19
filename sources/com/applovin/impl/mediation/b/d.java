package com.applovin.impl.mediation.b;

import android.os.SystemClock;
import android.view.ViewGroup;
import androidx.annotation.Nullable;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d extends e implements com.applovin.impl.sdk.ad.g {
    private final AtomicBoolean auD;
    private final AtomicBoolean auE;

    public d(int i, Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        super(i, map, jSONObject, jSONObject2, null, nVar);
        this.auD = new AtomicBoolean();
        this.auE = new AtomicBoolean();
    }

    private d(d dVar, com.applovin.impl.mediation.g gVar) {
        super(dVar.ah(), dVar.getLocalExtraParameters(), dVar.yz(), dVar.yy(), gVar, dVar.sdk);
        this.auD = new AtomicBoolean();
        this.auE = new AtomicBoolean();
    }

    private long yj() {
        long longFromAdObject = getLongFromAdObject("ad_expiration_ms", -1L);
        return longFromAdObject < 0 ? getLongFromFullResponse("ad_expiration_ms", ((Long) this.sdk.a(com.applovin.impl.sdk.c.a.aJI)).longValue()) : longFromAdObject;
    }

    public void c(@Nullable ViewGroup viewGroup) {
        this.auw.b(viewGroup);
    }

    @Override // com.applovin.impl.sdk.ad.g
    public long getTimeToLiveMillis() {
        return yj() - (SystemClock.elapsedRealtime() - xM());
    }

    public boolean isContainerClickable() {
        return b("inacc", (Boolean) this.sdk.a(com.applovin.impl.sdk.c.a.aKa)).booleanValue();
    }

    @Override // com.applovin.impl.mediation.b.a
    public a k(com.applovin.impl.mediation.g gVar) {
        return new d(this, gVar);
    }

    @Override // com.applovin.impl.sdk.ad.g
    public void setExpired() {
        MaxNativeAd nativeAd = getNativeAd();
        if (nativeAd != null) {
            nativeAd.setExpired();
        }
    }

    public void setNativeAdView(@Nullable MaxNativeAdView maxNativeAdView) {
        this.auw.a(maxNativeAdView);
    }

    public boolean ur() {
        return this.auw == null;
    }

    @Nullable
    public MaxNativeAdView yl() {
        return this.auw.ud();
    }

    @Nullable
    public ViewGroup ym() {
        return this.auw.ue();
    }

    public String yn() {
        return BundleUtils.getString("template", "", getServerParameters());
    }

    public AtomicBoolean yo() {
        return this.auD;
    }

    public AtomicBoolean yp() {
        return this.auE;
    }
}
