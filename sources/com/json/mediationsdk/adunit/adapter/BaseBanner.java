package com.json.mediationsdk.adunit.adapter;

import android.app.Activity;
import com.json.mediationsdk.ISBannerSize;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.BaseAdapter;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBannerInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.listener.BannerAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseBanner<NetworkAdapter extends BaseAdapter> extends BaseAdAdapter<NetworkAdapter, BannerAdListener> implements AdapterBannerInterface<BannerAdListener> {
    public BaseBanner(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.BANNER, networkSettings);
    }

    public abstract /* synthetic */ void destroyAd(AdData adData);

    /* JADX WARN: Incorrect types in method signature: (Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/ISBannerSize;TListener;)V */
    /* JADX WARN: Unknown type variable: Listener in type: Listener */
    public abstract /* synthetic */ void loadAd(AdData adData, Activity activity, ISBannerSize iSBannerSize, AdapterAdListener adapterAdListener);
}
