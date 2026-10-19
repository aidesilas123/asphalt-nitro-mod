package com.hyprmx.android.sdk.preload;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface v extends y {
    void a();

    com.hyprmx.android.sdk.webview.f b(String str);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void cacheVastAssetForOffer(String str, String str2, boolean z);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void commitVastOffer(String str, String str2);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void preloadPortraitImage(String str, int i, int i2, Boolean bool);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void preloadUIImage(String str, int i, int i2, Float f2, Boolean bool, Integer num, Integer num2);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void removeInstance(String str);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void removeVastOffer(String str);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ boolean resetVastCache();

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void retrieveVastOffer(String str);

    @Override // com.hyprmx.android.sdk.preload.y
    @RetainMethodSignature
    /* synthetic */ void storeInstance(String str);
}
