package com.hyprmx.android.sdk.webview;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class r implements s {
    public final Context a;
    public final com.hyprmx.android.sdk.preload.v b;

    public r(Context appContext, com.hyprmx.android.sdk.preload.v preloadController) {
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(preloadController, "preloadController");
        this.a = appContext;
        this.b = preloadController;
    }

    @Override // com.hyprmx.android.sdk.webview.s
    public final f a(String viewModelIdentifier, String str) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        f fVarB = this.b.b(viewModelIdentifier);
        return fVarB == null ? new f(this.a, str, null, 22) : fVarB;
    }
}
