package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.n0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements j0, b {
    public final b a;
    public final com.hyprmx.android.sdk.api.data.a b;
    public final com.hyprmx.android.sdk.presentation.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.hyprmx.android.sdk.utility.h0 f4501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.hyprmx.android.sdk.network.i f4502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final com.hyprmx.android.sdk.tracking.c f4503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final com.hyprmx.android.sdk.presentation.h f4504g;
    public final com.hyprmx.android.sdk.fullscreen.e h;

    public h(b applicationModule, com.hyprmx.android.sdk.api.data.a ad, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.utility.h0 internetConnectionDialog, com.hyprmx.android.sdk.network.i networkConnectionMonitor, com.hyprmx.android.sdk.tracking.c videoTrackingDelegate, com.hyprmx.android.sdk.presentation.e eventPublisher, com.hyprmx.android.sdk.fullscreen.d fullScreenSharedConnector) {
        Intrinsics.checkNotNullParameter(applicationModule, "applicationModule");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(internetConnectionDialog, "internetConnectionDialog");
        Intrinsics.checkNotNullParameter(networkConnectionMonitor, "networkConnectionMonitor");
        Intrinsics.checkNotNullParameter(videoTrackingDelegate, "videoTrackingDelegate");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        this.a = applicationModule;
        this.b = ad;
        this.c = activityResultListener;
        this.f4501d = internetConnectionDialog;
        this.f4502e = networkConnectionMonitor;
        this.f4503f = videoTrackingDelegate;
        this.f4504g = eventPublisher;
        this.h = fullScreenSharedConnector;
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.presentation.a A() {
        return this.c;
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.presentation.h B() {
        return this.f4504g;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preferences.c C() {
        return this.a.C();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.utility.h0 D() {
        return this.f4501d;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.placement.a E() {
        return this.a.E();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.bidding.a F() {
        return this.a.F();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.initialization.g G() {
        return this.a.G();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final n0 H() {
        return this.a.H();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.webview.s I() {
        return this.a.I();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.activity.b a(b applicationModule, com.hyprmx.android.sdk.api.data.a ad, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.presentation.e eventPublisher, com.hyprmx.android.sdk.fullscreen.d fullScreenSharedConnector) {
        Intrinsics.checkNotNullParameter(applicationModule, "applicationModule");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        return this.a.a(applicationModule, ad, activityResultListener, eventPublisher, fullScreenSharedConnector);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.activity.f0 a(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.api.data.r uiComponents) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        return this.a.a(activityResultListener, uiComponents);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.activity.g0 a(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.model.a preloadedVastData, com.hyprmx.android.sdk.api.data.r uiComponents, List requiredInformation) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(imageCacheManager, "imageCacheManager");
        Intrinsics.checkNotNullParameter(preloadedVastData, "preloadedVastData");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        Intrinsics.checkNotNullParameter(requiredInformation, "requiredInformation");
        return this.a.a(activityResultListener, imageCacheManager, preloadedVastData, uiComponents, requiredInformation);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preload.n a() {
        return this.a.a();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final void a(com.hyprmx.android.sdk.om.b bVar) {
        this.a.a(bVar);
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.network.i b() {
        return this.f4502e;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.network.k c() {
        return this.a.c();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final i0 d() {
        return this.a.d();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.analytics.b e() {
        return this.a.e();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.analytics.d f() {
        return this.a.f();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preload.v g() {
        return this.a.g();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final ConsentStatus getConsentStatus() {
        return this.a.getConsentStatus();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.consent.b h() {
        return this.a.h();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.powersavemode.a i() {
        return this.a.i();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.initialization.b j() {
        return this.a.j();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.analytics.f k() {
        return this.a.k();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.tracking.c m() {
        return this.f4503f;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.core.js.a n() {
        return this.a.n();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.fullscreen.e o() {
        return this.h;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.utility.f0 p() {
        return this.a.p();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final ThreadAssert q() {
        return this.a.q();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.model.a r() {
        return this.a.r();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final String s() {
        return this.a.s();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.presentation.j t() {
        return this.a.t();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preload.z u() {
        return this.a.u();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.api.data.a v() {
        return this.b;
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final CoroutineScope w() {
        return this.a.w();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.om.g x() {
        return this.a.x();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final String y() {
        return this.a.y();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final Context z() {
        return this.a.z();
    }
}
