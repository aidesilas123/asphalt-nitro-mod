package com.hyprmx.android.sdk.preload;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface y {
    @RetainMethodSignature
    void cacheVastAssetForOffer(String str, String str2, boolean z);

    @RetainMethodSignature
    void commitVastOffer(String str, String str2);

    @RetainMethodSignature
    void preloadPortraitImage(String str, int i, int i2, Boolean bool);

    @RetainMethodSignature
    void preloadUIImage(String str, int i, int i2, Float f2, Boolean bool, Integer num, Integer num2);

    @RetainMethodSignature
    void removeInstance(String str);

    @RetainMethodSignature
    void removeVastOffer(String str);

    @RetainMethodSignature
    boolean resetVastCache();

    @RetainMethodSignature
    void retrieveVastOffer(String str);

    @RetainMethodSignature
    void storeInstance(String str);
}
