package com.hyprmx.android.sdk.activity;

import java.util.List;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class k0 implements CoroutineScope {
    public final com.hyprmx.android.sdk.presentation.a a;
    public final com.hyprmx.android.sdk.utility.f0 b;
    public final com.hyprmx.android.sdk.api.data.r c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<com.hyprmx.android.sdk.api.data.o> f4455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f4456e;

    /* JADX WARN: Multi-variable type inference failed */
    public k0(com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.api.data.r uiComponents, List<? extends com.hyprmx.android.sdk.api.data.o> requiredInformation, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        Intrinsics.checkNotNullParameter(requiredInformation, "requiredInformation");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = activityResultListener;
        this.b = imageCacheManager;
        this.c = uiComponents;
        this.f4455d = requiredInformation;
        this.f4456e = scope;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.f4456e.getCoroutineContext();
    }
}
