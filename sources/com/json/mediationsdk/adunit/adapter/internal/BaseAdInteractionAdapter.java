package com.json.mediationsdk.adunit.adapter.internal;

import android.app.Activity;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseAdInteractionAdapter<NetworkAdapter extends AdapterBaseInterface, Listener extends AdapterAdInteractionListener> extends BaseAdAdapter<NetworkAdapter, Listener> implements AdapterAdFullScreenInterface<Listener> {
    public BaseAdInteractionAdapter(IronSource.AD_UNIT ad_unit, NetworkSettings networkSettings) {
        super(ad_unit, networkSettings);
    }

    public abstract /* synthetic */ boolean isAdAvailable(AdData adData);

    public abstract /* synthetic */ void loadAd(AdData adData, Activity activity, Listener listener);

    public abstract /* synthetic */ void showAd(AdData adData, Listener listener);
}
