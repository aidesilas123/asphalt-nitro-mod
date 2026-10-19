package com.hyprmx.android.sdk.core;

import android.content.Context;
import android.os.PowerManager;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.p002assert.DefaultThreadAssert;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.powersavemode.DefaultPowerSaveModeListener;
import com.hyprmx.android.sdk.utility.n0;
import com.hyprmx.android.sdk.utility.p0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements b {
    public final com.hyprmx.android.sdk.utility.v A;
    public final com.hyprmx.android.sdk.bidding.a B;
    public final com.hyprmx.android.sdk.preload.z C;
    public final com.hyprmx.android.sdk.presentation.j D;
    public final com.hyprmx.android.sdk.webview.s E;
    public final com.hyprmx.android.sdk.audio.a F;
    public final Context a;
    public final String b;
    public final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CoroutineScope f4496d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ThreadAssert f4497e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.hyprmx.android.sdk.network.k f4498f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.hyprmx.android.sdk.core.js.a f4499g;
    public final com.hyprmx.android.sdk.analytics.b h;
    public final com.hyprmx.android.sdk.powersavemode.a i;
    public final com.hyprmx.android.sdk.preload.n j;
    public final com.hyprmx.android.sdk.model.a k;
    public final com.hyprmx.android.sdk.initialization.b l;
    public final com.hyprmx.android.sdk.preferences.c m;
    public final ConsentStatus n;
    public final com.hyprmx.android.sdk.consent.b o;
    public final i0 p;
    public final com.hyprmx.android.sdk.analytics.d q;
    public final com.hyprmx.android.sdk.placement.a r;
    public final com.hyprmx.android.sdk.analytics.f s;
    public final com.hyprmx.android.sdk.audio.b t;
    public final com.hyprmx.android.sdk.utility.f0 u;
    public final com.hyprmx.android.sdk.preload.v v;
    public final com.hyprmx.android.sdk.initialization.g w;
    public com.hyprmx.android.sdk.om.g x;
    public final n0 y;
    public final com.hyprmx.android.sdk.utility.b z;

    public /* synthetic */ f(Context context, String str, String str2, ConsentStatus consentStatus) {
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.MainScope(), new CoroutineName("HyprMXController"));
        DefaultThreadAssert defaultThreadAssert = new DefaultThreadAssert(null, 1, null);
        com.hyprmx.android.sdk.network.d dVar = new com.hyprmx.android.sdk.network.d(context);
        com.hyprmx.android.sdk.utility.g gVarA = com.hyprmx.android.sdk.utility.r.a(context);
        com.hyprmx.android.sdk.core.js.c cVarA = com.hyprmx.android.sdk.core.js.b.a();
        com.hyprmx.android.sdk.analytics.a aVar = new com.hyprmx.android.sdk.analytics.a(cVarA);
        cVarA.a(aVar);
        defaultThreadAssert.setClientErrorController(aVar);
        Object systemService = context.getSystemService("power");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        DefaultPowerSaveModeListener defaultPowerSaveModeListenerA = com.hyprmx.android.sdk.powersavemode.b.a(context, (PowerManager) systemService, coroutineScopePlus);
        com.hyprmx.android.sdk.preload.c cVar = new com.hyprmx.android.sdk.preload.c(aVar, context, dVar, coroutineScopePlus, defaultThreadAssert);
        com.hyprmx.android.sdk.model.b bVar = new com.hyprmx.android.sdk.model.b(cVar);
        com.hyprmx.android.sdk.initialization.a aVar2 = new com.hyprmx.android.sdk.initialization.a(cVarA, aVar, context, coroutineScopePlus);
        com.hyprmx.android.sdk.preferences.b bVar2 = new com.hyprmx.android.sdk.preferences.b(context, cVarA, coroutineScopePlus, defaultThreadAssert);
        com.hyprmx.android.sdk.consent.a aVar3 = new com.hyprmx.android.sdk.consent.a(cVarA, consentStatus, coroutineScopePlus);
        b0 b0Var = new b0(context);
        com.hyprmx.android.sdk.preferences.a aVar4 = new com.hyprmx.android.sdk.preferences.a(context, cVarA);
        com.hyprmx.android.sdk.analytics.c cVarA2 = com.hyprmx.android.sdk.analytics.e.a(cVarA, aVar, dVar);
        com.hyprmx.android.sdk.placement.b bVar3 = new com.hyprmx.android.sdk.placement.b(cVarA);
        com.hyprmx.android.sdk.analytics.k kVar = new com.hyprmx.android.sdk.analytics.k(context, cVarA, bVar, defaultPowerSaveModeListenerA, gVarA, coroutineScopePlus);
        com.hyprmx.android.sdk.audio.f fVar = new com.hyprmx.android.sdk.audio.f(cVarA);
        com.hyprmx.android.sdk.audio.h hVar = new com.hyprmx.android.sdk.audio.h(context, fVar, cVarA);
        com.hyprmx.android.sdk.utility.y yVar = new com.hyprmx.android.sdk.utility.y(context, dVar);
        com.hyprmx.android.sdk.preload.u uVar = new com.hyprmx.android.sdk.preload.u(cVarA, cVar, yVar, context, coroutineScopePlus);
        this(context, str, str2, coroutineScopePlus, defaultThreadAssert, dVar, gVarA, cVarA, aVar, defaultPowerSaveModeListenerA, cVar, bVar, aVar2, bVar2, consentStatus, aVar3, b0Var, aVar4, cVarA2, bVar3, kVar, fVar, hVar, yVar, uVar, new com.hyprmx.android.sdk.initialization.f(dVar, b0Var, aVar), null, new p0(), new com.hyprmx.android.sdk.utility.e(cVarA), new com.hyprmx.android.sdk.utility.u(cVarA, coroutineScopePlus), new com.hyprmx.android.sdk.network.f(dVar, cVarA, coroutineScopePlus), com.hyprmx.android.sdk.bidding.b.a(cVarA), com.hyprmx.android.sdk.preload.a0.a(cVarA), new com.hyprmx.android.sdk.presentation.d(cVarA, coroutineScopePlus), new com.hyprmx.android.sdk.webview.r(context, uVar), new com.hyprmx.android.sdk.audio.g(cVarA, coroutineScopePlus));
    }

    public f(Context applicationContext, String distributorId, String userId, CoroutineScope scope, ThreadAssert threadAssert, com.hyprmx.android.sdk.network.k networkController, com.hyprmx.android.sdk.utility.q connectionInfo, com.hyprmx.android.sdk.core.js.a jsEngine, com.hyprmx.android.sdk.analytics.b errorCaptureController, com.hyprmx.android.sdk.powersavemode.a powerSaveModeListener, com.hyprmx.android.sdk.preload.n cacheController, com.hyprmx.android.sdk.model.a preloadedVastData, com.hyprmx.android.sdk.initialization.b initializationController, com.hyprmx.android.sdk.preferences.c preferenceController, ConsentStatus consentStatus, com.hyprmx.android.sdk.consent.b consentController, i0 storageHelper, com.hyprmx.android.sdk.preferences.a localStorageController, com.hyprmx.android.sdk.analytics.d eventController, com.hyprmx.android.sdk.placement.a placementController, com.hyprmx.android.sdk.analytics.f parameterController, com.hyprmx.android.sdk.audio.e audioManagerShared, com.hyprmx.android.sdk.audio.b audioManager, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.preload.v preloadController, com.hyprmx.android.sdk.initialization.g updateController, com.hyprmx.android.sdk.om.g gVar, n0 storePictureManager, com.hyprmx.android.sdk.utility.b consoleLog, com.hyprmx.android.sdk.utility.v timerController, com.hyprmx.android.sdk.network.l jsNetworkController, com.hyprmx.android.sdk.bidding.a biddingController, com.hyprmx.android.sdk.preload.z requestParameterManager, com.hyprmx.android.sdk.presentation.j presenterFactory, com.hyprmx.android.sdk.webview.s webViewFactory, com.hyprmx.android.sdk.audio.a audioEventPublisher) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        Intrinsics.checkNotNullParameter(distributorId, "distributorId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(threadAssert, "threadAssert");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(connectionInfo, "connectionInfo");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(errorCaptureController, "errorCaptureController");
        Intrinsics.checkNotNullParameter(powerSaveModeListener, "powerSaveModeListener");
        Intrinsics.checkNotNullParameter(cacheController, "cacheController");
        Intrinsics.checkNotNullParameter(preloadedVastData, "preloadedVastData");
        Intrinsics.checkNotNullParameter(initializationController, "initializationController");
        Intrinsics.checkNotNullParameter(preferenceController, "preferenceController");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        Intrinsics.checkNotNullParameter(consentController, "consentController");
        Intrinsics.checkNotNullParameter(storageHelper, "storageHelper");
        Intrinsics.checkNotNullParameter(localStorageController, "localStorageController");
        Intrinsics.checkNotNullParameter(eventController, "eventController");
        Intrinsics.checkNotNullParameter(placementController, "placementController");
        Intrinsics.checkNotNullParameter(parameterController, "parameterController");
        Intrinsics.checkNotNullParameter(audioManagerShared, "audioManagerShared");
        Intrinsics.checkNotNullParameter(audioManager, "audioManager");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(preloadController, "preloadController");
        Intrinsics.checkNotNullParameter(updateController, "updateController");
        Intrinsics.checkNotNullParameter(storePictureManager, "storePictureManager");
        Intrinsics.checkNotNullParameter(consoleLog, "consoleLog");
        Intrinsics.checkNotNullParameter(timerController, "timerController");
        Intrinsics.checkNotNullParameter(jsNetworkController, "jsNetworkController");
        Intrinsics.checkNotNullParameter(biddingController, "biddingController");
        Intrinsics.checkNotNullParameter(requestParameterManager, "requestParameterManager");
        Intrinsics.checkNotNullParameter(presenterFactory, "presenterFactory");
        Intrinsics.checkNotNullParameter(webViewFactory, "webViewFactory");
        Intrinsics.checkNotNullParameter(audioEventPublisher, "audioEventPublisher");
        this.a = applicationContext;
        this.b = distributorId;
        this.c = userId;
        this.f4496d = scope;
        this.f4497e = threadAssert;
        this.f4498f = networkController;
        this.f4499g = jsEngine;
        this.h = errorCaptureController;
        this.i = powerSaveModeListener;
        this.j = cacheController;
        this.k = preloadedVastData;
        this.l = initializationController;
        this.m = preferenceController;
        this.n = consentStatus;
        this.o = consentController;
        this.p = storageHelper;
        this.q = eventController;
        this.r = placementController;
        this.s = parameterController;
        this.t = audioManager;
        this.u = imageCacheManager;
        this.v = preloadController;
        this.w = updateController;
        this.x = gVar;
        this.y = storePictureManager;
        this.z = consoleLog;
        this.A = timerController;
        this.B = biddingController;
        this.C = requestParameterManager;
        this.D = presenterFactory;
        this.E = webViewFactory;
        this.F = audioEventPublisher;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preferences.c C() {
        return this.m;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.placement.a E() {
        return this.r;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.bidding.a F() {
        return this.B;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.initialization.g G() {
        return this.w;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final n0 H() {
        return this.y;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.webview.s I() {
        return this.E;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.activity.b a(b applicationModule, com.hyprmx.android.sdk.api.data.a ad, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.presentation.e eventPublisher, com.hyprmx.android.sdk.fullscreen.d fullScreenSharedConnector) {
        Intrinsics.checkNotNullParameter(applicationModule, "applicationModule");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        return new com.hyprmx.android.sdk.activity.c(new h(applicationModule, ad, activityResultListener, new com.hyprmx.android.sdk.utility.h(), com.hyprmx.android.sdk.network.j.a(applicationModule.z()), new com.hyprmx.android.sdk.tracking.b(), eventPublisher, fullScreenSharedConnector));
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.activity.f0 a(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.api.data.r uiComponents) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        return new com.hyprmx.android.sdk.activity.d(activityResultListener, uiComponents, this.f4496d);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.activity.g0 a(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.model.a preloadedVastData, com.hyprmx.android.sdk.api.data.r uiComponents, List requiredInformation) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(preloadedVastData, "preloadedVastData");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        Intrinsics.checkNotNullParameter(requiredInformation, "requiredInformation");
        return new com.hyprmx.android.sdk.activity.e(activityResultListener, imageCacheManager, preloadedVastData, uiComponents, requiredInformation, this.f4496d);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preload.n a() {
        return this.j;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final void a(com.hyprmx.android.sdk.om.b bVar) {
        this.x = bVar;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.network.k c() {
        return this.f4498f;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final i0 d() {
        return this.p;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.analytics.b e() {
        return this.h;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.analytics.d f() {
        return this.q;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preload.v g() {
        return this.v;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final ConsentStatus getConsentStatus() {
        return this.n;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.consent.b h() {
        return this.o;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.powersavemode.a i() {
        return this.i;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.initialization.b j() {
        return this.l;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.analytics.f k() {
        return this.s;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.core.js.a n() {
        return this.f4499g;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.utility.f0 p() {
        return this.u;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final ThreadAssert q() {
        return this.f4497e;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.model.a r() {
        return this.k;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final String s() {
        return this.b;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.presentation.j t() {
        return this.D;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preload.z u() {
        return this.C;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final CoroutineScope w() {
        return this.f4496d;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.om.g x() {
        return this.x;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final String y() {
        return this.c;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final Context z() {
        return this.a;
    }
}
