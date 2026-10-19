package com.hyprmx.android.sdk.banner;

import com.hyprmx.android.sdk.core.HyprMXErrors;

/* JADX INFO: loaded from: classes2.dex */
public interface f extends com.hyprmx.android.sdk.core.d, com.hyprmx.android.sdk.overlay.i {
    void loadAdFailure(HyprMXErrors hyprMXErrors);

    void loadAdSuccess();

    void onAdClicked();

    void reloadWebView();

    void removePresenter();

    void startVisibilityTracking(long j, int i);

    void stopVisibilityTracking();
}
