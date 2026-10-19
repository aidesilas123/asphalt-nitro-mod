package com.hyprmx.android.sdk.preload;

import kotlin.jvm.internal.Intrinsics;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class w implements x {
    public final com.hyprmx.android.sdk.core.js.a a;

    public w(com.hyprmx.android.sdk.core.js.a jsEngine) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        this.a = jsEngine;
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(int i, int i2) {
        this.a.a("HYPRPreloadController", "new PreloadController(" + i + ", " + i2 + ')');
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(Object obj) {
        Intrinsics.checkNotNullParameter(obj, "obj");
        this.a.a("HYPRCacheListener", obj);
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        this.a.c("HYPRPreloadController.nativePreloadDidRemove('" + viewModelIdentifier + "')");
    }

    @Override // com.hyprmx.android.sdk.preload.x
    public final void a(String cachedAdJSON, JSONObject adToPreload) {
        Intrinsics.checkNotNullParameter(adToPreload, "adToPreload");
        Intrinsics.checkNotNullParameter(cachedAdJSON, "cachedAdJSON");
        this.a.c("HYPRPreloadController.cachedVastOfferWithDirective(" + adToPreload + ", " + cachedAdJSON + ')');
    }
}
