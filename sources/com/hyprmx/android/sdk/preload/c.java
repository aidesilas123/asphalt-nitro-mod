package com.hyprmx.android.sdk.preload;

import android.content.Context;
import androidx.appcompat.app.AppCompatActivity;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.gameloft.adsmanager.JavaUtils;
import com.hyprmx.android.sdk.activity.o0;
import com.hyprmx.android.sdk.api.data.c;
import com.hyprmx.android.sdk.p002assert.ThreadAssert;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.e1;
import com.hyprmx.android.sdk.utility.g0;
import com.hyprmx.android.sdk.utility.w0;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__IndentKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements n, CoroutineScope {
    public final com.hyprmx.android.sdk.analytics.b a;
    public final Context b;
    public final p c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final com.hyprmx.android.sdk.utility.a f4618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final com.hyprmx.android.sdk.utility.a f4619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ThreadAssert f4620f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Job f4621g;
    public final /* synthetic */ CoroutineScope h;
    public final e1 i;
    public com.hyprmx.android.sdk.preload.a j;
    public final Mutex k;
    public final ConcurrentHashMap l;
    public final ConcurrentHashMap m;
    public final ConcurrentHashMap n;

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$clearCache$2", f = "CacheController.kt", i = {4, 5}, l = {311, 315, 316, 318, JavaUtils.Constants.BANNER_WIDTH_DP, 323}, m = "invokeSuspend", n = {"result", "result"}, s = {"Z$0", "Z$0"})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public boolean a;
        public int b;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return c.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0073 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007f A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:26:0x008d A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00a5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:30:0x00a6  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x00c5 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:37:0x00c6  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00cf  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                Method dump skipped, instruction units count: 234
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController", f = "CacheController.kt", i = {0, 0}, l = {448, 449, 449}, m = "commitAd", n = {"this", "ad"}, s = {"L$0", "L$1"})
    public static final class b extends ContinuationImpl {
        public c a;
        public com.hyprmx.android.sdk.api.data.b b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4623e;

        public b(Continuation<? super b> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4623e |= Integer.MIN_VALUE;
            return c.this.a((String) null, (com.hyprmx.android.sdk.api.data.b) null, this);
        }
    }

    /* JADX INFO: renamed from: com.hyprmx.android.sdk.preload.c$c, reason: collision with other inner class name */
    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController", f = "CacheController.kt", i = {0}, l = {453, 457}, m = "commitAsset", n = {"this"}, s = {"L$0"})
    public static final class C0298c extends ContinuationImpl {
        public c a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4624d;

        public C0298c(Continuation<? super C0298c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.b = obj;
            this.f4624d |= Integer.MIN_VALUE;
            return c.this.a((String) null, (com.hyprmx.android.sdk.api.data.c) null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$commitAsset$2", f = "CacheController.kt", i = {}, l = {455}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ com.hyprmx.android.sdk.api.data.c f4625d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, com.hyprmx.android.sdk.api.data.c cVar, Continuation<? super d> continuation) {
            super(2, continuation);
            this.c = str;
            this.f4625d = cVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return c.this.new d(this.c, this.f4625d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ConcurrentHashMap concurrentHashMap = c.this.n;
                String url = this.c;
                Intrinsics.checkNotNullParameter(url, "url");
                concurrentHashMap.put(w0.a(url), this.f4625d);
                c cVar = c.this;
                this.a = 1;
                if (cVar.e(this) == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$commitAsset$3", f = "CacheController.kt", i = {}, l = {FacebookRequestErrorClassification.ESC_APP_NOT_INSTALLED, FacebookRequestErrorClassification.ESC_APP_NOT_INSTALLED}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public c a;
        public Iterator b;
        public c c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f4626d;

        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return c.this.new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0045  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0089 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:21:0x008a  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x008d  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x008a -> B:12:0x003f). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r11) {
            /*
                r10 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r10.f4626d
                r2 = 2
                r3 = 1
                if (r1 == 0) goto L2b
                if (r1 == r3) goto L1e
                if (r1 != r2) goto L16
                java.util.Iterator r1 = r10.b
                com.hyprmx.android.sdk.preload.c r4 = r10.a
                kotlin.ResultKt.throwOnFailure(r11)
                goto L3e
            L16:
                java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r11.<init>(r0)
                throw r11
            L1e:
                com.hyprmx.android.sdk.preload.c r1 = r10.c
                java.util.Iterator r4 = r10.b
                com.hyprmx.android.sdk.preload.c r5 = r10.a
                kotlin.ResultKt.throwOnFailure(r11)
                r6 = r5
                r5 = r11
                r11 = r10
                goto L63
            L2b:
                kotlin.ResultKt.throwOnFailure(r11)
                com.hyprmx.android.sdk.preload.c r11 = com.hyprmx.android.sdk.preload.c.this
                java.util.Map r11 = r11.c()
                com.hyprmx.android.sdk.preload.c r4 = com.hyprmx.android.sdk.preload.c.this
                java.util.Set r11 = r11.entrySet()
                java.util.Iterator r1 = r11.iterator()
            L3e:
                r11 = r10
            L3f:
                boolean r5 = r1.hasNext()
                if (r5 == 0) goto L8d
                java.lang.Object r5 = r1.next()
                java.util.Map$Entry r5 = (java.util.Map.Entry) r5
                java.lang.Object r5 = r5.getValue()
                com.hyprmx.android.sdk.api.data.b r5 = (com.hyprmx.android.sdk.api.data.b) r5
                r11.a = r4
                r11.b = r1
                r11.c = r4
                r11.f4626d = r3
                org.json.JSONObject r5 = r5.c()
                if (r5 != r0) goto L60
                return r0
            L60:
                r6 = r4
                r4 = r1
                r1 = r6
            L63:
                org.json.JSONObject r5 = (org.json.JSONObject) r5
                java.lang.String r5 = r5.toString()
                java.lang.String r7 = "value.getParameters().toString()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r7)
                r11.a = r6
                r11.b = r4
                r7 = 0
                r11.c = r7
                r11.f4626d = r2
                r1.getClass()
                kotlinx.coroutines.t0 r8 = kotlinx.coroutines.Dispatchers.getMain()
                com.hyprmx.android.sdk.preload.f r9 = new com.hyprmx.android.sdk.preload.f
                r9.<init>(r1, r5, r7)
                java.lang.Object r1 = kotlinx.coroutines.BuildersKt.withContext(r8, r9, r11)
                if (r1 != r0) goto L8a
                return r0
            L8a:
                r1 = r4
                r4 = r6
                goto L3f
            L8d:
                kotlin.v r11 = kotlin.v.a
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.e.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController", f = "CacheController.kt", i = {0, 0}, l = {94}, m = "getAdCacheState", n = {"this", "destination$iv$iv"}, s = {"L$0", "L$1"})
    public static final class f extends ContinuationImpl {
        public c a;
        public Map b;
        public Iterator c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Map f4628d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Object f4629e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public /* synthetic */ Object f4630f;
        public int h;

        public f(Continuation<? super f> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4630f = obj;
            this.h |= Integer.MIN_VALUE;
            return c.this.c(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController", f = "CacheController.kt", i = {0, 1, 2, 2}, l = {77, 78, 79, 83}, m = MobileAdsBridgeBase.initializeMethodName, n = {"this", "this", "this", "adCacheMap"}, s = {"L$0", "L$0", "L$0", "L$1"})
    public static final class g extends ContinuationImpl {
        public c a;
        public Map b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4633e;

        public g(Continuation<? super g> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4633e |= Integer.MIN_VALUE;
            return c.this.a(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$removeAd$2", f = "CacheController.kt", i = {}, l = {467, 468, 469}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public c a;
        public int b;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ c f4634d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(c cVar, String str, Continuation continuation) {
            super(2, continuation);
            this.c = str;
            this.f4634d = cVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new h(this.f4634d, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:21:0x0091  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0095 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r7.b
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                if (r1 == 0) goto L2b
                if (r1 == r4) goto L25
                if (r1 == r3) goto L1f
                if (r1 != r2) goto L17
                kotlin.ResultKt.throwOnFailure(r8)
                goto L96
            L17:
                java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r8.<init>(r0)
                throw r8
            L1f:
                com.hyprmx.android.sdk.preload.c r1 = r7.a
                kotlin.ResultKt.throwOnFailure(r8)
                goto L77
            L25:
                com.hyprmx.android.sdk.preload.c r1 = r7.a
                kotlin.ResultKt.throwOnFailure(r8)
                goto L6c
            L2b:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.StringBuilder r8 = new java.lang.StringBuilder
                java.lang.String r1 = "remove ad with id "
                r8.<init>(r1)
                java.lang.String r1 = r7.c
                r8.append(r1)
                java.lang.String r8 = r8.toString()
                com.hyprmx.android.sdk.utility.HyprMXLog.d(r8)
                com.hyprmx.android.sdk.preload.c r8 = r7.f4634d
                java.util.concurrent.ConcurrentHashMap r8 = r8.m
                java.lang.String r1 = r7.c
                java.lang.Object r8 = r8.get(r1)
                com.hyprmx.android.sdk.preload.c r1 = r7.f4634d
                java.lang.String r6 = r7.c
                com.hyprmx.android.sdk.api.data.b r8 = (com.hyprmx.android.sdk.api.data.b) r8
                java.util.concurrent.ConcurrentHashMap r8 = r1.m
                r8.remove(r6)
                r7.a = r1
                r7.b = r4
                kotlinx.coroutines.s r8 = r1.h
                kotlin.coroutines.CoroutineContext r8 = r8.getCoroutineContext()
                com.hyprmx.android.sdk.preload.h r4 = new com.hyprmx.android.sdk.preload.h
                r4.<init>(r1, r6, r5)
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r4, r7)
                if (r8 != r0) goto L6c
                return r0
            L6c:
                r7.a = r1
                r7.b = r3
                java.lang.Object r8 = r1.e(r7)
                if (r8 != r0) goto L77
                return r0
            L77:
                r7.a = r5
                r7.b = r2
                kotlinx.coroutines.s r8 = r1.h
                kotlin.coroutines.CoroutineContext r8 = r8.getCoroutineContext()
                com.hyprmx.android.sdk.preload.m r2 = new com.hyprmx.android.sdk.preload.m
                r2.<init>(r1, r5)
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r2, r7)
                java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                if (r8 != r1) goto L91
                goto L93
            L91:
                kotlin.v r8 = kotlin.v.a
            L93:
                if (r8 != r0) goto L96
                return r0
            L96:
                kotlin.v r8 = kotlin.v.a
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.h.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$removeAssetFromDisk$2", f = "CacheController.kt", i = {}, l = {418}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, Continuation<? super i> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return c.this.new i(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                c cVar = c.this;
                String strA = w0.a(this.c);
                this.a = 1;
                Object objWithContext = BuildersKt.withContext(cVar.h.getCoroutineContext(), new com.hyprmx.android.sdk.preload.j(cVar, strA, null), this);
                if (objWithContext != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objWithContext = kotlin.v.a;
                }
                if (objWithContext == coroutine_suspended) {
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

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController", f = "CacheController.kt", i = {}, l = {299}, m = "setAssetIncomplete", n = {}, s = {})
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
            return c.this.f(null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$startVideoCacheJob$2", f = "CacheController.kt", i = {0, 1}, l = {546, 219}, m = "invokeSuspend", n = {"$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$0"})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public Mutex a;
        public c b;
        public String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f4635d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4636e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f4638g;
        public final /* synthetic */ String h;

        @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$startVideoCacheJob$2$1$1", f = "CacheController.kt", i = {}, l = {226}, m = "invokeSuspend", n = {}, s = {})
        public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
            public int a;
            public final /* synthetic */ c b;
            public final /* synthetic */ String c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public final /* synthetic */ String f4639d;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(c cVar, String str, String str2, Continuation<? super a> continuation) {
                super(2, continuation);
                this.b = cVar;
                this.c = str;
                this.f4639d = str2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
                return new a(this.b, this.c, this.f4639d, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
                return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException {
                Object objPutIfAbsent;
                Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.a;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    ConcurrentHashMap concurrentHashMap = this.b.n;
                    String url = this.c;
                    Intrinsics.checkNotNullParameter(url, "url");
                    String strA = w0.a(url);
                    String str = this.c;
                    Object cVar = concurrentHashMap.get(strA);
                    if (cVar == null && (objPutIfAbsent = concurrentHashMap.putIfAbsent(strA, (cVar = new com.hyprmx.android.sdk.api.data.c(str)))) != null) {
                        cVar = objPutIfAbsent;
                    }
                    com.hyprmx.android.sdk.api.data.c cVar2 = (com.hyprmx.android.sdk.api.data.c) cVar;
                    cVar2.f4477f.add(this.f4639d);
                    c cVar3 = this.b;
                    this.a = 1;
                    Object objWithContext = BuildersKt.withContext(cVar3.h.getCoroutineContext(), new com.hyprmx.android.sdk.preload.l(cVar2, cVar3, null), this);
                    if (objWithContext != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                        objWithContext = kotlin.v.a;
                    }
                    if (objWithContext == coroutine_suspended) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, String str2, Continuation<? super k> continuation) {
            super(2, continuation);
            this.f4638g = str;
            this.h = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return c.this.new k(this.f4638g, this.h, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            c cVar;
            Mutex mutex;
            String str;
            String str2;
            Mutex mutex2;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.f4636e;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    cVar = c.this;
                    mutex = cVar.k;
                    String str3 = this.f4638g;
                    str = this.h;
                    this.a = mutex;
                    this.b = cVar;
                    this.c = str3;
                    this.f4635d = str;
                    this.f4636e = 1;
                    if (mutex.c(null, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    str2 = str3;
                } else {
                    if (i != 1) {
                        if (i != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        mutex2 = this.a;
                        try {
                            ResultKt.throwOnFailure(obj);
                            kotlin.v vVar = kotlin.v.a;
                            mutex2.d(null);
                            return vVar;
                        } catch (Throwable th) {
                            th = th;
                            mutex = mutex2;
                            mutex.d(null);
                            throw th;
                        }
                    }
                    str = this.f4635d;
                    str2 = this.c;
                    cVar = this.b;
                    mutex = this.a;
                    ResultKt.throwOnFailure(obj);
                }
                CoroutineDispatcher io2 = Dispatchers.getIO();
                a aVar = new a(cVar, str2, str, null);
                this.a = mutex;
                this.b = null;
                this.c = null;
                this.f4635d = null;
                this.f4636e = 2;
                if (BuildersKt.withContext(io2, aVar, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                mutex2 = mutex;
                kotlin.v vVar2 = kotlin.v.a;
                mutex2.d(null);
                return vVar2;
            } catch (Throwable th2) {
                th = th2;
                mutex.d(null);
                throw th;
            }
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$writeAssetsToDisk$2", f = "CacheController.kt", i = {}, l = {377}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public int a;

        public l(Continuation<? super l> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return c.this.new l(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws JSONException {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                ConcurrentHashMap concurrentHashMap = c.this.n;
                JSONObject jSONObject = new JSONObject();
                for (Map.Entry entry : concurrentHashMap.entrySet()) {
                    String str = (String) entry.getKey();
                    com.hyprmx.android.sdk.api.data.c value = (com.hyprmx.android.sdk.api.data.c) entry.getValue();
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                    jSONObject.put(str, c.a.a(value));
                }
                String assetCacheString = jSONObject.toString(2);
                HyprMXLog.d(StringsKt__IndentKt.trimMargin$default("writing the following to asset cache " + assetCacheString, null, 1, null));
                c cVar = c.this;
                com.hyprmx.android.sdk.utility.a aVar = cVar.f4619e;
                Context context = cVar.b;
                Intrinsics.checkNotNullExpressionValue(assetCacheString, "assetCacheString");
                this.a = 1;
                obj = aVar.a(context, assetCacheString, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                HyprMXLog.d("Cache Journal saved to file");
            } else {
                HyprMXLog.e("There was an error saving the Asset cache journal");
                c.this.a.a(com.hyprmx.android.sdk.utility.s.HYPRErrorTypeCacheJournal, "There was an error saving the Asset cache journal", 4);
            }
            return kotlin.v.a;
        }
    }

    public c(com.hyprmx.android.sdk.analytics.b clientErrorController, Context appContext, com.hyprmx.android.sdk.network.k networkController, p diskLruCacheHelper, com.hyprmx.android.sdk.utility.a adCacheSerializer, com.hyprmx.android.sdk.utility.a assetCacheSerializer, CoroutineScope scope, ThreadAssert threadAssert, Job supervisorJob) {
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(diskLruCacheHelper, "diskLruCacheHelper");
        Intrinsics.checkNotNullParameter(adCacheSerializer, "adCacheSerializer");
        Intrinsics.checkNotNullParameter(assetCacheSerializer, "assetCacheSerializer");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(threadAssert, "assert");
        Intrinsics.checkNotNullParameter(supervisorJob, "supervisorJob");
        this.a = clientErrorController;
        this.b = appContext;
        this.c = diskLruCacheHelper;
        this.f4618d = adCacheSerializer;
        this.f4619e = assetCacheSerializer;
        this.f4620f = threadAssert;
        this.f4621g = supervisorJob;
        this.h = CoroutineScopeKt.plus(scope, CoroutineContextKt.newCoroutineContext(scope, supervisorJob.plus(Dispatchers.getIO())));
        this.i = new e1(appContext, clientErrorController, networkController, diskLruCacheHelper, scope);
        this.k = MutexKt.Mutex$default(false, 1, null);
        this.l = new ConcurrentHashMap();
        this.m = new ConcurrentHashMap();
        this.n = new ConcurrentHashMap();
    }

    public /* synthetic */ c(com.hyprmx.android.sdk.analytics.b bVar, Context context, com.hyprmx.android.sdk.network.k kVar, CoroutineScope coroutineScope, ThreadAssert threadAssert) {
        this(bVar, context, kVar, new q(context), new g0("hyprmx_cache_journal_internal_vast", bVar), new g0("hyprmx_cache_journal_internal_asset", bVar), coroutineScope, threadAssert, SupervisorKt.SupervisorJob$default((Job) null, 1, (Object) null));
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Object a(AppCompatActivity appCompatActivity, String str, o0 o0Var) {
        return BuildersKt.withContext(this.h.getCoroutineContext(), new com.hyprmx.android.sdk.preload.k(str, this, appCompatActivity, null), o0Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00a4 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00a5 A[PHI: r10
      0x00a5: PHI (r10v12 java.lang.Object) = (r10v11 java.lang.Object), (r10v1 java.lang.Object) binds: [B:29:0x00a2, B:13:0x002c] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.preload.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, com.hyprmx.android.sdk.api.data.b r9, kotlin.coroutines.Continuation<? super kotlin.v> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.hyprmx.android.sdk.preload.c.b
            if (r0 == 0) goto L13
            r0 = r10
            com.hyprmx.android.sdk.preload.c$b r0 = (com.hyprmx.android.sdk.preload.c.b) r0
            int r1 = r0.f4623e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4623e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.c$b r0 = new com.hyprmx.android.sdk.preload.c$b
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4623e
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L47
            if (r2 == r5) goto L3f
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            kotlin.ResultKt.throwOnFailure(r10)
            goto La5
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            com.hyprmx.android.sdk.preload.c r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L83
        L3f:
            com.hyprmx.android.sdk.api.data.b r9 = r0.b
            com.hyprmx.android.sdk.preload.c r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L76
        L47:
            kotlin.ResultKt.throwOnFailure(r10)
            com.hyprmx.android.sdk.assert.ThreadAssert r10 = r7.f4620f
            r10.runningOnMainThread()
            java.util.concurrent.ConcurrentHashMap r10 = r7.m
            r10.put(r8, r9)
            r0.a = r7
            r0.b = r9
            r0.f4623e = r5
            kotlinx.coroutines.s r8 = r7.h
            kotlin.coroutines.CoroutineContext r8 = r8.getCoroutineContext()
            com.hyprmx.android.sdk.preload.m r10 = new com.hyprmx.android.sdk.preload.m
            r10.<init>(r7, r6)
            java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r8, r10, r0)
            java.lang.Object r10 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r8 != r10) goto L70
            goto L72
        L70:
            kotlin.v r8 = kotlin.v.a
        L72:
            if (r8 != r1) goto L75
            return r1
        L75:
            r8 = r7
        L76:
            r0.a = r8
            r0.b = r6
            r0.f4623e = r4
            org.json.JSONObject r10 = r9.c()
            if (r10 != r1) goto L83
            return r1
        L83:
            org.json.JSONObject r10 = (org.json.JSONObject) r10
            java.lang.String r9 = r10.toString()
            java.lang.String r10 = "ad.getParameters().toString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r10)
            r0.a = r6
            r0.f4623e = r3
            r8.getClass()
            kotlinx.coroutines.t0 r10 = kotlinx.coroutines.Dispatchers.getMain()
            com.hyprmx.android.sdk.preload.f r2 = new com.hyprmx.android.sdk.preload.f
            r2.<init>(r8, r9, r6)
            java.lang.Object r10 = kotlinx.coroutines.BuildersKt.withContext(r10, r2, r0)
            if (r10 != r1) goto La5
            return r1
        La5:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.a(java.lang.String, com.hyprmx.android.sdk.api.data.b, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.preload.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r7, com.hyprmx.android.sdk.api.data.c r8, kotlin.coroutines.Continuation<? super kotlin.v> r9) {
        /*
            r6 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.preload.c.C0298c
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.preload.c$c r0 = (com.hyprmx.android.sdk.preload.c.C0298c) r0
            int r1 = r0.f4624d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4624d = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.c$c r0 = new com.hyprmx.android.sdk.preload.c$c
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.b
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4624d
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3b
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r9)
            goto L67
        L2d:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L35:
            com.hyprmx.android.sdk.preload.c r7 = r0.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L53
        L3b:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.r r9 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.preload.c$d r2 = new com.hyprmx.android.sdk.preload.c$d
            r2.<init>(r7, r8, r5)
            r0.a = r6
            r0.f4624d = r4
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r9, r2, r0)
            if (r7 != r1) goto L52
            return r1
        L52:
            r7 = r6
        L53:
            kotlinx.coroutines.t0 r8 = kotlinx.coroutines.Dispatchers.getMain()
            com.hyprmx.android.sdk.preload.c$e r9 = new com.hyprmx.android.sdk.preload.c$e
            r9.<init>(r5)
            r0.a = r5
            r0.f4624d = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r8, r9, r0)
            if (r7 != r1) goto L67
            return r1
        L67:
            kotlin.v r7 = kotlin.v.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.a(java.lang.String, com.hyprmx.android.sdk.api.data.c, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Object a(String str, String str2, Continuation<? super kotlin.v> continuation) {
        Object objCoroutineScope = CoroutineScopeKt.coroutineScope(new k(str, str2, null), continuation);
        return objCoroutineScope == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCoroutineScope : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Object a(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(this.h.getCoroutineContext(), new i(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.preload.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlin.coroutines.Continuation<? super kotlin.v> r10) {
        /*
            Method dump skipped, instruction units count: 228
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.a(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final void a(z zVar) {
        this.j = zVar;
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Object b(Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new a(null), continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0093, code lost:
    
        r10 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x009c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0088 -> B:23:0x0089). Please report as a decompilation issue!!! */
    @Override // com.hyprmx.android.sdk.preload.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(kotlin.coroutines.Continuation<? super java.util.Map<java.lang.String, java.lang.Boolean>> r10) {
        /*
            r9 = this;
            boolean r0 = r10 instanceof com.hyprmx.android.sdk.preload.c.f
            if (r0 == 0) goto L13
            r0 = r10
            com.hyprmx.android.sdk.preload.c$f r0 = (com.hyprmx.android.sdk.preload.c.f) r0
            int r1 = r0.h
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.h = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.c$f r0 = new com.hyprmx.android.sdk.preload.c$f
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f4630f
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.h
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 != r4) goto L34
            java.lang.Object r2 = r0.f4629e
            java.util.Map r5 = r0.f4628d
            java.util.Iterator r6 = r0.c
            java.util.Map r7 = r0.b
            com.hyprmx.android.sdk.preload.c r8 = r0.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L89
        L34:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L3c:
            kotlin.ResultKt.throwOnFailure(r10)
            java.util.Map r10 = r9.c()
            java.util.LinkedHashMap r2 = new java.util.LinkedHashMap
            int r5 = r10.size()
            int r5 = kotlin.collections.d0.mapCapacity(r5)
            r2.<init>(r5)
            java.util.Set r10 = r10.entrySet()
            java.util.Iterator r10 = r10.iterator()
            r8 = r9
            r6 = r10
            r5 = r2
        L5b:
            boolean r10 = r6.hasNext()
            if (r10 == 0) goto L9c
            java.lang.Object r10 = r6.next()
            java.util.Map$Entry r10 = (java.util.Map.Entry) r10
            java.lang.Object r2 = r10.getKey()
            java.lang.Object r10 = r10.getValue()
            com.hyprmx.android.sdk.api.data.b r10 = (com.hyprmx.android.sdk.api.data.b) r10
            java.lang.String r10 = r10.f4473f
            if (r10 == 0) goto L91
            r0.a = r8
            r0.b = r5
            r0.c = r6
            r0.f4628d = r5
            r0.f4629e = r2
            r0.h = r4
            java.lang.Object r10 = r8.h(r10)
            if (r10 != r1) goto L88
            return r1
        L88:
            r7 = r5
        L89:
            com.hyprmx.android.sdk.api.data.c r10 = (com.hyprmx.android.sdk.api.data.c) r10
            boolean r10 = r10.f4476e
            if (r10 == 0) goto L92
            r10 = 1
            goto L93
        L91:
            r7 = r5
        L92:
            r10 = 0
        L93:
            java.lang.Boolean r10 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r10)
            r5.put(r2, r10)
            r5 = r7
            goto L5b
        L9c:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.c(kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Map<String, com.hyprmx.android.sdk.api.data.b> c() {
        this.f4620f.runningOnMainThread();
        Map<String, com.hyprmx.android.sdk.api.data.b> mapUnmodifiableMap = Collections.unmodifiableMap(this.m);
        Intrinsics.checkNotNullExpressionValue(mapUnmodifiableMap, "unmodifiableMap(internalAdCacheMap)");
        return mapUnmodifiableMap;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.c.close();
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final com.hyprmx.android.sdk.api.data.b d(String adId) {
        Intrinsics.checkNotNullParameter(adId, "adId");
        Object bVar = this.m.get(adId);
        if (bVar == null) {
            bVar = new com.hyprmx.android.sdk.api.data.b(adId, this);
        }
        return (com.hyprmx.android.sdk.api.data.b) bVar;
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Object d(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new h(this, str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    public final Object e(Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(this.h.getCoroutineContext(), new l(null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final com.hyprmx.android.sdk.api.data.c f(String adId) {
        Object next;
        Intrinsics.checkNotNullParameter(adId, "adId");
        Iterator it = this.n.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((com.hyprmx.android.sdk.api.data.c) next).f4477f.contains(adId)) {
                break;
            }
        }
        return (com.hyprmx.android.sdk.api.data.c) next;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.preload.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object f(java.lang.String r5, kotlin.coroutines.Continuation<? super kotlin.v> r6) throws java.security.NoSuchAlgorithmException {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.hyprmx.android.sdk.preload.c.j
            if (r0 == 0) goto L13
            r0 = r6
            com.hyprmx.android.sdk.preload.c$j r0 = (com.hyprmx.android.sdk.preload.c.j) r0
            int r1 = r0.c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.c = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.c$j r0 = new com.hyprmx.android.sdk.preload.c$j
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4e
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.ResultKt.throwOnFailure(r6)
            java.lang.String r5 = com.hyprmx.android.sdk.utility.w0.a(r5)
            java.util.concurrent.ConcurrentHashMap r6 = r4.n
            java.lang.Object r5 = r6.get(r5)
            com.hyprmx.android.sdk.api.data.c r5 = (com.hyprmx.android.sdk.api.data.c) r5
            if (r5 == 0) goto L4e
            r6 = 0
            r5.f4476e = r6
            r0.c = r3
            java.lang.Object r5 = r4.e(r0)
            if (r5 != r1) goto L4e
            return r1
        L4e:
            kotlin.v r5 = kotlin.v.a
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.c.f(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final kotlin.v g(String str) {
        if (str == null) {
            HyprMXLog.d("cancelDownloads()");
            HyprMXLog.d("Jobs being cancelled:");
            Iterator<Job> it = this.f4621g.g().iterator();
            while (it.hasNext()) {
                HyprMXLog.d(String.valueOf(it.next()));
            }
            JobKt__JobKt.cancelChildren$default(this.f4621g, (CancellationException) null, 1, (Object) null);
        } else {
            Job job = (Job) this.l.get(str);
            if (job != null) {
                Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
            }
        }
        return kotlin.v.a;
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.h.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.preload.n
    public final Object h(String url) {
        ConcurrentHashMap concurrentHashMap = this.n;
        Intrinsics.checkNotNullParameter(url, "url");
        Object obj = concurrentHashMap.get(w0.a(url));
        return obj == null ? new com.hyprmx.android.sdk.api.data.c(url) : obj;
    }
}
