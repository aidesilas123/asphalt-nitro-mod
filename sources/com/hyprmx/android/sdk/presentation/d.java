package com.hyprmx.android.sdk.presentation;

import android.content.Context;
import com.hyprmx.android.sdk.webview.l;
import com.hyprmx.android.sdk.webview.n;
import com.hyprmx.android.sdk.webview.u;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements j {
    public final com.hyprmx.android.sdk.core.js.a a;
    public final CoroutineScope b;
    public final LinkedHashMap c;

    public d(com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope coroutineScope) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        this.a = jsEngine;
        this.b = coroutineScope;
        new LinkedHashMap();
        this.c = new LinkedHashMap();
    }

    @Override // com.hyprmx.android.sdk.presentation.j
    public final com.hyprmx.android.sdk.banner.g a(com.hyprmx.android.sdk.banner.f fVar, String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        com.hyprmx.android.sdk.core.js.a aVar = this.a;
        CoroutineScope coroutineScope = this.b;
        e eVarA = i.a(aVar, placementName);
        return new com.hyprmx.android.sdk.banner.g(fVar, placementName, aVar, coroutineScope, eVarA, new com.hyprmx.android.sdk.mvp.b(eVarA, coroutineScope), new com.hyprmx.android.sdk.banner.c(eVarA));
    }

    @Override // com.hyprmx.android.sdk.presentation.j
    public final com.hyprmx.android.sdk.overlay.f a(com.hyprmx.android.sdk.overlay.g gVar, String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        com.hyprmx.android.sdk.overlay.f fVar = (com.hyprmx.android.sdk.overlay.f) this.c.get(viewModelIdentifier);
        if (fVar != null) {
            this.c.remove(viewModelIdentifier);
            return fVar;
        }
        com.hyprmx.android.sdk.core.js.a aVar = this.a;
        CoroutineScope coroutineScope = this.b;
        e eVarB = i.b(aVar, viewModelIdentifier);
        com.hyprmx.android.sdk.overlay.h hVar = new com.hyprmx.android.sdk.overlay.h(gVar, viewModelIdentifier, aVar, coroutineScope, eVarB, new com.hyprmx.android.sdk.mvp.b(eVarB, coroutineScope), new com.hyprmx.android.sdk.overlay.d(eVarB));
        this.c.put(viewModelIdentifier, hVar);
        return hVar;
    }

    @Override // com.hyprmx.android.sdk.presentation.j
    public final com.hyprmx.android.sdk.webview.f a(Context context, String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        com.hyprmx.android.sdk.webview.f fVar = new com.hyprmx.android.sdk.webview.f(context, null, null, 30);
        fVar.b(viewModelIdentifier, null);
        return fVar;
    }

    @Override // com.hyprmx.android.sdk.presentation.j
    public final n a(l view, String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        e eVarC = i.c(this.a, viewModelIdentifier);
        com.hyprmx.android.sdk.core.js.a aVar = this.a;
        CoroutineScope coroutineScope = this.b;
        return new n(view, viewModelIdentifier, aVar, coroutineScope, eVarC, new com.hyprmx.android.sdk.utility.i(eVarC, coroutineScope), new com.hyprmx.android.sdk.mvp.b(eVarC, coroutineScope), new u(eVarC));
    }
}
