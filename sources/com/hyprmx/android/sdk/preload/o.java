package com.hyprmx.android.sdk.preload;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class o implements z {
    public final com.hyprmx.android.sdk.core.js.a a;

    public o(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = jsEngine;
    }

    @Override // com.hyprmx.android.sdk.preload.a
    public final void a(String adState) {
        Intrinsics.checkNotNullParameter(adState, "adState");
        this.a.c("HYPRRequestParameterManager.updateVastCacheState(" + adState + ");");
    }
}
