package com.json.mediationsdk.adunit.adapter;

import android.app.Activity;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.adunit.adapter.BaseAdapter;
import com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener;
import com.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.model.NetworkSettings;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseInterstitial<NetworkAdapter extends BaseAdapter> extends BaseAdInteractionAdapter<NetworkAdapter, InterstitialAdListener> {
    public BaseInterstitial(NetworkSettings networkSettings) {
        super(IronSource.AD_UNIT.INTERSTITIAL, networkSettings);
    }

    @Override // com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public abstract /* synthetic */ boolean isAdAvailable(AdData adData);

    /* JADX WARN: Incorrect types in method signature: (Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;TListener;)V */
    /* JADX WARN: Unknown type variable: Listener in type: Listener */
    @Override // com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public abstract /* synthetic */ void loadAd(AdData adData, Activity activity, AdapterAdListener adapterAdListener);

    /* JADX WARN: Incorrect types in method signature: (Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;TListener;)V */
    /* JADX WARN: Unknown type variable: Listener in type: Listener */
    @Override // com.json.mediationsdk.adunit.adapter.internal.BaseAdInteractionAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterAdFullScreenInterface
    public abstract /* synthetic */ void showAd(AdData adData, AdapterAdListener adapterAdListener);
}
