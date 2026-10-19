package com.json.mediationsdk.adunit.adapter;

import android.app.Activity;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.BaseAdapter;
import com.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.listener.NativeAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseNativeAd<NetworkAdapter extends BaseAdapter> extends BaseAdAdapter<NetworkAdapter, NativeAdListener> implements AdapterNativeAdInterface<NativeAdListener> {
    public BaseNativeAd(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.NATIVE_AD, networkSettings);
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public abstract /* synthetic */ void destroyAd(AdData adData);

    /* JADX WARN: Incorrect types in method signature: (Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;TListener;)V */
    /* JADX WARN: Unknown type variable: Listener in type: Listener */
    @Override // com.json.mediationsdk.adunit.adapter.internal.AdapterNativeAdInterface
    public abstract /* synthetic */ void loadAd(AdData adData, Activity activity, AdapterAdListener adapterAdListener);
}
