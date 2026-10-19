package com.hyprmx.android.sdk.activity;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements f0 {
    public final com.hyprmx.android.sdk.presentation.a a;
    public final com.hyprmx.android.sdk.api.data.r b;
    public final CoroutineScope c;

    public d(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.api.data.r uiComponents, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = activityResultListener;
        this.b = uiComponents;
        this.c = scope;
    }

    @Override // com.hyprmx.android.sdk.activity.f0
    public final e0 a(HyprMXNoOffersActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return new e0(this.a, this.b, this.c);
    }
}
