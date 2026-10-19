package com.json.mediationsdk.adunit.adapter.internal.listener;

import android.view.View;
import android.widget.FrameLayout;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;

/* JADX INFO: loaded from: classes4.dex */
public interface AdapterAdViewListener extends AdapterAdListener {
    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdClicked();

    void onAdLeftApplication();

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadFailed(AdapterErrorType adapterErrorType, int i, String str);

    @Override // com.json.mediationsdk.adunit.adapter.internal.listener.AdapterAdListener
    /* synthetic */ void onAdLoadSuccess();

    void onAdLoadSuccess(View view, FrameLayout.LayoutParams layoutParams);

    /* synthetic */ void onAdOpened();

    void onAdScreenDismissed();

    void onAdScreenPresented();
}
