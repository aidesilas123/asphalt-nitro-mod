package com.json.mediationsdk.adunit.adapter.internal.listener;

import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;

/* JADX INFO: loaded from: classes4.dex */
public interface AdapterAdInteractionListener extends AdapterAdListener {
    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdClicked();

    void onAdClosed();

    void onAdEnded();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str);

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadSuccess();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener, com.json.mediationsdk.adunit.adapter.listener.BannerAdListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    /* synthetic */ void onAdOpened();

    void onAdShowFailed(int i, String str);

    void onAdShowSuccess();

    void onAdStarted();

    void onAdVisible();
}
