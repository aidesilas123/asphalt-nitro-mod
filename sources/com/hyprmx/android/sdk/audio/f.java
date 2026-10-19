package com.hyprmx.android.sdk.audio;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements e {
    public final com.hyprmx.android.sdk.core.js.a a;

    public f(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = jsEngine;
    }

    @Override // com.hyprmx.android.sdk.audio.e
    public final void a(i volume) {
        float f2;
        Intrinsics.checkNotNullParameter(volume, "volume");
        com.hyprmx.android.sdk.core.js.a aVar = this.a;
        StringBuilder sb = new StringBuilder("HYPRAudioStatusManager.onVolumeChange(");
        Intrinsics.checkNotNullParameter(volume, "<this>");
        try {
            f2 = volume.a / (volume.b - volume.c);
        } catch (ArithmeticException unused) {
            f2 = 0.0f;
        }
        sb.append(f2);
        sb.append(");");
        aVar.c(sb.toString());
    }
}
