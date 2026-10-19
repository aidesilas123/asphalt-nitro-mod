package com.hyprmx.android.sdk.banner;

import com.hyprmx.android.sdk.core.HyprMXErrors;
import com.hyprmx.android.sdk.core.t;
import com.hyprmx.android.sdk.core.v;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class g implements com.hyprmx.android.sdk.banner.e, CoroutineScope, com.hyprmx.android.sdk.mvp.c, com.hyprmx.android.sdk.banner.b, com.hyprmx.android.sdk.banner.d, v {
    public com.hyprmx.android.sdk.banner.f a;
    public final com.hyprmx.android.sdk.banner.d b;
    public final /* synthetic */ CoroutineScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.hyprmx.android.sdk.mvp.c f4491d;

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$createCalendarEvent$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new a(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.onAdClicked();
            }
            com.hyprmx.android.sdk.banner.f fVar2 = g.this.a;
            if (fVar2 != null) {
                fVar2.createCalendarEvent(this.b);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$hyprMXBrowserClosed$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.hyprMXBrowserClosed();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$loadAdFailed$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ g b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(g gVar, String str, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = gVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new c(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            HyprMXErrors hyprMXErrorsValueOf;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            try {
                hyprMXErrorsValueOf = HyprMXErrors.valueOf(this.a);
            } catch (IllegalArgumentException unused) {
                hyprMXErrorsValueOf = HyprMXErrors.UNKNOWN;
            }
            com.hyprmx.android.sdk.banner.f fVar = this.b.a;
            if (fVar != null) {
                fVar.loadAdFailure(hyprMXErrorsValueOf);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$loadAdSuccess$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.loadAdSuccess();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$onAdClicked$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.onAdClicked();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$showHyprMXBrowser$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Continuation<? super f> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new f(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.showHyprMXBrowser(this.b);
            }
            return kotlin.v.a;
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.banner.g$g, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$showPlatformBrowser$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0281g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0281g(String str, Continuation<? super C0281g> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new C0281g(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((C0281g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.showPlatformBrowser(this.b);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.banner.HyprMXBannerPresenter$storePicture$2", f = "HyprMXBannerPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, Continuation<? super h> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return g.this.new h(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.banner.f fVar = g.this.a;
            if (fVar != null) {
                fVar.onAdClicked();
            }
            com.hyprmx.android.sdk.banner.f fVar2 = g.this.a;
            if (fVar2 != null) {
                fVar2.storePicture(this.b);
            }
            return kotlin.v.a;
        }
    }

    public g(com.hyprmx.android.sdk.banner.f fVar, String placementName, com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope coroutineScope, com.hyprmx.android.sdk.presentation.h eventPublisher, com.hyprmx.android.sdk.mvp.c lifecycleEventAdapter, com.hyprmx.android.sdk.banner.d sharedInterface) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(lifecycleEventAdapter, "lifecycleEventAdapter");
        Intrinsics.checkNotNullParameter(sharedInterface, "sharedInterface");
        this.a = fVar;
        this.b = sharedInterface;
        this.c = coroutineScope;
        this.f4491d = lifecycleEventAdapter;
        b(new com.hyprmx.android.sdk.banner.a(this, coroutineScope));
        com.hyprmx.android.sdk.core.j jVarA = t.a().a();
        if (jVarA != null) {
            jVarA.a(this);
        }
    }

    @Override // com.hyprmx.android.sdk.core.v
    public final void G() {
        HyprMXLog.d("Banner - onSDKReInit");
        com.hyprmx.android.sdk.banner.f fVar = this.a;
        if (fVar != null) {
            fVar.removePresenter();
        }
        com.hyprmx.android.sdk.banner.f fVar2 = this.a;
        if (fVar2 != null) {
            fVar2.reloadWebView();
        }
        L();
    }

    @Override // com.hyprmx.android.sdk.core.c
    public final void L() {
        this.b.destroy();
        this.a = null;
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object a(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new h(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.presentation.k, com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.b.a();
    }

    @Override // com.hyprmx.android.sdk.banner.e, com.hyprmx.android.sdk.banner.d
    public final void a(float f2, float f3) {
        this.b.a(f2, f3);
    }

    @Override // com.hyprmx.android.sdk.banner.e, com.hyprmx.android.sdk.banner.d
    public final void a(int i) {
        this.b.a(i);
    }

    @Override // com.hyprmx.android.sdk.banner.e, com.hyprmx.android.sdk.banner.d
    public final void a(HyprMXBannerSize definedSize, float f2, float f3) {
        Intrinsics.checkNotNullParameter(definedSize, "definedSize");
        if (!StringsKt__StringsJVMKt.isBlank(this.b.a())) {
            this.b.a(definedSize, f2, f3);
            return;
        }
        HyprMXLog.d("ViewModel does not exist.");
        com.hyprmx.android.sdk.banner.f fVar = this.a;
        if (fVar != null) {
            fVar.loadAdFailure(HyprMXErrors.NO_FILL);
        }
    }

    @Override // com.hyprmx.android.sdk.core.c
    public final void a(com.hyprmx.android.sdk.core.d dVar) {
        this.a = null;
    }

    @Override // com.hyprmx.android.sdk.banner.e, com.hyprmx.android.sdk.banner.d
    public final void a(boolean z) {
        this.b.a(z);
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object b(String str, Continuation<? super kotlin.v> continuation) {
        com.hyprmx.android.sdk.banner.f fVar = this.a;
        if (fVar != null) {
            fVar.onAdClicked();
        }
        com.hyprmx.android.sdk.banner.f fVar2 = this.a;
        if (fVar2 != null) {
            fVar2.openOutsideApplication(str);
        }
        return kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object b(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new b(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.b.b(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object c(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new a(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object c(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new d(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object d(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new e(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void destroy() {
        this.b.destroy();
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object e(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new C0281g(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object f(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new f(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final Object g(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new c(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.c.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.mvp.c
    public final void i(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f4491d.i(event);
    }

    @Override // com.hyprmx.android.sdk.banner.j
    public final void onVisibleEvent(boolean z, int i, int i2, int i3, int i4, boolean z2, boolean z3, boolean z4, int i5, int i6, float f2, boolean z5) {
        this.b.onVisibleEvent(z, i, i2, i3, i4, z2, z3, z4, i5, i6, f2, z5);
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final void startVisibilityTracking(long j, int i) {
        com.hyprmx.android.sdk.banner.f fVar = this.a;
        if (fVar != null) {
            fVar.startVisibilityTracking(j, i);
        }
    }

    @Override // com.hyprmx.android.sdk.banner.b
    public final void stopVisibilityTracking() {
        com.hyprmx.android.sdk.banner.f fVar = this.a;
        if (fVar != null) {
            fVar.stopVisibilityTracking();
        }
    }
}
