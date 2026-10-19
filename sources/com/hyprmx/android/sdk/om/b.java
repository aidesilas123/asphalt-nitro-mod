package com.hyprmx.android.sdk.om;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.VideoView;
import com.hyprmx.android.sdk.network.k;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements CoroutineScope, g {
    public final com.iab.omid.library.jungroup.adsession.j a;
    public final k b;
    public final ThreadAssert c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f4588d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f4589e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CoroutineScope f4590f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final CoroutineDispatcher f4591g;
    public f h;
    public String i;

    public static final class a implements com.hyprmx.android.sdk.tracking.a {
        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object a(long j, Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.a(this, j, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object a(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.b(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object b(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.c(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object c(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.d(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object d(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.e(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object e(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.f(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object f(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.g(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object g(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.h(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object h(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.i(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object i(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.j(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object j(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.k(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object k(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.l(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object l(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.m(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object m(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.n(this, continuation);
        }

        @Override // com.hyprmx.android.sdk.tracking.a
        public /* synthetic */ Object n(Continuation continuation) {
            return com.hyprmx.android.sdk.tracking.d.o(this, continuation);
        }
    }

    public b(com.iab.omid.library.jungroup.adsession.j omPartner, k networkController, ThreadAssert threadAssert, String omSdkUrl, Context context, CoroutineScope coroutineScope, CoroutineDispatcher ioDispatcher) {
        Intrinsics.checkNotNullParameter(omPartner, "omPartner");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(omSdkUrl, "omSdkUrl");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        this.a = omPartner;
        this.b = networkController;
        this.c = threadAssert;
        this.f4588d = omSdkUrl;
        this.f4589e = context;
        this.f4590f = coroutineScope;
        this.f4591g = ioDispatcher;
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final com.hyprmx.android.sdk.tracking.a a(float f2) {
        com.hyprmx.android.sdk.tracking.a aVarA;
        f fVar = this.h;
        return (fVar == null || (aVarA = fVar.a(f2)) == null) ? new a() : aVarA;
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final void a() {
        this.c.runningOnMainThread();
        f fVar = this.h;
        if (fVar != null) {
            fVar.a();
        }
        this.h = null;
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final void a(View friendlyObstruction) {
        Intrinsics.checkNotNullParameter(friendlyObstruction, "friendlyObstruction");
        this.c.runningOnMainThread();
        try {
            f fVar = this.h;
            if (fVar != null) {
                fVar.a(friendlyObstruction);
            }
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("Error removing registered obstruction with error msg - " + e2.getLocalizedMessage());
        }
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final void a(View friendlyObstruction, com.iab.omid.library.jungroup.adsession.g purpose, String str) {
        Intrinsics.checkNotNullParameter(friendlyObstruction, "friendlyObstruction");
        Intrinsics.checkNotNullParameter(purpose, "purpose");
        this.c.runningOnMainThread();
        try {
            f fVar = this.h;
            if (fVar != null) {
                fVar.a(friendlyObstruction, purpose);
            }
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("Error registering obstruction with error msg - " + e2.getLocalizedMessage());
        }
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final void a(WebView webView, String sessionData) {
        Intrinsics.checkNotNullParameter(sessionData, "sessionData");
        Intrinsics.checkNotNullParameter(webView, "webView");
        this.c.runningOnMainThread();
        if (this.h != null) {
            HyprMXLog.d("Existing Ad Session already exists.");
            return;
        }
        try {
            h hVar = new h(this.a, sessionData);
            this.h = hVar;
            hVar.b(webView);
        } catch (JSONException e2) {
            HyprMXLog.d("Error starting js om ad session - " + e2.getLocalizedMessage());
        }
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final boolean a(VideoView adView, com.hyprmx.android.sdk.model.vast.a vastAd, String customData) {
        Intrinsics.checkNotNullParameter(adView, "adView");
        Intrinsics.checkNotNullParameter(vastAd, "vastAd");
        Intrinsics.checkNotNullParameter(customData, "customData");
        this.c.runningOnMainThread();
        if (this.h != null) {
            HyprMXLog.d("Existing Ad Session already exists.");
            return false;
        }
        String str = this.i;
        if (str == null || str.length() == 0) {
            HyprMXLog.d("OM JS does not exist or is empty");
            return false;
        }
        try {
            com.iab.omid.library.jungroup.adsession.j jVar = this.a;
            String str2 = this.i;
            Intrinsics.checkNotNull(str2);
            j jVar2 = new j(jVar, str2, vastAd, customData, this.c);
            this.h = jVar2;
            jVar2.b(adView);
            return true;
        } catch (JSONException e2) {
            HyprMXLog.d("Error starting native om ad session - " + e2.getLocalizedMessage());
            return false;
        }
    }

    @Override // com.hyprmx.android.sdk.om.g
    public final void b() {
        this.c.runningOnMainThread();
        try {
            f fVar = this.h;
            if (fVar != null) {
                fVar.b();
            }
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("Error removing all friendly obstruction with error msg - " + e2.getLocalizedMessage());
        }
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.f4590f.getCoroutineContext();
    }
}
