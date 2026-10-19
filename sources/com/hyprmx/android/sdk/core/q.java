package com.hyprmx.android.sdk.core;

import android.content.Context;
import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.core.HyprMXIf;
import com.hyprmx.android.sdk.placement.Placement;
import com.hyprmx.android.sdk.placement.PlacementType;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.a1;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements HyprMXIf {
    public final p a;
    public final Job b;
    public final com.hyprmx.android.sdk.webview.o c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u f4518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CoroutineScope f4519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4520f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public j f4521g;
    public HyprMXIf.HyprMXInitializationListener h;
    public boolean i;
    public HyprMXIf.HyprMXAudioAdListener j;

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXDelegate", f = "HyprMX.kt", i = {}, l = {216}, m = "getAdCacheState", n = {}, s = {})
    public static final class a extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return q.this.a(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXDelegate$initialize$3", f = "HyprMX.kt", i = {}, l = {115}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return q.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.a = 1;
                if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            HyprMXLog.i("HyprMX Initialization Failed recently, please wait before trying again.");
            HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener = q.this.h;
            if (hyprMXInitializationListener != null) {
                hyprMXInitializationListener.initializationFailed();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXDelegate$initialize$4", f = "HyprMX.kt", i = {}, l = {126, 128, 129}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ q c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ HyprMXIf.HyprMXInitializationListener f4522d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f4523e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f4524f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ ConsentStatus f4525g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, q qVar, HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener, String str, String str2, ConsentStatus consentStatus, Continuation<? super c> continuation) {
            super(2, continuation);
            this.b = context;
            this.c = qVar;
            this.f4522d = hyprMXInitializationListener;
            this.f4523e = str;
            this.f4524f = str2;
            this.f4525g = consentStatus;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new c(this.b, this.c, this.f4522d, this.f4523e, this.f4524f, this.f4525g, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0068 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r10.a
                r2 = 3
                r3 = 2
                r4 = 1
                if (r1 == 0) goto L25
                if (r1 == r4) goto L21
                if (r1 == r3) goto L1d
                if (r1 != r2) goto L15
                kotlin.ResultKt.throwOnFailure(r11)
                goto L69
            L15:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1d:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L48
            L21:
                kotlin.ResultKt.throwOnFailure(r11)
                goto L35
            L25:
                kotlin.ResultKt.throwOnFailure(r11)
                com.hyprmx.android.sdk.utility.HyprMXLog r11 = com.hyprmx.android.sdk.utility.HyprMXLog.INSTANCE
                android.content.Context r1 = r10.b
                r10.a = r4
                java.lang.Object r11 = r11.setup$HyprMX_Mobile_Android_SDK_release(r1, r10)
                if (r11 != r0) goto L35
                return r0
            L35:
                com.hyprmx.android.sdk.core.q r11 = r10.c
                com.hyprmx.android.sdk.core.HyprMXIf$HyprMXInitializationListener r1 = r10.f4522d
                r11.h = r1
                com.hyprmx.android.sdk.core.j r11 = r11.f4521g
                if (r11 == 0) goto L48
                r10.a = r3
                java.lang.Object r11 = r11.a(r10)
                if (r11 != r0) goto L48
                return r0
            L48:
                com.hyprmx.android.sdk.core.q r4 = r10.c
                android.content.Context r5 = r10.b
                java.lang.String r6 = r10.f4523e
                java.lang.String r7 = r10.f4524f
                com.hyprmx.android.sdk.consent.ConsentStatus r8 = r10.f4525g
                r10.a = r2
                r4.getClass()
                kotlinx.coroutines.t0 r11 = kotlinx.coroutines.Dispatchers.getMain()
                com.hyprmx.android.sdk.core.r r1 = new com.hyprmx.android.sdk.core.r
                r9 = 0
                r3 = r1
                r3.<init>(r4, r5, r6, r7, r8, r9)
                java.lang.Object r11 = kotlinx.coroutines.BuildersKt.withContext(r11, r1, r10)
                if (r11 != r0) goto L69
                return r0
            L69:
                kotlin.v r11 = kotlin.v.a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.q.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ q(int i) {
        this(new g(), SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null), com.hyprmx.android.sdk.webview.b.a(), new u());
    }

    public q(p factory, Job job, com.hyprmx.android.sdk.webview.o sytemWebViewAvailability, u hyprMXMediation) {
        Intrinsics.checkNotNullParameter(factory, "factory");
        Intrinsics.checkNotNullParameter(job, "job");
        Intrinsics.checkNotNullParameter(sytemWebViewAvailability, "sytemWebViewAvailability");
        Intrinsics.checkNotNullParameter(hyprMXMediation, "hyprMXMediation");
        this.a = factory;
        this.b = job;
        this.c = sytemWebViewAvailability;
        this.f4518d = hyprMXMediation;
        this.f4519e = CoroutineScopeKt.CoroutineScope(Dispatchers.getMain().plus(job));
    }

    public final j a() {
        return this.f4521g;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super java.util.Map<java.lang.String, java.lang.Boolean>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.core.q.a
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.core.q$a r0 = (com.hyprmx.android.sdk.core.q.a) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.core.q$a r0 = new com.hyprmx.android.sdk.core.q$a
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r5)
            goto L47
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r5)
            com.hyprmx.android.sdk.core.j r5 = r4.f4521g
            if (r5 == 0) goto L4b
            r0.c = r3
            com.hyprmx.android.sdk.core.b r5 = r5.a
            com.hyprmx.android.sdk.preload.n r5 = r5.a()
            java.lang.Object r5 = r5.c(r0)
            if (r5 != r1) goto L47
            return r1
        L47:
            java.util.Map r5 = (java.util.Map) r5
            if (r5 != 0) goto L4f
        L4b:
            java.util.Map r5 = kotlin.collections.d0.emptyMap()
        L4f:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.q.a(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final HyprMXState getInitializationState() {
        HyprMXState hyprMXState;
        j jVar = this.f4521g;
        return (jVar == null || (hyprMXState = jVar.f4508g) == null) ? HyprMXState.NOT_INITIALIZED : hyprMXState;
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final Placement getPlacement(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        j jVar = this.f4521g;
        if (jVar != null) {
            Intrinsics.checkNotNullParameter(placementName, "placementName");
            if (jVar.f4508g != HyprMXState.INITIALIZATION_COMPLETE) {
                HyprMXLog.w("HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed");
            }
            com.hyprmx.android.sdk.placement.c placement = jVar.a.E().getPlacement(placementName);
            if (placement != null) {
                return placement;
            }
        }
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return new com.hyprmx.android.sdk.placement.c(new com.hyprmx.android.sdk.placement.d(), PlacementType.INVALID, placementName);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final Set<Placement> getPlacements() {
        LinkedHashSet placements;
        j jVar = this.f4521g;
        return (jVar == null || (placements = jVar.a.E().getPlacements()) == null) ? SetsKt__SetsKt.emptySet() : placements;
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void initialize(Context context, String str, String str2, ConsentStatus consentStatus, HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        initialize(context, str, str2, consentStatus, false, hyprMXInitializationListener);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void initialize(Context context, String str, String str2, ConsentStatus consentStatus, boolean z, HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener) {
        CoroutineScope coroutineScope;
        CoroutineContext coroutineContext;
        CoroutineStart coroutineStart;
        Function2 bVar;
        int i;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        this.f4520f = z;
        if (a1.a()) {
            HyprMXLog.e("HyprMX requires Android OS version API 26 or newer. SDK disabled.");
            if (hyprMXInitializationListener != null) {
                hyprMXInitializationListener.initializationFailed();
                return;
            }
            return;
        }
        if (!this.c.a(context)) {
            HyprMXLog.e("HyprMX requires a system webview be enabled.  Please enable your system webview.");
            if (hyprMXInitializationListener != null) {
                hyprMXInitializationListener.initializationFailed();
                return;
            }
            return;
        }
        if (str2 == null) {
            throw new IllegalStateException("userId must be non-null.".toString());
        }
        if (str == null) {
            throw new IllegalStateException("distributorId must be non-null.".toString());
        }
        if (this.i) {
            coroutineScope = this.f4519e;
            coroutineContext = null;
            coroutineStart = null;
            bVar = new b(null);
            i = 3;
            obj = null;
        } else {
            JobKt__JobKt.cancelChildren$default(this.b, (CancellationException) null, 1, (Object) null);
            CoroutineScope coroutineScope2 = this.f4519e;
            c cVar = new c(context, this, hyprMXInitializationListener, str, str2, consentStatus, null);
            coroutineScope = coroutineScope2;
            coroutineContext = null;
            coroutineStart = null;
            bVar = cVar;
            i = 3;
            obj = null;
        }
        BuildersKt__Builders_commonKt.launch$default(coroutineScope, coroutineContext, coroutineStart, bVar, i, obj);
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void initialize(Context context, String str, String str2, HyprMXIf.HyprMXInitializationListener hyprMXInitializationListener) {
        Intrinsics.checkNotNullParameter(context, "context");
        ConsentStatus consentStatus = ConsentStatus.CONSENT_STATUS_UNKNOWN;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        initialize(context, str, str2, consentStatus, false, hyprMXInitializationListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017  */
    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String sessionToken() {
        /*
            r4 = this;
            com.hyprmx.android.sdk.core.j r0 = r4.f4521g
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L17
            com.hyprmx.android.sdk.core.HyprMXState r0 = r0.f4508g
            com.hyprmx.android.sdk.core.HyprMXState r3 = com.hyprmx.android.sdk.core.HyprMXState.INITIALIZATION_COMPLETE
            if (r0 == r3) goto L13
            java.lang.String r0 = "HyprMX is not initialized.  Please call HyprMX.initialize and wait for HyprMXInitializationListener.setInitializationComplete to proceed"
            com.hyprmx.android.sdk.utility.HyprMXLog.w(r0)
            r0 = 0
            goto L14
        L13:
            r0 = 1
        L14:
            if (r0 != 0) goto L17
            goto L18
        L17:
            r1 = 0
        L18:
            r0 = 0
            if (r1 == 0) goto L21
            java.lang.String r1 = "HyprMX needs to be initialized before retrieving session token"
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r1)
            goto L31
        L21:
            com.hyprmx.android.sdk.core.j r1 = r4.f4521g     // Catch: java.lang.Exception -> L2c
            if (r1 == 0) goto L31
            com.hyprmx.android.sdk.bidding.a r1 = r1.b     // Catch: java.lang.Exception -> L2c
            java.lang.String r0 = r1.l()     // Catch: java.lang.Exception -> L2c
            goto L31
        L2c:
            java.lang.String r1 = "There was an error generating the session token"
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r1)
        L31:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.q.sessionToken():java.lang.String");
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void setAudioAdListener(HyprMXIf.HyprMXAudioAdListener hyprMXAudioAdListener) {
        this.j = hyprMXAudioAdListener;
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void setConsentStatus(ConsentStatus consentStatus) {
        Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
        j jVar = this.f4521g;
        if (jVar != null) {
            Intrinsics.checkNotNullParameter(consentStatus, "consentStatus");
            jVar.a.h().a(consentStatus);
        }
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void setMediationProvider(String str, String str2, String str3) {
        u uVar = this.f4518d;
        uVar.b = str;
        uVar.c = str2;
        uVar.f4530d = str3;
    }

    @Override // com.hyprmx.android.sdk.core.HyprMXIf
    public final void setUnityVersion(String str) {
        this.f4518d.a = str;
    }
}
