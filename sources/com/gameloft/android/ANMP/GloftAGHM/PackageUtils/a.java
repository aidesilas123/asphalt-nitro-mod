package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.media.AudioManager;

/* JADX INFO: compiled from: AudioListenerPlugin.java */
/* JADX INFO: loaded from: classes2.dex */
class a implements AudioManager.OnAudioFocusChangeListener {
    a() {
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i == -2) {
            JNIBridge.NativeAudioFocusChanged(false);
        } else if (i == -1) {
            JNIBridge.NativeAudioFocusChanged(false);
        } else {
            if (i != 1) {
                return;
            }
            JNIBridge.NativeAudioFocusChanged(true);
        }
    }
}
