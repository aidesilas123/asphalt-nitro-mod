package com.hyprmx.android.sdk.initialization;

import com.hyprmx.android.sdk.consent.ConsentStatus;
import com.hyprmx.android.sdk.core.i0;
import com.hyprmx.android.sdk.core.j;
import com.hyprmx.android.sdk.network.k;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements g {
    public final k a;
    public final i0 b;
    public final com.hyprmx.android.sdk.analytics.b c;

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.UpdateController", f = "UpdateController.kt", i = {0, 0}, l = {119}, m = "onUpdateJavascript", n = {"currentHyprMXController", "tempHyprMXController"}, s = {"L$0", "L$1"})
    public static final class a extends ContinuationImpl {
        public j a;
        public j b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4559e;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4559e |= Integer.MIN_VALUE;
            return f.this.a(null, null, null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.UpdateController", f = "UpdateController.kt", i = {}, l = {92}, m = "requestNewJavascript", n = {}, s = {})
    public static final class b extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return f.this.a((String) null, 0L, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.UpdateController", f = "UpdateController.kt", i = {0, 0, 0, 1, 1}, l = {142, 159}, m = "sharedJSRollback", n = {"this", "hyprMXController", "consentStatus", "hyprMXController", "tempHyprMXController"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1"})
    public static final class c extends ContinuationImpl {
        public Object a;
        public j b;
        public ConsentStatus c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4560d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4562f;

        public c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4560d = obj;
            this.f4562f |= Integer.MIN_VALUE;
            return f.this.a((j) null, (ConsentStatus) null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.UpdateController", f = "UpdateController.kt", i = {}, l = {72}, m = "updateJavascript", n = {}, s = {})
    public static final class d extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return f.this.a(null, null, null, 0L, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.initialization.UpdateController$updateJavascript$2", f = "UpdateController.kt", i = {}, l = {73, 76}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super h>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ long f4563d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ j f4564e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ ConsentStatus f4565f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, long j, j jVar, ConsentStatus consentStatus, Continuation<? super e> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4563d = j;
            this.f4564e = jVar;
            this.f4565f = consentStatus;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return f.this.new e(this.c, this.f4563d, this.f4564e, this.f4565f, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super h> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0053 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.io.IOException {
            /*
                r8 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r8.a
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L1e
                if (r1 == r3) goto L1a
                if (r1 != r2) goto L12
                kotlin.ResultKt.throwOnFailure(r9)
                goto L4d
            L12:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r9.<init>(r0)
                throw r9
            L1a:
                kotlin.ResultKt.throwOnFailure(r9)
                goto L34
            L1e:
                kotlin.ResultKt.throwOnFailure(r9)
                com.hyprmx.android.sdk.initialization.f r9 = com.hyprmx.android.sdk.initialization.f.this
                java.lang.String r1 = r8.c
                long r4 = r8.f4563d
                r6 = 1000(0x3e8, double:4.94E-321)
                long r4 = r4 * r6
                r8.a = r3
                java.lang.Object r9 = r9.a(r1, r4, r8)
                if (r9 != r0) goto L34
                return r0
            L34:
                com.hyprmx.android.sdk.initialization.e r9 = (com.hyprmx.android.sdk.initialization.e) r9
                boolean r1 = r9 instanceof com.hyprmx.android.sdk.initialization.e.b
                if (r1 == 0) goto L54
                com.hyprmx.android.sdk.initialization.f r1 = com.hyprmx.android.sdk.initialization.f.this
                com.hyprmx.android.sdk.initialization.e$b r9 = (com.hyprmx.android.sdk.initialization.e.b) r9
                java.lang.String r9 = r9.a
                com.hyprmx.android.sdk.core.j r3 = r8.f4564e
                com.hyprmx.android.sdk.consent.ConsentStatus r4 = r8.f4565f
                r8.a = r2
                java.lang.Object r9 = r1.a(r9, r3, r4, r8)
                if (r9 != r0) goto L4d
                return r0
            L4d:
                com.hyprmx.android.sdk.initialization.h r9 = (com.hyprmx.android.sdk.initialization.h) r9
                boolean r0 = r9 instanceof com.hyprmx.android.sdk.initialization.h.c
                if (r0 == 0) goto L54
                return r9
            L54:
                com.hyprmx.android.sdk.initialization.h$a r9 = com.hyprmx.android.sdk.initialization.h.a.a
                return r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.initialization.f.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public f(k networkController, i0 storageHelper, com.hyprmx.android.sdk.analytics.b errorCaptureController) {
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(storageHelper, "storageHelper");
        Intrinsics.checkNotNullParameter(errorCaptureController, "errorCaptureController");
        this.a = networkController;
        this.b = storageHelper;
        this.c = errorCaptureController;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.initialization.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.hyprmx.android.sdk.core.j r8, com.hyprmx.android.sdk.consent.ConsentStatus r9, kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.initialization.h> r10) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 254
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.initialization.f.a(com.hyprmx.android.sdk.core.j, com.hyprmx.android.sdk.consent.ConsentStatus, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r6, long r7, kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.initialization.e> r9) {
        /*
            r5 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.initialization.f.b
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.initialization.f$b r0 = (com.hyprmx.android.sdk.initialization.f.b) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.initialization.f$b r0 = new com.hyprmx.android.sdk.initialization.f$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r9)
            goto L48
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.ResultKt.throwOnFailure(r9)
            com.hyprmx.android.sdk.network.k r9 = r5.a
            com.hyprmx.android.sdk.network.a r2 = new com.hyprmx.android.sdk.network.a
            int r8 = (int) r7
            r7 = 0
            r4 = 11
            r2.<init>(r8, r7, r4)
            r0.c = r3
            java.lang.Object r9 = r9.a(r6, r2, r0)
            if (r9 != r1) goto L48
            return r1
        L48:
            com.hyprmx.android.sdk.network.m r9 = (com.hyprmx.android.sdk.network.m) r9
            boolean r6 = r9 instanceof com.hyprmx.android.sdk.network.m.b
            if (r6 == 0) goto L6a
            int r6 = r9.a()
            r7 = 200(0xc8, float:2.8E-43)
            if (r7 > r6) goto L5b
            r7 = 300(0x12c, float:4.2E-43)
            if (r6 >= r7) goto L5b
            goto L5c
        L5b:
            r3 = 0
        L5c:
            if (r3 == 0) goto L6a
            com.hyprmx.android.sdk.network.m$b r9 = (com.hyprmx.android.sdk.network.m.b) r9
            T r6 = r9.b
            java.lang.String r6 = (java.lang.String) r6
            com.hyprmx.android.sdk.initialization.e$b r7 = new com.hyprmx.android.sdk.initialization.e$b
            r7.<init>(r6)
            goto L6f
        L6a:
            com.hyprmx.android.sdk.initialization.e$a r7 = new com.hyprmx.android.sdk.initialization.e$a
            r7.<init>()
        L6f:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.initialization.f.a(java.lang.String, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    @Override // com.hyprmx.android.sdk.initialization.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r16, com.hyprmx.android.sdk.core.j r17, com.hyprmx.android.sdk.consent.ConsentStatus r18, long r19, kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.initialization.h> r21) {
        /*
            r15 = this;
            r0 = r21
            boolean r1 = r0 instanceof com.hyprmx.android.sdk.initialization.f.d
            if (r1 == 0) goto L16
            r1 = r0
            com.hyprmx.android.sdk.initialization.f$d r1 = (com.hyprmx.android.sdk.initialization.f.d) r1
            int r2 = r1.c
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L16
            int r2 = r2 - r3
            r1.c = r2
            r10 = r15
            goto L1c
        L16:
            com.hyprmx.android.sdk.initialization.f$d r1 = new com.hyprmx.android.sdk.initialization.f$d
            r10 = r15
            r1.<init>(r0)
        L1c:
            java.lang.Object r0 = r1.a
            java.lang.Object r11 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r1.c
            r12 = 1
            if (r2 == 0) goto L35
            if (r2 != r12) goto L2d
            kotlin.ResultKt.throwOnFailure(r0)     // Catch: java.lang.Exception -> L59
            goto L56
        L2d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L35:
            kotlin.ResultKt.throwOnFailure(r0)
            r0 = 1000(0x3e8, float:1.401E-42)
            long r2 = (long) r0
            long r13 = r19 * r2
            com.hyprmx.android.sdk.initialization.f$e r0 = new com.hyprmx.android.sdk.initialization.f$e     // Catch: java.lang.Exception -> L59
            r9 = 0
            r2 = r0
            r3 = r15
            r4 = r16
            r5 = r19
            r7 = r17
            r8 = r18
            r2.<init>(r4, r5, r7, r8, r9)     // Catch: java.lang.Exception -> L59
            r1.c = r12     // Catch: java.lang.Exception -> L59
            java.lang.Object r0 = kotlinx.coroutines.TimeoutKt.withTimeout(r13, r0, r1)     // Catch: java.lang.Exception -> L59
            if (r0 != r11) goto L56
            return r11
        L56:
            com.hyprmx.android.sdk.initialization.h r0 = (com.hyprmx.android.sdk.initialization.h) r0     // Catch: java.lang.Exception -> L59
            return r0
        L59:
            com.hyprmx.android.sdk.initialization.h$b r0 = com.hyprmx.android.sdk.initialization.h.b.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.initialization.f.a(java.lang.String, com.hyprmx.android.sdk.core.j, com.hyprmx.android.sdk.consent.ConsentStatus, long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, com.hyprmx.android.sdk.core.j r9, com.hyprmx.android.sdk.consent.ConsentStatus r10, kotlin.coroutines.Continuation<? super com.hyprmx.android.sdk.initialization.h> r11) throws java.io.IOException {
        /*
            r7 = this;
            boolean r0 = r11 instanceof com.hyprmx.android.sdk.initialization.f.a
            if (r0 == 0) goto L13
            r0 = r11
            com.hyprmx.android.sdk.initialization.f$a r0 = (com.hyprmx.android.sdk.initialization.f.a) r0
            int r1 = r0.f4559e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4559e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.initialization.f$a r0 = new com.hyprmx.android.sdk.initialization.f$a
            r0.<init>(r11)
        L18:
            java.lang.Object r11 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4559e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            com.hyprmx.android.sdk.core.j r8 = r0.b
            com.hyprmx.android.sdk.core.j r9 = r0.a
            kotlin.ResultKt.throwOnFailure(r11)
            goto L5f
        L2d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L35:
            kotlin.ResultKt.throwOnFailure(r11)
            com.hyprmx.android.sdk.core.j r11 = new com.hyprmx.android.sdk.core.j
            com.hyprmx.android.sdk.core.b r2 = r9.a
            android.content.Context r2 = r2.z()
            com.hyprmx.android.sdk.core.b r4 = r9.a
            java.lang.String r4 = r4.s()
            com.hyprmx.android.sdk.core.b r5 = r9.a
            java.lang.String r5 = r5.y()
            r11.<init>(r2, r4, r5, r10)
            r0.a = r9
            r0.b = r11
            r0.f4559e = r3
            java.lang.Object r8 = r11.a(r8, r0)
            if (r8 != r1) goto L5c
            return r1
        L5c:
            r6 = r11
            r11 = r8
            r8 = r6
        L5f:
            com.hyprmx.android.sdk.core.j$a r11 = (com.hyprmx.android.sdk.core.j.a) r11
            boolean r10 = r11 instanceof com.hyprmx.android.sdk.core.j.a.b
            if (r10 == 0) goto Lb0
            java.lang.String r10 = "newHyprMXController"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r10)
            java.lang.String r10 = "oldHyprMXController"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r10)
            com.hyprmx.android.sdk.core.b r9 = r9.a
            com.hyprmx.android.sdk.placement.a r9 = r9.E()
            java.util.LinkedHashSet r9 = r9.getPlacements()
            java.util.Iterator r9 = r9.iterator()
        L7d:
            boolean r10 = r9.hasNext()
            if (r10 == 0) goto Laa
            java.lang.Object r10 = r9.next()
            com.hyprmx.android.sdk.placement.c r10 = (com.hyprmx.android.sdk.placement.c) r10
            r10.getClass()
            java.lang.String r11 = "<set-?>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r11)
            r10.a = r8
            com.hyprmx.android.sdk.core.b r11 = r8.a
            com.hyprmx.android.sdk.placement.a r11 = r11.E()
            java.util.LinkedHashSet r11 = r11.getPlacements()
            java.lang.String r0 = "null cannot be cast to non-null type kotlin.collections.MutableSet<com.hyprmx.android.sdk.placement.PlacementImpl>"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r11, r0)
            java.util.Set r11 = kotlin.jvm.internal.TypeIntrinsics.asMutableSet(r11)
            r11.add(r10)
            goto L7d
        Laa:
            com.hyprmx.android.sdk.initialization.h$c r9 = new com.hyprmx.android.sdk.initialization.h$c
            r9.<init>(r8)
            goto Lbb
        Lb0:
            com.hyprmx.android.sdk.core.b r8 = r8.a
            com.hyprmx.android.sdk.core.js.a r8 = r8.n()
            r8.close()
            com.hyprmx.android.sdk.initialization.h$a r9 = com.hyprmx.android.sdk.initialization.h.a.a
        Lbb:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.initialization.f.a(java.lang.String, com.hyprmx.android.sdk.core.j, com.hyprmx.android.sdk.consent.ConsentStatus, kotlin.coroutines.d):java.lang.Object");
    }
}
