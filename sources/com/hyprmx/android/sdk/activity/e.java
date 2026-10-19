package com.hyprmx.android.sdk.activity;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class e implements g0 {
    public final com.hyprmx.android.sdk.presentation.a a;
    public final com.hyprmx.android.sdk.utility.f0 b;
    public final com.hyprmx.android.sdk.api.data.r c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<com.hyprmx.android.sdk.api.data.o> f4453d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f4454e;

    public e(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.model.a preloadedVastData, com.hyprmx.android.sdk.api.data.r uiComponents, List requiredInformation, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(preloadedVastData, "preloadedVastData");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        Intrinsics.checkNotNullParameter(requiredInformation, "requiredInformation");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = activityResultListener;
        this.b = imageCacheManager;
        this.c = uiComponents;
        this.f4453d = requiredInformation;
        this.f4454e = scope;
    }

    @Override // com.hyprmx.android.sdk.activity.g0
    public final k0 a(HyprMXRequiredInformationActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        return new k0(this.a, this.b, this.c, this.f4453d, this.f4454e);
    }
}
