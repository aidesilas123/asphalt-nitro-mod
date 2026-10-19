package com.hyprmx.android.sdk.tracking;

import com.json.o2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.hyprmx.android.sdk.tracking.c {
    public final Mutex a = MutexKt.Mutex$default(false, 1, null);
    public final List<com.hyprmx.android.sdk.tracking.a> b;
    public final Set<Long> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4684e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4685f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4686g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 0}, l = {157}, m = "addTracker", n = {"this", "tracker", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2"})
    public static final class a extends ContinuationImpl {
        public b a;
        public com.hyprmx.android.sdk.tracking.a b;
        public Mutex c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4687d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4689f;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4687d = obj;
            this.f4689f |= Integer.MIN_VALUE;
            return b.this.a((com.hyprmx.android.sdk.tracking.a) null, this);
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.tracking.b$b, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 90}, m = "onClick", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class C0300b extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4691e;

        public C0300b(Continuation<? super C0300b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4691e |= Integer.MIN_VALUE;
            return b.this.h(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 107}, m = "onClose", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class c extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4693e;

        public c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4693e |= Integer.MIN_VALUE;
            return b.this.m(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 74}, m = "onComplete", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class d extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4695e;

        public d(Continuation<? super d> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4695e |= Integer.MIN_VALUE;
            return b.this.b(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 83}, m = "onImpression", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class e extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4697e;

        public e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4697e |= Integer.MIN_VALUE;
            return b.this.l(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 137}, m = "onNonViewable", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class f extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4699e;

        public f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4699e |= Integer.MIN_VALUE;
            return b.this.d(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 114}, m = o2.h.t0, n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class g extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4701e;

        public g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4701e |= Integer.MIN_VALUE;
            return b.this.k(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 5, 5}, l = {157, 48, 52, 56, 60, 64}, m = "onProgress", n = {"this", "$this$withLock_u24default$iv", "duration", "currentPosition", "this", "$this$withLock_u24default$iv", "currentPositionInSeconds", "progressPercentage", "this", "$this$withLock_u24default$iv", "currentPositionInSeconds", "progressPercentage", "this", "$this$withLock_u24default$iv", "currentPositionInSeconds", "progressPercentage", "this", "$this$withLock_u24default$iv", "currentPositionInSeconds", "$this$withLock_u24default$iv", "currentPositionInSeconds"}, s = {"L$0", "L$1", "J$0", "J$1", "L$0", "L$1", "J$0", "F$0", "L$0", "L$1", "J$0", "F$0", "L$0", "L$1", "J$0", "F$0", "L$0", "L$1", "J$0", "L$0", "J$0"})
    public static final class h extends ContinuationImpl {
        public Object a;
        public Object b;
        public Iterator c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f4702d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f4703e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f4704f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public /* synthetic */ Object f4705g;
        public int i;

        public h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4705g = obj;
            this.i |= Integer.MIN_VALUE;
            return b.this.a(0L, 0L, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 120}, m = o2.h.u0, n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class i extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4707e;

        public i(Continuation<? super i> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4707e |= Integer.MIN_VALUE;
            return b.this.g(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 128}, m = "onSkip", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class j extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4709e;

        public j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4709e |= Integer.MIN_VALUE;
            return b.this.c(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 98}, m = "onView", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class k extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4711e;

        public k(Continuation<? super k> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4711e |= Integer.MIN_VALUE;
            return b.this.a(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.tracking.VideoTrackingDelegate", f = "VideoTrackingDelegate.kt", i = {0, 0, 1}, l = {157, 146}, m = "onViewable", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class l extends ContinuationImpl {
        public Object a;
        public Object b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4713e;

        public l(Continuation<? super l> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4713e |= Integer.MIN_VALUE;
            return b.this.i(this);
        }
    }

    public b() {
        List<com.hyprmx.android.sdk.tracking.a> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(listSynchronizedList, "synchronizedList(mutableListOf())");
        this.b = listSynchronizedList;
        Set<Long> setSynchronizedSet = Collections.synchronizedSet(new LinkedHashSet());
        Intrinsics.checkNotNullExpressionValue(setSynchronizedSet, "synchronizedSet(mutableSetOf())");
        this.c = setSynchronizedSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00cf A[Catch: all -> 0x00e9, TryCatch #1 {all -> 0x00e9, blocks: (B:83:0x0196, B:85:0x01a2, B:19:0x005b, B:62:0x013a, B:64:0x0140, B:68:0x015c, B:72:0x0166, B:22:0x006e, B:51:0x0103, B:53:0x0109, B:57:0x0125, B:61:0x012f, B:25:0x0081, B:38:0x00c9, B:40:0x00cf, B:46:0x00ee, B:50:0x00f8, B:35:0x00b5, B:37:0x00be), top: B:99:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0109 A[Catch: all -> 0x00e9, TryCatch #1 {all -> 0x00e9, blocks: (B:83:0x0196, B:85:0x01a2, B:19:0x005b, B:62:0x013a, B:64:0x0140, B:68:0x015c, B:72:0x0166, B:22:0x006e, B:51:0x0103, B:53:0x0109, B:57:0x0125, B:61:0x012f, B:25:0x0081, B:38:0x00c9, B:40:0x00cf, B:46:0x00ee, B:50:0x00f8, B:35:0x00b5, B:37:0x00be), top: B:99:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0140 A[Catch: all -> 0x00e9, TryCatch #1 {all -> 0x00e9, blocks: (B:83:0x0196, B:85:0x01a2, B:19:0x005b, B:62:0x013a, B:64:0x0140, B:68:0x015c, B:72:0x0166, B:22:0x006e, B:51:0x0103, B:53:0x0109, B:57:0x0125, B:61:0x012f, B:25:0x0081, B:38:0x00c9, B:40:0x00cf, B:46:0x00ee, B:50:0x00f8, B:35:0x00b5, B:37:0x00be), top: B:99:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0178 A[Catch: all -> 0x0193, TRY_LEAVE, TryCatch #0 {all -> 0x0193, blocks: (B:13:0x0037, B:87:0x01b2, B:89:0x01b8, B:93:0x01d1, B:16:0x0048, B:74:0x0172, B:76:0x0178), top: B:99:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01a2 A[Catch: all -> 0x00e9, TRY_LEAVE, TryCatch #1 {all -> 0x00e9, blocks: (B:83:0x0196, B:85:0x01a2, B:19:0x005b, B:62:0x013a, B:64:0x0140, B:68:0x015c, B:72:0x0166, B:22:0x006e, B:51:0x0103, B:53:0x0109, B:57:0x0125, B:61:0x012f, B:25:0x0081, B:38:0x00c9, B:40:0x00cf, B:46:0x00ee, B:50:0x00f8, B:35:0x00b5, B:37:0x00be), top: B:99:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01b8 A[Catch: all -> 0x0193, TryCatch #0 {all -> 0x0193, blocks: (B:13:0x0037, B:87:0x01b2, B:89:0x01b8, B:93:0x01d1, B:16:0x0048, B:74:0x0172, B:76:0x0178), top: B:99:0x0022 }] */
    /* JADX WARN: Type inference failed for: r12v11 */
    /* JADX WARN: Type inference failed for: r12v14 */
    /* JADX WARN: Type inference failed for: r12v18, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r12v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v46 */
    @Override // com.hyprmx.android.sdk.tracking.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r9, long r11, kotlin.coroutines.Continuation<? super kotlin.v> r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 494
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.a(long, long, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object a(long j2, Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.a(this, j2, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(com.hyprmx.android.sdk.tracking.a r6, kotlin.coroutines.Continuation<? super kotlin.v> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.hyprmx.android.sdk.tracking.b.a
            if (r0 == 0) goto L13
            r0 = r7
            com.hyprmx.android.sdk.tracking.b$a r0 = (com.hyprmx.android.sdk.tracking.b.a) r0
            int r1 = r0.f4689f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4689f = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$a r0 = new com.hyprmx.android.sdk.tracking.b$a
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.f4687d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4689f
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L38
            if (r2 != r4) goto L30
            kotlinx.coroutines.sync.Mutex r6 = r0.c
            com.hyprmx.android.sdk.tracking.a r1 = r0.b
            com.hyprmx.android.sdk.tracking.b r0 = r0.a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4f
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r5.a
            r0.a = r5
            r0.b = r6
            r0.c = r7
            r0.f4689f = r4
            java.lang.Object r0 = r7.c(r3, r0)
            if (r0 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
            r1 = r6
            r6 = r7
        L4f:
            java.util.List<com.hyprmx.android.sdk.tracking.a> r7 = r0.b     // Catch: java.lang.Throwable -> L5a
            r7.add(r1)     // Catch: java.lang.Throwable -> L5a
            r6.d(r3)
            kotlin.v r6 = kotlin.v.a
            return r6
        L5a:
            r7 = move-exception
            r6.d(r3)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.a(com.hyprmx.android.sdk.tracking.a, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.k
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$k r0 = (com.hyprmx.android.sdk.tracking.b.k) r0
            int r1 = r0.f4711e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4711e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$k r0 = new com.hyprmx.android.sdk.tracking.b$k
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4711e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4711e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.k     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.k = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4711e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.a(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.a(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.d
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$d r0 = (com.hyprmx.android.sdk.tracking.b.d) r0
            int r1 = r0.f4695e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4695e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$d r0 = new com.hyprmx.android.sdk.tracking.b$d
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4695e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4695e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.i     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.i = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4695e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.b(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.b(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.j
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$j r0 = (com.hyprmx.android.sdk.tracking.b.j) r0
            int r1 = r0.f4709e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4709e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$j r0 = new com.hyprmx.android.sdk.tracking.b$j
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4709e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4709e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.m     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.m = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4709e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.c(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.c(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.f
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$f r0 = (com.hyprmx.android.sdk.tracking.b.f) r0
            int r1 = r0.f4699e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4699e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$f r0 = new com.hyprmx.android.sdk.tracking.b$f
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4699e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4699e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.j     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.j = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4699e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.d(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.d(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object e(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.f(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object f(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.g(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0031, B:26:0x0066, B:28:0x006c, B:31:0x007f), top: B:40:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object g(kotlin.coroutines.Continuation<? super kotlin.v> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.hyprmx.android.sdk.tracking.b.i
            if (r0 == 0) goto L13
            r0 = r7
            com.hyprmx.android.sdk.tracking.b$i r0 = (com.hyprmx.android.sdk.tracking.b.i) r0
            int r1 = r0.f4707e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4707e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$i r0 = new com.hyprmx.android.sdk.tracking.b$i
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4707e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.a
            kotlinx.coroutines.sync.Mutex r4 = (kotlinx.coroutines.sync.Mutex) r4
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L35
            goto L66
        L35:
            r7 = move-exception
            goto L88
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.tracking.b r4 = (com.hyprmx.android.sdk.tracking.b) r4
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.a
            r0.a = r6
            r0.b = r7
            r0.f4707e = r4
            java.lang.Object r2 = r7.c(r5, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r4 = r6
        L5f:
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r4.b     // Catch: java.lang.Throwable -> L85
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L85
            r4 = r7
        L66:
            boolean r7 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r7 == 0) goto L7f
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r7 = (com.hyprmx.android.sdk.tracking.a) r7     // Catch: java.lang.Throwable -> L35
            r0.a = r4     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4707e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r7 = r7.g(r0)     // Catch: java.lang.Throwable -> L35
            if (r7 != r1) goto L66
            return r1
        L7f:
            kotlin.v r7 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r4.d(r5)
            return r7
        L85:
            r0 = move-exception
            r4 = r7
            r7 = r0
        L88:
            r4.d(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.g(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0031, B:26:0x0066, B:28:0x006c, B:31:0x007f), top: B:40:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object h(kotlin.coroutines.Continuation<? super kotlin.v> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.hyprmx.android.sdk.tracking.b.C0300b
            if (r0 == 0) goto L13
            r0 = r7
            com.hyprmx.android.sdk.tracking.b$b r0 = (com.hyprmx.android.sdk.tracking.b.C0300b) r0
            int r1 = r0.f4691e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4691e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$b r0 = new com.hyprmx.android.sdk.tracking.b$b
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4691e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.a
            kotlinx.coroutines.sync.Mutex r4 = (kotlinx.coroutines.sync.Mutex) r4
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L35
            goto L66
        L35:
            r7 = move-exception
            goto L88
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.tracking.b r4 = (com.hyprmx.android.sdk.tracking.b) r4
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.a
            r0.a = r6
            r0.b = r7
            r0.f4691e = r4
            java.lang.Object r2 = r7.c(r5, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r4 = r6
        L5f:
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r4.b     // Catch: java.lang.Throwable -> L85
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L85
            r4 = r7
        L66:
            boolean r7 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r7 == 0) goto L7f
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r7 = (com.hyprmx.android.sdk.tracking.a) r7     // Catch: java.lang.Throwable -> L35
            r0.a = r4     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4691e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r7 = r7.h(r0)     // Catch: java.lang.Throwable -> L35
            if (r7 != r1) goto L66
            return r1
        L7f:
            kotlin.v r7 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r4.d(r5)
            return r7
        L85:
            r0 = move-exception
            r4 = r7
            r7 = r0
        L88:
            r4.d(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.h(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object i(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.l
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$l r0 = (com.hyprmx.android.sdk.tracking.b.l) r0
            int r1 = r0.f4713e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4713e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$l r0 = new com.hyprmx.android.sdk.tracking.b$l
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4713e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4713e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.j     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.j = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4713e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.i(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.i(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object j(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.k(this, continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x006c A[Catch: all -> 0x0035, TryCatch #1 {all -> 0x0035, blocks: (B:13:0x0031, B:26:0x0066, B:28:0x006c, B:31:0x007f), top: B:40:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object k(kotlin.coroutines.Continuation<? super kotlin.v> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof com.hyprmx.android.sdk.tracking.b.g
            if (r0 == 0) goto L13
            r0 = r7
            com.hyprmx.android.sdk.tracking.b$g r0 = (com.hyprmx.android.sdk.tracking.b.g) r0
            int r1 = r0.f4701e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4701e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$g r0 = new com.hyprmx.android.sdk.tracking.b$g
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4701e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L4c
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r4 = r0.a
            kotlinx.coroutines.sync.Mutex r4 = (kotlinx.coroutines.sync.Mutex) r4
            kotlin.ResultKt.throwOnFailure(r7)     // Catch: java.lang.Throwable -> L35
            goto L66
        L35:
            r7 = move-exception
            goto L88
        L37:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.tracking.b r4 = (com.hyprmx.android.sdk.tracking.b) r4
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.sync.Mutex r7 = r6.a
            r0.a = r6
            r0.b = r7
            r0.f4701e = r4
            java.lang.Object r2 = r7.c(r5, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r4 = r6
        L5f:
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r4.b     // Catch: java.lang.Throwable -> L85
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L85
            r4 = r7
        L66:
            boolean r7 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r7 == 0) goto L7f
            java.lang.Object r7 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r7 = (com.hyprmx.android.sdk.tracking.a) r7     // Catch: java.lang.Throwable -> L35
            r0.a = r4     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4701e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r7 = r7.k(r0)     // Catch: java.lang.Throwable -> L35
            if (r7 != r1) goto L66
            return r1
        L7f:
            kotlin.v r7 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r4.d(r5)
            return r7
        L85:
            r0 = move-exception
            r4 = r7
            r7 = r0
        L88:
            r4.d(r5)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.k(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object l(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.e
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$e r0 = (com.hyprmx.android.sdk.tracking.b.e) r0
            int r1 = r0.f4697e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4697e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$e r0 = new com.hyprmx.android.sdk.tracking.b$e
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4697e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4697e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.h     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.h = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4697e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.l(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.l(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0072 A[Catch: all -> 0x0035, TryCatch #0 {all -> 0x0035, blocks: (B:13:0x0031, B:28:0x006c, B:30:0x0072, B:34:0x0086), top: B:41:0x0031 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m(kotlin.coroutines.Continuation<? super kotlin.v> r8) throws java.lang.Throwable {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.hyprmx.android.sdk.tracking.b.c
            if (r0 == 0) goto L13
            r0 = r8
            com.hyprmx.android.sdk.tracking.b$c r0 = (com.hyprmx.android.sdk.tracking.b.c) r0
            int r1 = r0.f4693e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4693e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.tracking.b$c r0 = new com.hyprmx.android.sdk.tracking.b$c
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4693e
            r3 = 2
            r4 = 0
            r5 = 1
            if (r2 == 0) goto L4c
            if (r2 == r5) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r2 = r0.b
            java.util.Iterator r2 = (java.util.Iterator) r2
            java.lang.Object r5 = r0.a
            kotlinx.coroutines.sync.Mutex r5 = (kotlinx.coroutines.sync.Mutex) r5
            kotlin.ResultKt.throwOnFailure(r8)     // Catch: java.lang.Throwable -> L35
            goto L6c
        L35:
            r8 = move-exception
            goto L8f
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L3f:
            java.lang.Object r2 = r0.b
            kotlinx.coroutines.sync.Mutex r2 = (kotlinx.coroutines.sync.Mutex) r2
            java.lang.Object r6 = r0.a
            com.hyprmx.android.sdk.tracking.b r6 = (com.hyprmx.android.sdk.tracking.b) r6
            kotlin.ResultKt.throwOnFailure(r8)
            r8 = r2
            goto L5f
        L4c:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlinx.coroutines.sync.Mutex r8 = r7.a
            r0.a = r7
            r0.b = r8
            r0.f4693e = r5
            java.lang.Object r2 = r8.c(r4, r0)
            if (r2 != r1) goto L5e
            return r1
        L5e:
            r6 = r7
        L5f:
            boolean r2 = r6.l     // Catch: java.lang.Throwable -> L8c
            if (r2 != 0) goto L85
            r6.l = r5     // Catch: java.lang.Throwable -> L8c
            java.util.List<com.hyprmx.android.sdk.tracking.a> r2 = r6.b     // Catch: java.lang.Throwable -> L8c
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L8c
            r5 = r8
        L6c:
            boolean r8 = r2.hasNext()     // Catch: java.lang.Throwable -> L35
            if (r8 == 0) goto L86
            java.lang.Object r8 = r2.next()     // Catch: java.lang.Throwable -> L35
            com.hyprmx.android.sdk.tracking.a r8 = (com.hyprmx.android.sdk.tracking.a) r8     // Catch: java.lang.Throwable -> L35
            r0.a = r5     // Catch: java.lang.Throwable -> L35
            r0.b = r2     // Catch: java.lang.Throwable -> L35
            r0.f4693e = r3     // Catch: java.lang.Throwable -> L35
            java.lang.Object r8 = r8.m(r0)     // Catch: java.lang.Throwable -> L35
            if (r8 != r1) goto L6c
            return r1
        L85:
            r5 = r8
        L86:
            kotlin.v r8 = kotlin.v.a     // Catch: java.lang.Throwable -> L35
            r5.d(r4)
            return r8
        L8c:
            r0 = move-exception
            r5 = r8
            r8 = r0
        L8f:
            r5.d(r4)
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.tracking.b.m(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object n(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.o(this, continuation);
    }
}
