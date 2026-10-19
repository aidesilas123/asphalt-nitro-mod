package com.hyprmx.android.sdk.activity;

import android.content.Context;
import android.os.Bundle;
import com.hyprmx.android.sdk.activity.HyprMXBaseViewController;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements b, com.hyprmx.android.sdk.core.j0 {
    public final com.hyprmx.android.sdk.core.j0 a;

    public c(com.hyprmx.android.sdk.core.h viewControllerModule) {
        Intrinsics.checkNotNullParameter(viewControllerModule, "viewControllerModule");
        this.a = viewControllerModule;
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.presentation.a A() {
        return this.a.A();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.presentation.h B() {
        return this.a.B();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preferences.c C() {
        return this.a.C();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.utility.h0 D() {
        return this.a.D();
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
    public final com.hyprmx.android.sdk.utility.n0 H() {
        return this.a.H();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.webview.s I() {
        return this.a.I();
    }

    @Override // com.hyprmx.android.sdk.activity.b
    public final HyprMXBaseViewController a(HyprMXOfferViewerActivity activity, Bundle bundle, HyprMXBaseViewController.a viewControllerListener) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(viewControllerListener, "viewControllerListener");
        String type = this.a.v().getType();
        if (Intrinsics.areEqual(type, "web_traffic")) {
            String strS = this.a.s();
            String strY = this.a.y();
            com.hyprmx.android.sdk.api.data.a aVarV = this.a.v();
            Intrinsics.checkNotNull(aVarV, "null cannot be cast to non-null type com.hyprmx.android.sdk.api.data.WebTrafficAd");
            com.hyprmx.android.sdk.api.data.u uVar = (com.hyprmx.android.sdk.api.data.u) aVarV;
            com.hyprmx.android.sdk.analytics.d dVarF = this.a.f();
            com.hyprmx.android.sdk.utility.f0 f0VarP = this.a.p();
            com.hyprmx.android.sdk.webview.s sVarI = this.a.I();
            com.hyprmx.android.sdk.presentation.a aVarA = this.a.A();
            com.hyprmx.android.sdk.om.g gVarX = this.a.x();
            com.hyprmx.android.sdk.powersavemode.a aVarI = this.a.i();
            CoroutineScope coroutineScopeW = this.a.w();
            return new HyprMXWebTrafficViewController(activity, bundle, strS, strY, uVar, viewControllerListener, dVarF, f0VarP, sVarI, aVarA, gVarX, aVarI, this.a.q(), coroutineScopeW, this.a.b(), this.a.D(), this.a.B(), this.a.o());
        }
        if (!Intrinsics.areEqual(type, "vast_video")) {
            return new HyprMXBaseFullScreenWebViewController(activity, bundle, this.a.v(), viewControllerListener, this.a.I(), this.a.e(), this.a.A(), this.a.x(), this.a.i(), this.a.q(), this.a.w(), this.a.b(), this.a.D(), this.a.B(), this.a.o());
        }
        com.hyprmx.android.sdk.api.data.a aVarV2 = this.a.v();
        com.hyprmx.android.sdk.analytics.d dVarF2 = this.a.f();
        com.hyprmx.android.sdk.preload.n nVarA = this.a.a();
        com.hyprmx.android.sdk.analytics.b bVarE = this.a.e();
        com.hyprmx.android.sdk.presentation.a aVarA2 = this.a.A();
        com.hyprmx.android.sdk.tracking.c cVarM = this.a.m();
        com.hyprmx.android.sdk.om.g gVarX2 = this.a.x();
        com.hyprmx.android.sdk.powersavemode.a aVarI2 = this.a.i();
        return new HyprMXVastViewController(activity, bundle, aVarV2, Dispatchers.getMain(), dVarF2, nVarA, viewControllerListener, bVarE, aVarA2, cVarM, gVarX2, this.a.c(), aVarI2, this.a.w(), this.a.q(), this.a.D(), this.a.b(), this.a.I(), this.a.B(), this.a.o());
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final b a(com.hyprmx.android.sdk.core.b applicationModule, com.hyprmx.android.sdk.api.data.a ad, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.presentation.e eventPublisher, com.hyprmx.android.sdk.fullscreen.d fullScreenSharedConnector) {
        Intrinsics.checkNotNullParameter(applicationModule, "applicationModule");
        Intrinsics.checkNotNullParameter(ad, "ad");
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(fullScreenSharedConnector, "fullScreenSharedConnector");
        return this.a.a(applicationModule, ad, activityResultListener, eventPublisher, fullScreenSharedConnector);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final f0 a(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.api.data.r uiComponents) {
        Intrinsics.checkNotNullParameter(activityResultListener, "activityResultListener");
        Intrinsics.checkNotNullParameter(uiComponents, "uiComponents");
        return this.a.a(activityResultListener, uiComponents);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final g0 a(com.hyprmx.android.sdk.presentation.b activityResultListener, com.hyprmx.android.sdk.utility.f0 imageCacheManager, com.hyprmx.android.sdk.model.a preloadedVastData, com.hyprmx.android.sdk.api.data.r uiComponents, List requiredInformation) {
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
        return this.a.b();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.network.k c() {
        return this.a.c();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.core.i0 d() {
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
        return this.a.m();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.core.js.a n() {
        return this.a.n();
    }

    @Override // com.hyprmx.android.sdk.core.j0
    public final com.hyprmx.android.sdk.fullscreen.e o() {
        return this.a.o();
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
        return this.a.v();
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
