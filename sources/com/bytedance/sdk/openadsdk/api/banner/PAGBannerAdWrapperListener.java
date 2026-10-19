package com.bytedance.sdk.openadsdk.api.banner;

import android.view.View;

/* JADX INFO: loaded from: classes2.dex */
public interface PAGBannerAdWrapperListener {
    void onAdClicked(View view, int i);

    void onAdDismissed();

    void onAdShow(View view, int i);

    void onRenderFail(View view, String str, int i);

    void onRenderSuccess(View view, float f2, float f3);
}
