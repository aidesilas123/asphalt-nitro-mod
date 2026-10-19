package com.hyprmx.android.sdk.utility;

import android.content.Context;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class e1 implements CoroutineScope {
    public final Context a;
    public final com.hyprmx.android.sdk.analytics.b b;
    public final com.hyprmx.android.sdk.network.k c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.hyprmx.android.sdk.preload.p f4719d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f4720e;

    public e1(Context context, com.hyprmx.android.sdk.analytics.b clientErrorController, com.hyprmx.android.sdk.network.k networkRequestController, com.hyprmx.android.sdk.preload.p diskLruCacheHelper, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(networkRequestController, "networkRequestController");
        Intrinsics.checkNotNullParameter(diskLruCacheHelper, "diskLruCacheHelper");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = context;
        this.b = clientErrorController;
        this.c = networkRequestController;
        this.f4719d = diskLruCacheHelper;
        this.f4720e = scope;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    /* JADX INFO: renamed from: getCoroutineContext */
    public final CoroutineContext getA() {
        return this.f4720e.getA();
    }
}
