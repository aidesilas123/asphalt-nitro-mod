package com.json.mediationsdk;

import android.app.Activity;
import android.text.TextUtils;
import com.json.k8;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import com.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.model.NetworkSettings;
import java.lang.ref.WeakReference;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a<Listener extends AdapterAdListener> extends BaseAdAdapter<u, Listener> implements AdapterAdFullScreenInterface<Listener>, AdapterBannerInterface<Listener>, AdapterNativeAdInterface<Listener> {
    protected AbstractAdapter a;
    protected WeakReference<Listener> b;

    public a(AbstractAdapter abstractAdapter, NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        super(ad_unit, networkSettings, uuid);
        this.b = new WeakReference<>(null);
        this.a = abstractAdapter;
    }

    public static a<?> a(AbstractAdapter abstractAdapter, NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit, UUID uuid) {
        if (ad_unit == IronSource.AD_UNIT.REWARDED_VIDEO) {
            return new b0(abstractAdapter, networkSettings);
        }
        if (ad_unit == IronSource.AD_UNIT.INTERSTITIAL) {
            return new o(abstractAdapter, networkSettings);
        }
        if (ad_unit == IronSource.AD_UNIT.BANNER) {
            return new j(abstractAdapter, networkSettings);
        }
        if (ad_unit == IronSource.AD_UNIT.NATIVE_AD) {
            return new t(abstractAdapter, networkSettings, uuid);
        }
        IronLog.INTERNAL.error("ad unit not supported - " + ad_unit);
        return null;
    }

    private void d(AdData adData, Listener listener) {
        this.b = new WeakReference<>(listener);
        f(k8.a(adData.getConfiguration()), k8.a(adData.getAdUnitData()), adData);
    }

    private void h(String str) {
        IronLog.INTERNAL.error(c("Method '" + str + "' is not supported for " + getClass().getName()));
    }

    protected String b() {
        return c(null);
    }

    protected String c(String str) {
        String string = g().toString();
        if (TextUtils.isEmpty(str)) {
            return string;
        }
        return string + " - " + str;
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void destroyAd(AdData adData) {
        e(k8.a(adData.getConfiguration()));
    }

    protected void e(JSONObject jSONObject) {
        h("destroyAd");
    }

    protected abstract void f(JSONObject jSONObject, JSONObject jSONObject2, AdData adData);

    protected abstract IronSource.AD_UNIT g();

    protected boolean i(JSONObject jSONObject) {
        h("isAdAvailable");
        return false;
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public boolean isAdAvailable(AdData adData) {
        return i(k8.a(adData.getConfiguration()));
    }

    protected void j(JSONObject jSONObject) {
        h("showAd");
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface
    public void loadAd(AdData adData, Activity activity, ISBannerSize iSBannerSize, Listener listener) {
        d(adData, listener);
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void loadAd(AdData adData, Activity activity, Listener listener) {
        d(adData, listener);
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter
    public void releaseMemory() {
        IronLog.INTERNAL.verbose(b());
        AbstractAdapter abstractAdapter = this.a;
        if (abstractAdapter != null) {
            abstractAdapter.releaseMemory(g(), new JSONObject());
            this.a = null;
        }
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public void showAd(AdData adData, Listener listener) {
        this.b = new WeakReference<>(listener);
        j(k8.a(adData.getConfiguration()));
    }
}
