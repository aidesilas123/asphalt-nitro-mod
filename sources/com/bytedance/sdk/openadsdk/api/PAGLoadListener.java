package com.bytedance.sdk.openadsdk.api;

import androidx.annotation.MainThread;
import com.bytedance.sdk.openadsdk.common.b;

/* JADX INFO: loaded from: classes2.dex */
public interface PAGLoadListener<Ad> extends b {
    @MainThread
    void onAdLoaded(Ad ad);

    @Override // com.bytedance.sdk.openadsdk.common.b
    @MainThread
    void onError(int i, String str);
}
