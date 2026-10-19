package com.hyprmx.android.sdk.initialization;

import android.content.Context;
import com.hyprmx.android.sdk.core.j;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.initialization.b;
import com.hyprmx.android.sdk.initialization.d;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.HyprMXProperties;
import com.hyprmx.android.sdk.utility.s;
import java.net.URL;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements com.hyprmx.android.sdk.initialization.b, b.a, com.hyprmx.android.sdk.core.js.d, CoroutineScope {
    public final com.hyprmx.android.sdk.core.js.a a;
    public final com.hyprmx.android.sdk.analytics.b b;
    public final Context c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f4554d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.hyprmx.android.sdk.initialization.c f4555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SafeContinuation f4556f;

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.initialization.a$a, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.InitializationController$initializeOMSDK$1", f = "InitializationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0288a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4557d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0288a(String str, String str2, String str3, Continuation<? super C0288a> continuation) {
            super(2, continuation);
            this.b = str;
            this.c = str2;
            this.f4557d = str3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new C0288a(this.b, this.c, this.f4557d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((C0288a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.initialization.c cVar = a.this.f4555e;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("initializationDelegator");
                cVar = null;
            }
            cVar.a(this.b, this.c, this.f4557d);
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.InitializationController$setEnableAllLogs$1", f = "InitializationController.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ boolean c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z, Continuation<? super b> continuation) {
            super(2, continuation);
            this.c = z;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new b(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                HyprMXLog hyprMXLog = HyprMXLog.INSTANCE;
                Context context = a.this.c;
                boolean z = this.c;
                this.a = 1;
                if (hyprMXLog.setAllLoggingEnabled$HyprMX_Mobile_Android_SDK_release(context, z, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.InitializationController$setSharingEndpoint$1", f = "InitializationController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(String str, Continuation<? super c> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return a.this.new c(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.initialization.c cVar = a.this.f4555e;
            if (cVar == null) {
                Intrinsics.throwUninitializedPropertyAccessException("initializationDelegator");
                cVar = null;
            }
            cVar.d(this.b);
            return v.a;
        }
    }

    public a(com.hyprmx.android.sdk.core.js.a jsEngine, com.hyprmx.android.sdk.analytics.b errorCaptureController, Context context, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(errorCaptureController, "errorCaptureController");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.a = jsEngine;
        this.b = errorCaptureController;
        this.c = context;
        this.f4554d = CoroutineScopeKt.plus(scope, new CoroutineName("InitializationController"));
        jsEngine.a("HYPRInitListener", this);
    }

    @Override // com.hyprmx.android.sdk.initialization.b
    public final Object a(j.k kVar) throws Throwable {
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(kVar));
        HyprMXLog.e("Could not go to the new version");
        this.f4556f = safeContinuation;
        this.b.a(s.HYPRErrorTypeSDKInternalError, "Could not go to the new version", 4);
        this.a.c("HYPRInitializationController.javascriptUpgradeFailed('Could not go to the new version');");
        Object objB = safeContinuation.b();
        if (objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(kVar);
        }
        return objB;
    }

    @Override // com.hyprmx.android.sdk.initialization.b
    public final Object a(com.hyprmx.android.sdk.initialization.c cVar, ContinuationImpl continuationImpl) throws Throwable {
        String host;
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuationImpl));
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.f4555e = cVar;
        this.f4556f = safeContinuation;
        URL url = new URL(HyprMXProperties.INSTANCE.getBaseUrl());
        if (url.getPort() != -1) {
            host = url.getHost() + ':' + url.getPort();
        } else {
            host = url.getHost();
        }
        this.a.a(this);
        this.a.a("HYPRInitializationController", "new InitializationController(\"" + host + "\")");
        this.a.c("HYPRInitializationController.initialize();");
        Object objB = safeContinuation.b();
        if (objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuationImpl);
        }
        return objB;
    }

    public final void a(d dVar) {
        SafeContinuation safeContinuation = this.f4556f;
        if (safeContinuation == null) {
            this.b.a(s.HYPRErrorTypeSDKInternalError, "Initialization received complete already. Ignoring ".concat(dVar.getClass().getSimpleName()), 4);
            return;
        }
        this.f4556f = null;
        Result.a aVar = Result.a;
        safeContinuation.resumeWith(Result.m1238constructorimpl(dVar));
        this.a.b(this);
    }

    @Override // com.hyprmx.android.sdk.core.js.d
    public final void a(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        a(new d.a(error));
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.f4554d.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.initialization.b.a
    public final void initializationFailed(String error) {
        Intrinsics.checkNotNullParameter(error, "error");
        if (StringsKt__StringsKt.contains$default((CharSequence) error, (CharSequence) "406", false, 2, (Object) null)) {
            a(d.b.a);
        } else {
            a(new d.a(error));
        }
    }

    @Override // com.hyprmx.android.sdk.initialization.b.a
    public final void initializationSuccessWithPlacements(String placementsJsonString, int i) {
        Intrinsics.checkNotNullParameter(placementsJsonString, "placementsJsonString");
        j jVar = t.a.f4521g;
        if (jVar != null) {
            jVar.f4507f = Integer.valueOf(i);
        }
        a(new d.c(placementsJsonString));
    }

    @Override // com.hyprmx.android.sdk.initialization.b.a
    public final void initializeOMSDK(String omSdkUrl, String omPartnerName, String omApiVersion) {
        Intrinsics.checkNotNullParameter(omSdkUrl, "omSdkUrl");
        Intrinsics.checkNotNullParameter(omPartnerName, "omPartnerName");
        Intrinsics.checkNotNullParameter(omApiVersion, "omApiVersion");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0288a(omSdkUrl, omPartnerName, omApiVersion, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.initialization.b.a
    public final void setEnableAllLogs(boolean z) {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(z, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.initialization.b.a
    public final void setSharingEndpoint(String sharingEndpoint) {
        Intrinsics.checkNotNullParameter(sharingEndpoint, "sharingEndpoint");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(sharingEndpoint, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.initialization.b.a
    public final void updateJavascript(String url, int i, int i2) {
        Intrinsics.checkNotNullParameter(url, "url");
        HyprMXLog.d("updateJavascript to version " + i);
        a(new d.C0289d(url, i2));
    }
}
