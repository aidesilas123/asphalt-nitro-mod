package com.hyprmx.android.sdk.analytics;

import com.hyprmx.android.sdk.utility.s;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements b {
    public final com.hyprmx.android.sdk.core.js.a a;

    public a(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = jsEngine;
    }

    @Override // com.hyprmx.android.sdk.analytics.b
    public final void a(s hyprMXErrorType, String errorMessage, int i) {
        Intrinsics.checkNotNullParameter(hyprMXErrorType, "hyprMXErrorType");
        Intrinsics.checkNotNullParameter(errorMessage, "errorMessage");
        String strName = hyprMXErrorType.name();
        this.a.a("HYPRErrorController.sendClientErrorCapture('" + errorMessage + "','" + strName + "', " + i + ')');
    }
}
