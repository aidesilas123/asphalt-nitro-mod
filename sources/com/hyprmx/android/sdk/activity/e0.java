package com.hyprmx.android.sdk.activity;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class e0 implements CoroutineScope {
    public final com.hyprmx.android.sdk.presentation.a a;
    public final com.hyprmx.android.sdk.api.data.r b;
    public final CoroutineScope c;

    public e0(com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.api.data.r uiComponents, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = activityResultListener;
        this.b = uiComponents;
        this.c = scope;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getA() {
        return this.c.getA();
    }
}
