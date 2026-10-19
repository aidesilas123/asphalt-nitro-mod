package com.hyprmx.android.sdk.audio;

import com.facebook.internal.AnalyticsEvents;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements c {
    public final WeakReference<b> a;

    public d(com.hyprmx.android.sdk.core.js.a jsEngine, b audioManager) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(audioManager, "audioManager");
        jsEngine.a("HYPRNativeAudioListener", this);
        this.a = new WeakReference<>(audioManager);
    }

    @Override // com.hyprmx.android.sdk.audio.c
    public final String getAudioCategory() {
        b bVar = this.a.get();
        if (bVar == null) {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
        bVar.getAudioCategory();
        return "STREAM_MUSIC";
    }

    @Override // com.hyprmx.android.sdk.audio.c
    public final boolean getIsMuted() {
        b bVar = this.a.get();
        if (bVar == null) {
            return false;
        }
        bVar.getIsMuted();
        return false;
    }

    @Override // com.hyprmx.android.sdk.audio.c
    public final double getVolume() {
        b bVar = this.a.get();
        if (bVar != null) {
            return bVar.getVolume();
        }
        return 0.0d;
    }

    @Override // com.hyprmx.android.sdk.audio.c
    public final void setActive(boolean z, long j) {
        b bVar = this.a.get();
        if (bVar != null) {
            bVar.a(z);
        }
    }

    @Override // com.hyprmx.android.sdk.audio.c
    public final String startAudioSession() {
        b bVar = this.a.get();
        if (bVar == null) {
            return null;
        }
        bVar.startAudioSession();
        return null;
    }
}
