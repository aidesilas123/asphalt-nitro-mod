package com.hyprmx.android.sdk.analytics;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class e {
    public static final c a(com.hyprmx.android.sdk.core.js.a jsEngine, b clientErrorController, com.hyprmx.android.sdk.network.k networkController) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        return new c(jsEngine, clientErrorController, networkController);
    }
}
