package com.gameloft.glads;

import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class AndroidAds {
    long parent;
    b volumeObserver;

    public AndroidAds(long j) {
        this.volumeObserver = null;
        this.parent = j;
        if (Build.VERSION.SDK_INT >= 19) {
            this.volumeObserver = new b(this);
        }
        MoatSDK.StartAnalytics();
        OmSDK.StartAnalytics();
    }

    public static native void NativeOnVolumeChanged(long j);

    public void OnVolumeChanged() {
        NativeOnVolumeChanged(this.parent);
    }

    public void Release() {
        b bVar = this.volumeObserver;
        if (bVar != null) {
            bVar.b();
        }
    }
}
