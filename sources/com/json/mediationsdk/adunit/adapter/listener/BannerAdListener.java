package com.json.mediationsdk.adunit.adapter.listener;

import android.view.View;
import android.widget.FrameLayout;
import com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;

/* JADX INFO: loaded from: classes4.dex */
public interface BannerAdListener extends AdapterAdViewListener {
    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdClicked();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    /* synthetic */ void onAdLeftApplication();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str);

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener, com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadSuccess();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    void onAdLoadSuccess(View view, FrameLayout.LayoutParams layoutParams);

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    /* synthetic */ void onAdOpened();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    /* synthetic */ void onAdScreenDismissed();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdViewListener
    /* synthetic */ void onAdScreenPresented();
}
