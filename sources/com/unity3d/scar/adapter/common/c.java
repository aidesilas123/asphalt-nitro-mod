package com.unity3d.scar.adapter.common;

/* JADX INFO: compiled from: IScarAdListenerWrapper.java */
/* JADX INFO: loaded from: classes4.dex */
public interface c {
    void onAdClicked();

    void onAdClosed();

    void onAdFailedToLoad(int i, String str);

    void onAdLoaded();

    void onAdOpened();
}
