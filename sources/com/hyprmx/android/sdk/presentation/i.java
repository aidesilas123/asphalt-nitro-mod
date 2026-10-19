package com.hyprmx.android.sdk.presentation;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public static final e a(com.hyprmx.android.sdk.core.js.a jsEngine, String placementName) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        String str = (String) jsEngine.a("HYPRPresentationController.bindBannerViewModel('" + placementName + "');");
        if (str == null) {
            str = "";
        }
        return new e(jsEngine, str, "ViewModelController.removeViewModel");
    }

    public static final e b(com.hyprmx.android.sdk.core.js.a jsEngine, String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        return new e(jsEngine, viewModelIdentifier, "ViewModelController.removeViewModel");
    }

    public static final e c(com.hyprmx.android.sdk.core.js.a jsEngine, String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        return new e(jsEngine, viewModelIdentifier, "ViewModelController.removeViewModel");
    }
}
