package com.json.mediationsdk.adunit.adapter.listener;

import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;

/* JADX INFO: loaded from: classes4.dex */
public interface InterstitialAdListener extends AdapterAdInteractionListener {
    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdClicked();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    /* synthetic */ void onAdClosed();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    /* synthetic */ void onAdEnded();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str);

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadSuccess();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener, com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    /* synthetic */ void onAdOpened();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    /* synthetic */ void onAdShowFailed(int i, String str);

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    /* synthetic */ void onAdShowSuccess();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    /* synthetic */ void onAdStarted();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdInteractionListener
    /* synthetic */ void onAdVisible();
}
