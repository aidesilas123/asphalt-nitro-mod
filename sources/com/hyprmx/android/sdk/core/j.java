package com.hyprmx.android.sdk.core;

import android.content.Context;
import android.text.TextUtils;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.placement.Placement;
import com.hyprmx.android.sdk.placement.c;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.n0;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class j implements com.hyprmx.android.sdk.core.b, com.hyprmx.android.sdk.initialization.c, c.a, com.hyprmx.android.sdk.presentation.g, com.hyprmx.android.sdk.bidding.a, CoroutineScope {
    public final com.hyprmx.android.sdk.core.b a;
    public final /* synthetic */ com.hyprmx.android.sdk.bidding.a b;
    public final /* synthetic */ CoroutineScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public com.hyprmx.android.sdk.presentation.f f4505d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4506e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Integer f4507f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public HyprMXState f4508g;
    public final ArrayList h;

    public static abstract class a {

        /* JADX INFO: renamed from: com.hyprmx.android.sdk.core.j$a$a, reason: collision with other inner class name */
        public static final class C0283a extends a {
            public static final C0283a a = new C0283a();

            public C0283a() {
                super(0);
            }
        }

        public static final class b extends a {
            public static final b a = new b();

            public b() {
                super(0);
            }
        }

        public static final class c extends a {
            public final j a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public c(j hyprMXController) {
                super(0);
                Intrinsics.checkNotNullParameter(hyprMXController, "hyprMXController");
                this.a = hyprMXController;
            }
        }

        public a() {
        }

        public /* synthetic */ a(int i) {
            this();
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {0}, l = {301}, m = "cleanup", n = {"this"}, s = {"L$0"})
    public static final class b extends ContinuationImpl {
        public j a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4509d;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4509d |= Integer.MIN_VALUE;
            return j.this.a(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController$cleanup$2", f = "HyprMXController.kt", i = {}, l = {302}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return j.this.new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.preload.n nVarA = j.this.a.a();
                this.a = 1;
                if (nVarA.g(null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            j.this.a.a().close();
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6}, l = {106, 109, 128, 130, 134, 136, 145}, m = MobileAdsBridgeBase.initializeMethodName, n = {"this", "newCoreJS", "this", "newCoreJS", "this", "newCoreJS", "this", "newCoreJS", "this", "newCoreJS", "this", "newCoreJS", "this", "initState"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    public static final class d extends ContinuationImpl {
        public j a;
        public Object b;
        public j c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4510d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4512f;

        public d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4510d = obj;
            this.f4512f |= Integer.MIN_VALUE;
            return j.this.a((String) null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {0}, l = {170, 172, 176, 178}, m = "initializeBase", n = {"this"}, s = {"L$0"})
    public static final class e extends ContinuationImpl {
        public j a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4513d;

        public e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4513d |= Integer.MIN_VALUE;
            return j.this.b(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {0}, l = {197, 210}, m = "initializeFromUpgrade", n = {"this"}, s = {"L$0"})
    public static final class f extends ContinuationImpl {
        public j a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4514d;

        public f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4514d |= Integer.MIN_VALUE;
            return j.this.c(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {}, l = {263}, m = "initializePlacements", n = {}, s = {})
    public static final class g extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return j.this.b(null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController$onSharingEndpointReceived$1", f = "HyprMXController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(String str, Continuation<? super h> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return j.this.new h(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            j.this.a.f().setSharingEndpoint(this.b);
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {}, l = {224}, m = "rollbackCoreJS$HyprMX_Mobile_Android_SDK_release", n = {}, s = {})
    public static final class i extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return j.this.d(this);
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.core.j$j, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController$showAd$1", f = "HyprMXController.kt", i = {}, l = {282}, m = "invokeSuspend", n = {}, s = {})
    public static final class C0284j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ com.hyprmx.android.sdk.placement.c c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0284j(com.hyprmx.android.sdk.placement.c cVar, Continuation<? super C0284j> continuation) {
            super(2, continuation);
            this.c = cVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return j.this.new C0284j(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((C0284j) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                com.hyprmx.android.sdk.presentation.f fVar = j.this.f4505d;
                if (fVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("presentationController");
                    fVar = null;
                }
                com.hyprmx.android.sdk.placement.c cVar = this.c;
                this.a = 1;
                if (fVar.a(cVar) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController", f = "HyprMXController.kt", i = {0, 1}, l = {242, 252, 254}, m = "updateJavascript", n = {"this", "this"}, s = {"L$0", "L$0"})
    public static final class k extends ContinuationImpl {
        public j a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4515d;

        public k(Continuation<? super k> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4515d |= Integer.MIN_VALUE;
            return j.this.a((String) null, 0L, this);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ j(Context context, String str, String str2, ConsentStatus consentStatus) {
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this(context, str, str2, consentStatus, new com.hyprmx.android.sdk.core.f(applicationContext, str, str2, consentStatus));
    }

    public j(Context context, String distributorId, String userId, ConsentStatus consentStatus, com.hyprmx.android.sdk.core.b applicationModule) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(distributorId, "distributorId");
        Intrinsics.checkNotNullParameter(userId, "userId");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        Intrinsics.checkNotNullParameter(applicationModule, "applicationModule");
        this.a = applicationModule;
        this.b = applicationModule.F();
        this.c = applicationModule.w();
        this.f4508g = HyprMXState.NOT_INITIALIZED;
        this.h = new ArrayList();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.preferences.c C() {
        return this.a.C();
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
    public final com.hyprmx.android.sdk.activity.b a(com.hyprmx.android.sdk.core.b applicationModule, com.hyprmx.android.sdk.api.data.a ad, com.hyprmx.android.sdk.presentation.a activityResultListener, com.hyprmx.android.sdk.presentation.e eventPublisher, com.hyprmx.android.sdk.fullscreen.d fullScreenSharedConnector) {
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

    /* JADX WARN: Removed duplicated region for block: B:31:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r12, long r13, kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.core.j.a> r15) {
        /*
            r11 = this;
            boolean r0 = r15 instanceof com.hyprmx.android.sdk.core.j.k
            if (r0 == 0) goto L13
            r0 = r15
            com.hyprmx.android.sdk.core.j$k r0 = (com.hyprmx.android.sdk.core.j.k) r0
            int r1 = r0.f4515d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4515d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.j$k r0 = new com.hyprmx.android.sdk.core.j$k
            r0.<init>(r15)
        L18:
            java.lang.Object r15 = r0.b
            java.lang.Object r8 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r0.f4515d
            r9 = 3
            r10 = 2
            r2 = 1
            if (r1 == 0) goto L44
            if (r1 == r2) goto L3e
            if (r1 == r10) goto L38
            if (r1 != r9) goto L30
            kotlin.ResultKt.throwOnFailure(r15)
            goto L9a
        L30:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L38:
            com.hyprmx.android.sdk.core.j r12 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            goto L84
        L3e:
            com.hyprmx.android.sdk.core.j r12 = r0.a
            kotlin.ResultKt.throwOnFailure(r15)
            goto L63
        L44:
            kotlin.ResultKt.throwOnFailure(r15)
            com.hyprmx.android.sdk.core.b r15 = r11.a
            com.hyprmx.android.sdk.initialization.g r1 = r15.G()
            com.hyprmx.android.sdk.core.b r15 = r11.a
            com.hyprmx.android.sdk.consent.ConsentStatus r4 = r15.getConsentStatus()
            r0.a = r11
            r0.f4515d = r2
            r2 = r12
            r3 = r11
            r5 = r13
            r7 = r0
            java.lang.Object r15 = r1.a(r2, r3, r4, r5, r7)
            if (r15 != r8) goto L62
            return r8
        L62:
            r12 = r11
        L63:
            com.hyprmx.android.sdk.initialization.h r15 = (com.hyprmx.android.sdk.initialization.h) r15
            boolean r13 = r15 instanceof com.hyprmx.android.sdk.initialization.h.c
            if (r13 == 0) goto L73
            com.hyprmx.android.sdk.core.j$a$c r12 = new com.hyprmx.android.sdk.core.j$a$c
            com.hyprmx.android.sdk.initialization.h$c r15 = (com.hyprmx.android.sdk.initialization.h.c) r15
            com.hyprmx.android.sdk.core.j r13 = r15.a
            r12.<init>(r13)
            return r12
        L73:
            com.hyprmx.android.sdk.core.b r13 = r12.a
            com.hyprmx.android.sdk.initialization.b r13 = r13.j()
            r0.a = r12
            r0.f4515d = r10
            java.lang.Object r15 = r13.a(r0)
            if (r15 != r8) goto L84
            return r8
        L84:
            com.hyprmx.android.sdk.initialization.d r15 = (com.hyprmx.android.sdk.initialization.d) r15
            boolean r13 = r15 instanceof com.hyprmx.android.sdk.initialization.d.c
            if (r13 == 0) goto L9d
            com.hyprmx.android.sdk.initialization.d$c r15 = (com.hyprmx.android.sdk.initialization.d.c) r15
            java.lang.String r13 = r15.a
            r14 = 0
            r0.a = r14
            r0.f4515d = r9
            java.lang.Object r12 = r12.b(r13, r0)
            if (r12 != r8) goto L9a
            return r8
        L9a:
            com.hyprmx.android.sdk.core.j$a$b r12 = com.hyprmx.android.sdk.core.j.a.b.a
            return r12
        L9d:
            com.hyprmx.android.sdk.core.j$a$a r12 = com.hyprmx.android.sdk.core.j.a.C0283a.a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.a(java.lang.String, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0166 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x00c6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r14, kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.core.j.a> r15) {
        /*
            Method dump skipped, instruction units count: 524
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.a(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.v> r6) throws java.io.IOException {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.hyprmx.android.sdk.core.j.b
            if (r0 == 0) goto L13
            r0 = r6
            com.hyprmx.android.sdk.core.j$b r0 = (com.hyprmx.android.sdk.core.j.b) r0
            int r1 = r0.f4509d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4509d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.j$b r0 = new com.hyprmx.android.sdk.core.j$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4509d
            r3 = 1
            r4 = 0
            if (r2 == 0) goto L34
            if (r2 != r3) goto L2c
            com.hyprmx.android.sdk.core.j r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4c
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.r r6 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.core.j$c r2 = new com.hyprmx.android.sdk.core.j$c
            r2.<init>(r4)
            r0.a = r5
            r0.f4509d = r3
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)
            if (r6 != r1) goto L4b
            return r1
        L4b:
            r0 = r5
        L4c:
            java.util.ArrayList r6 = r0.h
            java.util.Iterator r6 = r6.iterator()
        L52:
            boolean r1 = r6.hasNext()
            if (r1 == 0) goto L6a
            java.lang.Object r1 = r6.next()
            java.lang.ref.WeakReference r1 = (java.lang.ref.WeakReference) r1
            java.lang.Object r1 = r1.get()
            com.hyprmx.android.sdk.core.v r1 = (com.hyprmx.android.sdk.core.v) r1
            if (r1 == 0) goto L52
            r1.G()
            goto L52
        L6a:
            java.util.ArrayList r6 = r0.h
            r6.clear()
            com.hyprmx.android.sdk.core.b r6 = r0.a
            com.hyprmx.android.sdk.preferences.c r6 = r6.C()
            r6.a()
            com.hyprmx.android.sdk.core.b r6 = r0.a
            com.hyprmx.android.sdk.powersavemode.a r6 = r6.i()
            r6.v()
            com.hyprmx.android.sdk.core.b r6 = r0.a
            com.hyprmx.android.sdk.core.js.a r6 = r6.n()
            r6.close()
            com.hyprmx.android.sdk.core.b r6 = r0.a
            kotlinx.coroutines.s r6 = r6.w()
            kotlinx.coroutines.CoroutineScopeKt.cancel$default(r6, r4, r3, r4)
            kotlin.v r6 = kotlin.v.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.a(kotlin.coroutines.d):java.lang.Object");
    }

    public final void a(HyprMXState hyprMXState) {
        HyprMXLog.d("Initialization Status transitioning from " + this.f4508g + " to " + hyprMXState);
        this.f4508g = hyprMXState;
    }

    public final void a(v listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.h.add(new WeakReference(listener));
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final void a(com.hyprmx.android.sdk.om.b bVar) {
        this.a.a(bVar);
    }

    @Override // com.hyprmx.android.sdk.placement.c.a
    public final void a(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        this.a.E().a(placementName);
    }

    @Override // com.hyprmx.android.sdk.initialization.c
    public final void a(String omSdkUrl, String omPartnerName, String omApiVersion) {
        boolean z;
        Intrinsics.checkNotNullParameter(omSdkUrl, "omSdkUrl");
        Intrinsics.checkNotNullParameter(omPartnerName, "omPartnerName");
        Intrinsics.checkNotNullParameter(omApiVersion, "omApiVersion");
        this.a.q().runningOnMainThread();
        Context appContext = this.a.z();
        com.hyprmx.android.sdk.network.k networkController = this.a.c();
        ThreadAssert threadAssertQ = this.a.q();
        CoroutineScope coroutineScope = this.a.w();
        CoroutineDispatcher ioDispatcher = Dispatchers.getIO();
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(omPartnerName, "omPartnerName");
        Intrinsics.checkNotNullParameter(omApiVersion, "omApiVersion");
        Intrinsics.checkNotNullParameter(omSdkUrl, "omSdkUrl");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(threadAssertQ, "assert");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        threadAssertQ.runningOnMainThread();
        try {
            com.iab.omid.library.jungroup.a.a(appContext);
            z = true;
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("Open Measurement SDK failed to activate with exception: " + e2.getLocalizedMessage());
            z = false;
        }
        com.hyprmx.android.sdk.om.b bVar = null;
        if (z) {
            try {
                if (TextUtils.isEmpty(omPartnerName)) {
                    throw new IllegalArgumentException("Name is null or empty");
                }
                if (TextUtils.isEmpty(omApiVersion)) {
                    throw new IllegalArgumentException("Version is null or empty");
                }
                com.iab.omid.library.jungroup.adsession.j omPartner = new com.iab.omid.library.jungroup.adsession.j(omPartnerName, omApiVersion);
                Intrinsics.checkNotNullExpressionValue(omPartner, "omPartner");
                com.hyprmx.android.sdk.om.b bVar2 = new com.hyprmx.android.sdk.om.b(omPartner, networkController, threadAssertQ, omSdkUrl, appContext, coroutineScope, ioDispatcher);
                BuildersKt__Builders_commonKt.launch$default(bVar2, null, null, new com.hyprmx.android.sdk.om.c(bVar2, null), 3, null);
                bVar = bVar2;
            } catch (IllegalArgumentException e3) {
                HyprMXLog.e("Error creating Open Measurement Partner with error: " + e3.getLocalizedMessage());
            }
        } else {
            HyprMXLog.e("Open Measurement SDK failed to activate");
        }
        this.a.a(bVar);
    }

    @Override // com.hyprmx.android.sdk.bidding.c
    public final boolean a(String placementName, String bidResponseData) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(bidResponseData, "bidResponseData");
        return this.b.a(placementName, bidResponseData);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r5, kotlin.coroutines.Continuation<? super kotlin.v> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.hyprmx.android.sdk.core.j.g
            if (r0 == 0) goto L13
            r0 = r6
            com.hyprmx.android.sdk.core.j$g r0 = (com.hyprmx.android.sdk.core.j.g) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.j$g r0 = new com.hyprmx.android.sdk.core.j$g
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: org.json.JSONException -> L43
            goto L48
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            com.hyprmx.android.sdk.core.b r6 = r4.a     // Catch: org.json.JSONException -> L43
            com.hyprmx.android.sdk.placement.a r6 = r6.E()     // Catch: org.json.JSONException -> L43
            r0.c = r3     // Catch: org.json.JSONException -> L43
            kotlin.v r5 = r6.a(r5, r4)     // Catch: org.json.JSONException -> L43
            if (r5 != r1) goto L48
            return r1
        L43:
            java.lang.String r5 = "Exception parsing placements"
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r5)
        L48:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.b(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.core.j.a> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.hyprmx.android.sdk.core.j.e
            if (r0 == 0) goto L13
            r0 = r11
            com.hyprmx.android.sdk.core.j$e r0 = (com.hyprmx.android.sdk.core.j.e) r0
            int r1 = r0.f4513d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4513d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.j$e r0 = new com.hyprmx.android.sdk.core.j$e
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4513d
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L47
            if (r2 == r6) goto L41
            if (r2 == r5) goto L3a
            if (r2 == r4) goto L3a
            if (r2 != r3) goto L32
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L3e
            goto L9d
        L32:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L3a:
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L3e
            goto L87
        L3e:
            r11 = move-exception
            goto Lad
        L41:
            com.hyprmx.android.sdk.core.j r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)     // Catch: java.lang.Exception -> L3e
            goto L5c
        L47:
            kotlin.ResultKt.throwOnFailure(r11)
            com.hyprmx.android.sdk.core.b r11 = r10.a     // Catch: java.lang.Exception -> L3e
            com.hyprmx.android.sdk.initialization.b r11 = r11.j()     // Catch: java.lang.Exception -> L3e
            r0.a = r10     // Catch: java.lang.Exception -> L3e
            r0.f4513d = r6     // Catch: java.lang.Exception -> L3e
            java.lang.Object r11 = r11.a(r10, r0)     // Catch: java.lang.Exception -> L3e
            if (r11 != r1) goto L5b
            return r1
        L5b:
            r2 = r10
        L5c:
            com.hyprmx.android.sdk.initialization.d r11 = (com.hyprmx.android.sdk.initialization.d) r11     // Catch: java.lang.Exception -> L3e
            boolean r6 = r11 instanceof com.hyprmx.android.sdk.initialization.d.C0289d     // Catch: java.lang.Exception -> L3e
            r7 = 0
            if (r6 == 0) goto L78
            r3 = r11
            com.hyprmx.android.sdk.initialization.d$d r3 = (com.hyprmx.android.sdk.initialization.d.C0289d) r3     // Catch: java.lang.Exception -> L3e
            java.lang.String r3 = r3.a     // Catch: java.lang.Exception -> L3e
            com.hyprmx.android.sdk.initialization.d$d r11 = (com.hyprmx.android.sdk.initialization.d.C0289d) r11     // Catch: java.lang.Exception -> L3e
            int r11 = r11.b     // Catch: java.lang.Exception -> L3e
            long r8 = (long) r11     // Catch: java.lang.Exception -> L3e
            r0.a = r7     // Catch: java.lang.Exception -> L3e
            r0.f4513d = r5     // Catch: java.lang.Exception -> L3e
            java.lang.Object r11 = r2.a(r3, r8, r0)     // Catch: java.lang.Exception -> L3e
            if (r11 != r1) goto L87
            return r1
        L78:
            boolean r5 = r11 instanceof com.hyprmx.android.sdk.initialization.d.b     // Catch: java.lang.Exception -> L3e
            if (r5 == 0) goto L8a
            r0.a = r7     // Catch: java.lang.Exception -> L3e
            r0.f4513d = r4     // Catch: java.lang.Exception -> L3e
            java.lang.Object r11 = r2.d(r0)     // Catch: java.lang.Exception -> L3e
            if (r11 != r1) goto L87
            return r1
        L87:
            com.hyprmx.android.sdk.core.j$a r11 = (com.hyprmx.android.sdk.core.j.a) r11     // Catch: java.lang.Exception -> L3e
            goto Lc4
        L8a:
            boolean r4 = r11 instanceof com.hyprmx.android.sdk.initialization.d.c     // Catch: java.lang.Exception -> L3e
            if (r4 == 0) goto La0
            com.hyprmx.android.sdk.initialization.d$c r11 = (com.hyprmx.android.sdk.initialization.d.c) r11     // Catch: java.lang.Exception -> L3e
            java.lang.String r11 = r11.a     // Catch: java.lang.Exception -> L3e
            r0.a = r7     // Catch: java.lang.Exception -> L3e
            r0.f4513d = r3     // Catch: java.lang.Exception -> L3e
            java.lang.Object r11 = r2.b(r11, r0)     // Catch: java.lang.Exception -> L3e
            if (r11 != r1) goto L9d
            return r1
        L9d:
            com.hyprmx.android.sdk.core.j$a$b r11 = com.hyprmx.android.sdk.core.j.a.b.a     // Catch: java.lang.Exception -> L3e
            goto Lc4
        La0:
            boolean r11 = r11 instanceof com.hyprmx.android.sdk.initialization.d.a     // Catch: java.lang.Exception -> L3e
            if (r11 == 0) goto La7
            com.hyprmx.android.sdk.core.j$a$a r11 = com.hyprmx.android.sdk.core.j.a.C0283a.a     // Catch: java.lang.Exception -> L3e
            goto Lc4
        La7:
            kotlin.k r11 = new kotlin.k     // Catch: java.lang.Exception -> L3e
            r11.<init>()     // Catch: java.lang.Exception -> L3e
            throw r11     // Catch: java.lang.Exception -> L3e
        Lad:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Exception initializing HyprMX: "
            r0.<init>(r1)
            java.lang.String r11 = r11.getLocalizedMessage()
            r0.append(r11)
            java.lang.String r11 = r0.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r11)
            com.hyprmx.android.sdk.core.j$a$a r11 = com.hyprmx.android.sdk.core.j.a.C0283a.a
        Lc4:
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.b(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.placement.c.a
    public final boolean b(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return this.a.E().b(placementName);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.network.k c() {
        return this.a.c();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.core.j.a> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.hyprmx.android.sdk.core.j.f
            if (r0 == 0) goto L13
            r0 = r6
            com.hyprmx.android.sdk.core.j$f r0 = (com.hyprmx.android.sdk.core.j.f) r0
            int r1 = r0.f4514d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4514d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.j$f r0 = new com.hyprmx.android.sdk.core.j$f
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4514d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L78
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            com.hyprmx.android.sdk.core.j r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4f
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            com.hyprmx.android.sdk.core.b r6 = r5.a
            com.hyprmx.android.sdk.initialization.b r6 = r6.j()
            r0.a = r5
            r0.f4514d = r4
            java.lang.Object r6 = r6.a(r5, r0)
            if (r6 != r1) goto L4e
            return r1
        L4e:
            r2 = r5
        L4f:
            com.hyprmx.android.sdk.initialization.d r6 = (com.hyprmx.android.sdk.initialization.d) r6
            boolean r4 = r6 instanceof com.hyprmx.android.sdk.initialization.d.C0289d
            if (r4 == 0) goto L5d
            java.lang.String r6 = "Upgrade called during upgrade."
        L57:
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r6)
            com.hyprmx.android.sdk.core.j$a$a r6 = com.hyprmx.android.sdk.core.j.a.C0283a.a
            goto L86
        L5d:
            boolean r4 = r6 instanceof com.hyprmx.android.sdk.initialization.d.b
            if (r4 == 0) goto L64
            java.lang.String r6 = "Rollback called during upgrade."
            goto L57
        L64:
            boolean r4 = r6 instanceof com.hyprmx.android.sdk.initialization.d.c
            if (r4 == 0) goto L7b
            com.hyprmx.android.sdk.initialization.d$c r6 = (com.hyprmx.android.sdk.initialization.d.c) r6
            java.lang.String r6 = r6.a
            r4 = 0
            r0.a = r4
            r0.f4514d = r3
            java.lang.Object r6 = r2.b(r6, r0)
            if (r6 != r1) goto L78
            return r1
        L78:
            com.hyprmx.android.sdk.core.j$a$b r6 = com.hyprmx.android.sdk.core.j.a.b.a
            goto L86
        L7b:
            boolean r6 = r6 instanceof com.hyprmx.android.sdk.initialization.d.a
            if (r6 == 0) goto L87
            java.lang.String r6 = "Initialization failed during upgrade."
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r6)
            com.hyprmx.android.sdk.core.j$a$a r6 = com.hyprmx.android.sdk.core.j.a.C0283a.a
        L86:
            return r6
        L87:
            kotlin.k r6 = new kotlin.k
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.c(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.placement.c.a
    public final void c(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        if (this.f4508g != HyprMXState.INITIALIZATION_COMPLETE) {
            HyprMXLog.w("HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed");
        }
        com.hyprmx.android.sdk.placement.c placement = this.a.E().getPlacement(placementName);
        Intrinsics.checkNotNull(placement, "null cannot be cast to non-null type com.hyprmx.android.sdk.placement.PlacementImpl");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new C0284j(placement, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final i0 d() {
        return this.a.d();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.core.j.a> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.core.j.i
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.core.j$i r0 = (com.hyprmx.android.sdk.core.j.i) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.j$i r0 = new com.hyprmx.android.sdk.core.j$i
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L49
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            com.hyprmx.android.sdk.core.b r5 = r4.a
            com.hyprmx.android.sdk.initialization.g r5 = r5.G()
            com.hyprmx.android.sdk.core.b r2 = r4.a
            com.hyprmx.android.sdk.consent.ConsentStatus r2 = r2.getConsentStatus()
            r0.c = r3
            java.lang.Object r5 = r5.a(r4, r2, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            com.hyprmx.android.sdk.initialization.h r5 = (com.hyprmx.android.sdk.initialization.h) r5
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.initialization.h.c
            if (r0 == 0) goto L59
            com.hyprmx.android.sdk.core.j$a$c r0 = new com.hyprmx.android.sdk.core.j$a$c
            com.hyprmx.android.sdk.initialization.h$c r5 = (com.hyprmx.android.sdk.initialization.h.c) r5
            com.hyprmx.android.sdk.core.j r5 = r5.a
            r0.<init>(r5)
            goto L5b
        L59:
            com.hyprmx.android.sdk.core.j$a$a r0 = com.hyprmx.android.sdk.core.j.a.C0283a.a
        L5b:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.j.d(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.initialization.c
    public final void d(String sharingEndpoint) {
        Intrinsics.checkNotNullParameter(sharingEndpoint, "sharingEndpoint");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(sharingEndpoint, null), 3, null);
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

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.c.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.presentation.g
    public final Placement getPlacement(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        if (this.f4508g != HyprMXState.INITIALIZATION_COMPLETE) {
            HyprMXLog.w("HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed");
        }
        return this.a.E().getPlacement(placementName);
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

    @Override // com.hyprmx.android.sdk.bidding.a
    public final String l() {
        return this.b.l();
    }

    @Override // com.hyprmx.android.sdk.core.b
    public final com.hyprmx.android.sdk.core.js.a n() {
        return this.a.n();
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
