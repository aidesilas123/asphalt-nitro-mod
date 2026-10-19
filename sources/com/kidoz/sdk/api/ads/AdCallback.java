package com.kidoz.sdk.api.ads;

import com.kidoz.sdk.api.general.KidozError;

/* JADX INFO: loaded from: classes4.dex */
public interface AdCallback<T> {
    void onAdClosed(T t);

    void onAdFailedToLoad(KidozError kidozError);

    void onAdFailedToShow(KidozError kidozError);

    void onAdImpression();

    void onAdLoaded(T t);

    void onAdShown(T t);
}
