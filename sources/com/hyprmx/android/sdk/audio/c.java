package com.hyprmx.android.sdk.audio;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;

/* JADX INFO: loaded from: classes2.dex */
public interface c {
    @RetainMethodSignature
    String getAudioCategory();

    @RetainMethodSignature
    boolean getIsMuted();

    @RetainMethodSignature
    double getVolume();

    @RetainMethodSignature
    void setActive(boolean z, long j);

    @RetainMethodSignature
    String startAudioSession();
}
