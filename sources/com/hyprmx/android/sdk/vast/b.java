package com.hyprmx.android.sdk.vast;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements com.hyprmx.android.sdk.tracking.a {
    public final com.hyprmx.android.sdk.network.k a;
    public final HashMap b;
    public final ArrayList c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final HashMap f4744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f4745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f4746f;

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {0}, l = {80}, m = "makeTrackingRequest", n = {"this"}, s = {"L$0"})
    public static final class a extends ContinuationImpl {
        public b a;
        public Iterator b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4748e;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4748e |= Integer.MIN_VALUE;
            return b.this.a((List<String>) null, this);
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.vast.b$b, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {0}, l = {88}, m = "makeTrackingRequest", n = {"url"}, s = {"L$0"})
    public static final class C0301b extends ContinuationImpl {
        public String a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4749d;

        public C0301b(Continuation<? super C0301b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4749d |= Integer.MIN_VALUE;
            return b.this.a((String) null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {0}, l = {62, 63}, m = "onClose", n = {"this"}, s = {"L$0"})
    public static final class c extends ContinuationImpl {
        public b a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4750d;

        public c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4750d |= Integer.MIN_VALUE;
            return b.this.m(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {46}, m = "onComplete", n = {}, s = {})
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
            return b.this.b(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {34}, m = "onFirstQuartile", n = {}, s = {})
    public static final class e extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.f(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {38}, m = "onMidPoint", n = {}, s = {})
    public static final class f extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.e(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {75}, m = "onNonViewable", n = {}, s = {})
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
            return b.this.d(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {26}, m = "onProgress", n = {}, s = {})
    public static final class h extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.a(0L, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {67}, m = "onSkip", n = {}, s = {})
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
            return b.this.c(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {30}, m = "onStart", n = {}, s = {})
    public static final class j extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.n(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {42}, m = "onThirdQuartile", n = {}, s = {})
    public static final class k extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public k(Continuation<? super k> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.j(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {58}, m = "onView", n = {}, s = {})
    public static final class l extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public l(Continuation<? super l> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.a(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.vast.VastTracking", f = "VastTracking.kt", i = {}, l = {71}, m = "onViewable", n = {}, s = {})
    public static final class m extends ContinuationImpl {
        public /* synthetic */ Object a;
        public int c;

        public m(Continuation<? super m> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.a = obj;
            this.c |= Integer.MIN_VALUE;
            return b.this.i(this);
        }
    }

    public b(com.hyprmx.android.sdk.model.vast.a hyprVastAd, com.hyprmx.android.sdk.network.k networkController) {
        Intrinsics.checkNotNullParameter(hyprVastAd, "hyprVastAd");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        this.a = networkController;
        this.b = hyprVastAd.f();
        this.c = hyprVastAd.d();
        this.f4744d = hyprVastAd.c();
        this.f4745e = hyprVastAd.b();
        this.f4746f = hyprVastAd.g();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(long r5, kotlin.coroutines.Continuation<? super kotlin.v> r7) {
        /*
            r4 = this;
            boolean r0 = r7 instanceof com.hyprmx.android.sdk.vast.b.h
            if (r0 == 0) goto L13
            r0 = r7
            com.hyprmx.android.sdk.vast.b$h r0 = (com.hyprmx.android.sdk.vast.b.h) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$h r0 = new com.hyprmx.android.sdk.vast.b$h
            r0.<init>(r7)
        L18:
            java.lang.Object r7 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r7)
            goto L4b
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r7)
            java.util.HashMap r7 = r4.b
            java.lang.Long r5 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r5)
            java.lang.Object r5 = r7.get(r5)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L4b
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L4b
            return r1
        L4b:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.a(long, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, kotlin.coroutines.Continuation<? super kotlin.v> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.vast.b.C0301b
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.vast.b$b r0 = (com.hyprmx.android.sdk.vast.b.C0301b) r0
            int r1 = r0.f4749d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4749d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$b r0 = new com.hyprmx.android.sdk.vast.b$b
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4749d
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L34
            if (r2 != r4) goto L2c
            java.lang.String r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L63
        L2c:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L34:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.String r9 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r9)
            boolean r9 = android.webkit.URLUtil.isValidUrl(r8)
            if (r9 != 0) goto L45
            kotlin.v r8 = kotlin.v.a
            return r8
        L45:
            java.lang.String r9 = "Sending tracking to "
            java.lang.String r9 = r9.concat(r8)
            com.hyprmx.android.sdk.utility.HyprMXLog.d(r9)
            com.hyprmx.android.sdk.network.k r9 = r7.a
            r0.a = r8
            r0.f4749d = r4
            com.hyprmx.android.sdk.network.a r2 = new com.hyprmx.android.sdk.network.a
            r5 = 0
            r6 = 15
            r2.<init>(r3, r5, r6)
            java.lang.Object r9 = r9.a(r8, r2, r0)
            if (r9 != r1) goto L63
            return r1
        L63:
            com.hyprmx.android.sdk.network.m r9 = (com.hyprmx.android.sdk.network.m) r9
            int r9 = r9.a()
            r0 = 200(0xc8, float:2.8E-43)
            if (r0 > r9) goto L72
            r0 = 300(0x12c, float:4.2E-43)
            if (r9 >= r0) goto L72
            r3 = 1
        L72:
            if (r3 != 0) goto L85
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r0 = "Error sending vast tracking for url "
            r9.<init>(r0)
            r9.append(r8)
            java.lang.String r8 = r9.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r8)
        L85:
            kotlin.v r8 = kotlin.v.a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.a(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.util.List<java.lang.String> r5, kotlin.coroutines.Continuation<? super kotlin.v> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.hyprmx.android.sdk.vast.b.a
            if (r0 == 0) goto L13
            r0 = r6
            com.hyprmx.android.sdk.vast.b$a r0 = (com.hyprmx.android.sdk.vast.b.a) r0
            int r1 = r0.f4748e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4748e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$a r0 = new com.hyprmx.android.sdk.vast.b$a
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4748e
            r3 = 1
            if (r2 == 0) goto L35
            if (r2 != r3) goto L2d
            java.util.Iterator r5 = r0.b
            com.hyprmx.android.sdk.vast.b r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3d
        L2d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L35:
            kotlin.ResultKt.throwOnFailure(r6)
            java.util.Iterator r5 = r5.iterator()
            r2 = r4
        L3d:
            boolean r6 = r5.hasNext()
            if (r6 == 0) goto L56
            java.lang.Object r6 = r5.next()
            java.lang.String r6 = (java.lang.String) r6
            r0.a = r2
            r0.b = r5
            r0.f4748e = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L3d
            return r1
        L56:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.a(java.util.List, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.l
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$l r0 = (com.hyprmx.android.sdk.vast.b.l) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$l r0 = new com.hyprmx.android.sdk.vast.b$l
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "creativeView"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.a(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.d
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$d r0 = (com.hyprmx.android.sdk.vast.b.d) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$d r0 = new com.hyprmx.android.sdk.vast.b$d
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "complete"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.b(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.i
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$i r0 = (com.hyprmx.android.sdk.vast.b.i) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$i r0 = new com.hyprmx.android.sdk.vast.b$i
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "skip"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.c(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.g
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$g r0 = (com.hyprmx.android.sdk.vast.b.g) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$g r0 = new com.hyprmx.android.sdk.vast.b$g
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
            java.util.HashMap r5 = r4.f4746f
            java.lang.String r2 = "NotViewable"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.d(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object e(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.f
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$f r0 = (com.hyprmx.android.sdk.vast.b.f) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$f r0 = new com.hyprmx.android.sdk.vast.b$f
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "midpoint"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.e(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object f(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.e
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$e r0 = (com.hyprmx.android.sdk.vast.b.e) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$e r0 = new com.hyprmx.android.sdk.vast.b$e
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "firstQuartile"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.f(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object g(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.h(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object h(Continuation<? super v> continuation) {
        Object objA = a(this.f4745e, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : v.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object i(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.m
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$m r0 = (com.hyprmx.android.sdk.vast.b.m) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$m r0 = new com.hyprmx.android.sdk.vast.b$m
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
            java.util.HashMap r5 = r4.f4746f
            java.lang.String r2 = "Viewable"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.i(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object j(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.k
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$k r0 = (com.hyprmx.android.sdk.vast.b.k) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$k r0 = new com.hyprmx.android.sdk.vast.b$k
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "thirdQuartile"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.j(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public /* synthetic */ Object k(Continuation continuation) {
        return com.hyprmx.android.sdk.tracking.d.l(this, continuation);
    }

    @Override // com.hyprmx.android.sdk.tracking.a
    public final Object l(Continuation<? super v> continuation) {
        Object objA = a(this.c, continuation);
        return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : v.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object m(kotlin.coroutines.Continuation<? super kotlin.v> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.hyprmx.android.sdk.vast.b.c
            if (r0 == 0) goto L13
            r0 = r6
            com.hyprmx.android.sdk.vast.b$c r0 = (com.hyprmx.android.sdk.vast.b.c) r0
            int r1 = r0.f4750d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4750d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$c r0 = new com.hyprmx.android.sdk.vast.b$c
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4750d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3a
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            kotlin.ResultKt.throwOnFailure(r6)
            goto L6d
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            com.hyprmx.android.sdk.vast.b r2 = r0.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L55
        L3a:
            kotlin.ResultKt.throwOnFailure(r6)
            java.util.HashMap r6 = r5.f4744d
            java.lang.String r2 = "close"
            java.lang.Object r6 = r6.get(r2)
            java.util.List r6 = (java.util.List) r6
            if (r6 == 0) goto L54
            r0.a = r5
            r0.f4750d = r4
            java.lang.Object r6 = r5.a(r6, r0)
            if (r6 != r1) goto L54
            return r1
        L54:
            r2 = r5
        L55:
            java.util.HashMap r6 = r2.f4744d
            java.lang.String r4 = "closeLinear"
            java.lang.Object r6 = r6.get(r4)
            java.util.List r6 = (java.util.List) r6
            if (r6 == 0) goto L6d
            r4 = 0
            r0.a = r4
            r0.f4750d = r3
            java.lang.Object r6 = r2.a(r6, r0)
            if (r6 != r1) goto L6d
            return r1
        L6d:
            kotlin.v r6 = kotlin.v.a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.m(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.tracking.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object n(kotlin.coroutines.Continuation<? super kotlin.v> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.hyprmx.android.sdk.vast.b.j
            if (r0 == 0) goto L13
            r0 = r5
            com.hyprmx.android.sdk.vast.b$j r0 = (com.hyprmx.android.sdk.vast.b.j) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.vast.b$j r0 = new com.hyprmx.android.sdk.vast.b$j
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
            java.util.HashMap r5 = r4.f4744d
            java.lang.String r2 = "start"
            java.lang.Object r5 = r5.get(r2)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L49
            r0.c = r3
            java.lang.Object r5 = r4.a(r5, r0)
            if (r5 != r1) goto L49
            return r1
        L49:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.vast.b.n(kotlin.coroutines.d):java.lang.Object");
    }
}
