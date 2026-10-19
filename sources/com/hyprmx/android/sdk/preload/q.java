package com.hyprmx.android.sdk.preload;

import android.content.Context;
import com.applovin.sdk.AppLovinEventTypes;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.l;
import com.hyprmx.android.sdk.utility.u0;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements p {
    public final Context a;
    public final Mutex b;
    public com.hyprmx.android.sdk.utility.l c;

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl", f = "DiskLruCacheHelperImpl.kt", i = {0, 0, 1}, l = {280, 225}, m = "clearAllCache", n = {"this", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$0"})
    public static final class a extends ContinuationImpl {
        public Object a;
        public Mutex b;
        public /* synthetic */ Object c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4645e;

        public a(Continuation<? super a> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.c = obj;
            this.f4645e |= Integer.MIN_VALUE;
            return q.this.d(this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$clearAllCache$2$1", f = "DiskLruCacheHelperImpl.kt", i = {}, l = {226, 227, 236, 243}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public int a;

        public b(Continuation<? super b> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return q.this.new b(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            try {
            } catch (IOException e2) {
                HyprMXLog.e("Exception clearing DiskLruCache", e2);
                q qVar = q.this;
                this.a = 4;
                if (qVar.a(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar2 = q.this;
                this.a = 1;
                qVar2.getClass();
                obj = BuildersKt.withContext(Dispatchers.getIO(), new t(qVar2, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        return Boxing.boxBoolean(false);
                    }
                    if (i == 3) {
                        ResultKt.throwOnFailure(obj);
                        return Boxing.boxBoolean(true);
                    }
                    if (i != 4) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Boxing.boxBoolean(false);
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                q qVar3 = q.this;
                this.a = 2;
                if (qVar3.a(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Boxing.boxBoolean(false);
            }
            com.hyprmx.android.sdk.utility.l lVar = q.this.c;
            if (lVar != null) {
                synchronized (lVar) {
                    if (lVar.l == null) {
                        throw new IllegalStateException("cache is closed");
                    }
                    if (lVar.i) {
                        while (lVar.k > lVar.j) {
                            lVar.l(lVar.h.entrySet().iterator().next().getKey());
                        }
                    }
                    lVar.l.flush();
                }
            }
            com.hyprmx.android.sdk.utility.l lVar2 = q.this.c;
            if (lVar2 != null) {
                lVar2.close();
                u0.a(lVar2.b);
            }
            com.hyprmx.android.sdk.utility.l lVar3 = q.this.c;
            if (lVar3 != null) {
                lVar3.close();
            }
            HyprMXLog.d("DiskLRUCache cleared");
            q qVar4 = q.this;
            this.a = 3;
            if (qVar4.a(this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Boxing.boxBoolean(true);
            return Boxing.boxBoolean(false);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl", f = "DiskLruCacheHelperImpl.kt", i = {0, 0, 0, 1}, l = {280, 64}, m = "containsKeyDiskCache", n = {"this", "key", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0"})
    public static final class c extends ContinuationImpl {
        public Object a;
        public String b;
        public Mutex c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4646d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4648f;

        public c(Continuation<? super c> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4646d = obj;
            this.f4648f |= Integer.MIN_VALUE;
            return q.this.c(null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$containsKeyDiskCache$2$1", f = "DiskLruCacheHelperImpl.kt", i = {}, l = {65}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, Continuation<? super d> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return q.this.new d(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar = q.this;
                this.a = 1;
                qVar.getClass();
                obj = BuildersKt.withContext(Dispatchers.getIO(), new t(qVar, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            boolean z = false;
            if (!((Boolean) obj).booleanValue()) {
                return Boxing.boxBoolean(false);
            }
            try {
                com.hyprmx.android.sdk.utility.l lVar = q.this.c;
                l.e eVarJ = lVar != null ? lVar.j(this.c) : null;
                boolean z2 = eVarJ != null;
                if (eVarJ != null) {
                    eVarJ.close();
                }
                z = z2;
            } catch (Exception e2) {
                HyprMXLog.e("Failed to get from DiskLruCache: " + e2.getMessage());
            }
            return Boxing.boxBoolean(z);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl", f = "DiskLruCacheHelperImpl.kt", i = {0, 0, 0, 1}, l = {280, 133}, m = "getLength", n = {"this", "key", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0"})
    public static final class e extends ContinuationImpl {
        public Object a;
        public String b;
        public Mutex c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4649d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4651f;

        public e(Continuation<? super e> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4649d = obj;
            this.f4651f |= Integer.MIN_VALUE;
            return q.this.e(null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$getLength$2$1", f = "DiskLruCacheHelperImpl.kt", i = {}, l = {134}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Long>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, Continuation<? super f> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return q.this.new f(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Long> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws IOException {
            com.hyprmx.android.sdk.utility.l lVar;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar = q.this;
                this.a = 1;
                qVar.getClass();
                obj = BuildersKt.withContext(Dispatchers.getIO(), new t(qVar, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            long j = 0;
            if (!((Boolean) obj).booleanValue()) {
                return Boxing.boxLong(0L);
            }
            try {
                lVar = q.this.c;
            } catch (Exception e2) {
                HyprMXLog.e("Failed to get key, " + this.c + ", from DiskLruCache", e2);
            }
            l.e eVarJ = lVar != null ? lVar.j(this.c) : null;
            if (eVarJ != null) {
                try {
                    j = eVarJ.b[0];
                    CloseableKt.closeFinally(eVarJ, null);
                } finally {
                }
            }
            return Boxing.boxLong(j);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$initialize$2", f = "DiskLruCacheHelperImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public g(Continuation<? super g> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return q.this.new g(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            com.hyprmx.android.sdk.utility.l lVarA;
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            File file = new File(q.this.a.getFilesDir().getPath() + File.separator + "hyprmx_cache");
            q qVar = q.this;
            try {
                lVarA = com.hyprmx.android.sdk.utility.l.a(file);
            } catch (IOException e2) {
                HyprMXLog.e("Unable to create DiskLruCache", e2);
                lVarA = null;
            }
            qVar.c = lVarA;
            if (q.this.c == null) {
                return null;
            }
            HyprMXLog.d("DiskLRUCache created successfully");
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl", f = "DiskLruCacheHelperImpl.kt", i = {0, 0, 0, 0, 1}, l = {280, 159}, m = "putToDiskCache", n = {"this", "key", AppLovinEventTypes.USER_VIEWED_CONTENT, "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0"})
    public static final class h extends ContinuationImpl {
        public Object a;
        public String b;
        public InputStream c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Mutex f4652d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public /* synthetic */ Object f4653e;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f4655g;

        public h(Continuation<? super h> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4653e = obj;
            this.f4655g |= Integer.MIN_VALUE;
            return q.this.a((String) null, (InputStream) null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$putToDiskCache$2$1", f = "DiskLruCacheHelperImpl.kt", i = {0}, l = {160}, m = "invokeSuspend", n = {"$this$withContext"}, s = {"L$0"})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public int a;
        public /* synthetic */ Object b;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ InputStream f4656d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ String f4657e;

        public static final class a extends Lambda implements Function0<Boolean> {
            public final /* synthetic */ CoroutineScope a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(CoroutineScope coroutineScope) {
                super(0);
                this.a = coroutineScope;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(!CoroutineScopeKt.isActive(this.a));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(InputStream inputStream, String str, Continuation<? super i> continuation) {
            super(2, continuation);
            this.f4656d = inputStream;
            this.f4657e = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            i iVar = q.this.new i(this.f4656d, this.f4657e, continuation);
            iVar.b = obj;
            return iVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:101:0x01ac A[Catch: all -> 0x019e, Exception -> 0x01a0, TRY_LEAVE, TryCatch #0 {Exception -> 0x01a0, blocks: (B:87:0x0185, B:89:0x0189, B:90:0x0198, B:96:0x01a4, B:101:0x01ac), top: B:117:0x0185, outer: #10 }] */
        /* JADX WARN: Removed duplicated region for block: B:110:0x01e9 A[Catch: all -> 0x019e, TRY_ENTER, TRY_LEAVE, TryCatch #10 {all -> 0x019e, blocks: (B:35:0x00b1, B:37:0x00b5, B:39:0x00c9, B:44:0x00d1, B:38:0x00c4, B:62:0x011c, B:64:0x0120, B:65:0x012f, B:69:0x0139, B:74:0x0141, B:77:0x015b, B:79:0x0173, B:80:0x0176, B:87:0x0185, B:89:0x0189, B:90:0x0198, B:96:0x01a4, B:101:0x01ac, B:110:0x01e9, B:104:0x01c6, B:106:0x01de, B:107:0x01e1), top: B:131:0x005b, inners: #0, #8 }] */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0185 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01a9  */
        /* JADX WARN: Type inference failed for: r6v1, types: [com.hyprmx.android.sdk.preload.q] */
        /* JADX WARN: Type inference failed for: r6v2 */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 496
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.i.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl", f = "DiskLruCacheHelperImpl.kt", i = {0, 0, 0, 1}, l = {280, 91}, m = "removeFromDiskCache", n = {"this", "key", "$this$withLock_u24default$iv", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$0"})
    public static final class j extends ContinuationImpl {
        public Object a;
        public String b;
        public Mutex c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public /* synthetic */ Object f4658d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f4660f;

        public j(Continuation<? super j> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f4658d = obj;
            this.f4660f |= Integer.MIN_VALUE;
            return q.this.b(null, this);
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$removeFromDiskCache$2$1", f = "DiskLruCacheHelperImpl.kt", i = {}, l = {92}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(String str, Continuation<? super k> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return q.this.new k(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                q qVar = q.this;
                this.a = 1;
                qVar.getClass();
                obj = BuildersKt.withContext(Dispatchers.getIO(), new t(qVar, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            boolean zL = false;
            if (!((Boolean) obj).booleanValue()) {
                return Boxing.boxBoolean(false);
            }
            try {
                com.hyprmx.android.sdk.utility.l lVar = q.this.c;
                if (lVar != null) {
                    zL = lVar.l(this.c);
                }
            } catch (IOException e2) {
                HyprMXLog.e("Exception removing " + this.c + " from disk cache", e2);
            }
            return Boxing.boxBoolean(zL);
        }
    }

    public q(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
        this.b = MutexKt.Mutex$default(false, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r8v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r9v5 */
    @Override // com.hyprmx.android.sdk.preload.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(android.content.Context r8, java.lang.String r9, kotlin.coroutines.Continuation r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.hyprmx.android.sdk.preload.r
            if (r0 == 0) goto L13
            r0 = r10
            com.hyprmx.android.sdk.preload.r r0 = (com.hyprmx.android.sdk.preload.r) r0
            int r1 = r0.f4664g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4664g = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.r r0 = new com.hyprmx.android.sdk.preload.r
            r0.<init>(r7, r10)
        L18:
            java.lang.Object r10 = r0.f4662e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4664g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L81
            goto L7b
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlinx.coroutines.sync.Mutex r8 = r0.f4661d
            android.content.Context r9 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.preload.q r4 = (com.hyprmx.android.sdk.preload.q) r4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L61
        L47:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r7.b
            r0.a = r7
            r0.b = r9
            r0.c = r8
            r0.f4661d = r10
            r0.f4664g = r4
            java.lang.Object r2 = r10.c(r5, r0)
            if (r2 != r1) goto L5d
            return r1
        L5d:
            r4 = r7
            r2 = r9
            r9 = r8
            r8 = r10
        L61:
            kotlinx.coroutines.r r10 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L81
            com.hyprmx.android.sdk.preload.s r6 = new com.hyprmx.android.sdk.preload.s     // Catch: java.lang.Throwable -> L81
            r6.<init>(r4, r9, r2, r5)     // Catch: java.lang.Throwable -> L81
            r0.a = r8     // Catch: java.lang.Throwable -> L81
            r0.b = r5     // Catch: java.lang.Throwable -> L81
            r0.c = r5     // Catch: java.lang.Throwable -> L81
            r0.f4661d = r5     // Catch: java.lang.Throwable -> L81
            r0.f4664g = r3     // Catch: java.lang.Throwable -> L81
            java.lang.Object r10 = kotlinx.coroutines.BuildersKt.withContext(r10, r6, r0)     // Catch: java.lang.Throwable -> L81
            if (r10 != r1) goto L7b
            return r1
        L7b:
            java.lang.String r10 = (java.lang.String) r10     // Catch: java.lang.Throwable -> L81
            r8.d(r5)
            return r10
        L81:
            r9 = move-exception
            r8.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.a(android.content.Context, java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // com.hyprmx.android.sdk.preload.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(java.lang.String r8, java.io.InputStream r9, kotlin.coroutines.Continuation<? super java.lang.Boolean> r10) {
        /*
            r7 = this;
            boolean r0 = r10 instanceof com.hyprmx.android.sdk.preload.q.h
            if (r0 == 0) goto L13
            r0 = r10
            com.hyprmx.android.sdk.preload.q$h r0 = (com.hyprmx.android.sdk.preload.q.h) r0
            int r1 = r0.f4655g
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4655g = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.q$h r0 = new com.hyprmx.android.sdk.preload.q$h
            r0.<init>(r10)
        L18:
            java.lang.Object r10 = r0.f4653e
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4655g
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L47
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L88
            goto L7a
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlinx.coroutines.sync.Mutex r8 = r0.f4652d
            java.io.InputStream r9 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.preload.q r4 = (com.hyprmx.android.sdk.preload.q) r4
            kotlin.ResultKt.throwOnFailure(r10)
            goto L60
        L47:
            kotlin.ResultKt.throwOnFailure(r10)
            kotlinx.coroutines.sync.Mutex r10 = r7.b
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f4652d = r10
            r0.f4655g = r4
            java.lang.Object r2 = r10.c(r5, r0)
            if (r2 != r1) goto L5d
            return r1
        L5d:
            r4 = r7
            r2 = r8
            r8 = r10
        L60:
            kotlinx.coroutines.r r10 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L88
            com.hyprmx.android.sdk.preload.q$i r6 = new com.hyprmx.android.sdk.preload.q$i     // Catch: java.lang.Throwable -> L88
            r6.<init>(r9, r2, r5)     // Catch: java.lang.Throwable -> L88
            r0.a = r8     // Catch: java.lang.Throwable -> L88
            r0.b = r5     // Catch: java.lang.Throwable -> L88
            r0.c = r5     // Catch: java.lang.Throwable -> L88
            r0.f4652d = r5     // Catch: java.lang.Throwable -> L88
            r0.f4655g = r3     // Catch: java.lang.Throwable -> L88
            java.lang.Object r10 = kotlinx.coroutines.BuildersKt.withContext(r10, r6, r0)     // Catch: java.lang.Throwable -> L88
            if (r10 != r1) goto L7a
            return r1
        L7a:
            java.lang.Boolean r10 = (java.lang.Boolean) r10     // Catch: java.lang.Throwable -> L88
            boolean r9 = r10.booleanValue()     // Catch: java.lang.Throwable -> L88
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r9)     // Catch: java.lang.Throwable -> L88
            r8.d(r5)
            return r9
        L88:
            r9 = move-exception
            r8.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.a(java.lang.String, java.io.InputStream, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // com.hyprmx.android.sdk.preload.p
    public final Object a(Continuation<? super kotlin.v> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new g(null), continuation);
    }

    @Override // com.hyprmx.android.sdk.preload.p
    public final long b() {
        long j2;
        com.hyprmx.android.sdk.utility.l lVar = this.c;
        if (lVar == null) {
            return 0L;
        }
        synchronized (lVar) {
            j2 = lVar.k;
        }
        return j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // com.hyprmx.android.sdk.preload.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(java.lang.String r8, kotlin.coroutines.Continuation<? super java.lang.Boolean> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.preload.q.j
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.preload.q$j r0 = (com.hyprmx.android.sdk.preload.q.j) r0
            int r1 = r0.f4660f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4660f = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.q$j r0 = new com.hyprmx.android.sdk.preload.q$j
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f4658d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4660f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L45
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L82
            goto L74
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlinx.coroutines.sync.Mutex r8 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.preload.q r4 = (com.hyprmx.android.sdk.preload.q) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L45:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.b
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f4660f = r4
            java.lang.Object r2 = r9.c(r5, r0)
            if (r2 != r1) goto L59
            return r1
        L59:
            r4 = r7
            r2 = r8
            r8 = r9
        L5c:
            kotlinx.coroutines.r r9 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L82
            com.hyprmx.android.sdk.preload.q$k r6 = new com.hyprmx.android.sdk.preload.q$k     // Catch: java.lang.Throwable -> L82
            r6.<init>(r2, r5)     // Catch: java.lang.Throwable -> L82
            r0.a = r8     // Catch: java.lang.Throwable -> L82
            r0.b = r5     // Catch: java.lang.Throwable -> L82
            r0.c = r5     // Catch: java.lang.Throwable -> L82
            r0.f4660f = r3     // Catch: java.lang.Throwable -> L82
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0)     // Catch: java.lang.Throwable -> L82
            if (r9 != r1) goto L74
            return r1
        L74:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L82
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L82
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r9)     // Catch: java.lang.Throwable -> L82
            r8.d(r5)
            return r9
        L82:
            r9 = move-exception
            r8.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.b(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // com.hyprmx.android.sdk.preload.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object c(java.lang.String r8, kotlin.coroutines.Continuation<? super java.lang.Boolean> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.preload.q.c
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.preload.q$c r0 = (com.hyprmx.android.sdk.preload.q.c) r0
            int r1 = r0.f4648f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4648f = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.q$c r0 = new com.hyprmx.android.sdk.preload.q$c
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f4646d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4648f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L45
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L82
            goto L74
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlinx.coroutines.sync.Mutex r8 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.preload.q r4 = (com.hyprmx.android.sdk.preload.q) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L45:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.b
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f4648f = r4
            java.lang.Object r2 = r9.c(r5, r0)
            if (r2 != r1) goto L59
            return r1
        L59:
            r4 = r7
            r2 = r8
            r8 = r9
        L5c:
            kotlinx.coroutines.r r9 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L82
            com.hyprmx.android.sdk.preload.q$d r6 = new com.hyprmx.android.sdk.preload.q$d     // Catch: java.lang.Throwable -> L82
            r6.<init>(r2, r5)     // Catch: java.lang.Throwable -> L82
            r0.a = r8     // Catch: java.lang.Throwable -> L82
            r0.b = r5     // Catch: java.lang.Throwable -> L82
            r0.c = r5     // Catch: java.lang.Throwable -> L82
            r0.f4648f = r3     // Catch: java.lang.Throwable -> L82
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0)     // Catch: java.lang.Throwable -> L82
            if (r9 != r1) goto L74
            return r1
        L74:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L82
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L82
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r9)     // Catch: java.lang.Throwable -> L82
            r8.d(r5)
            return r9
        L82:
            r9 = move-exception
            r8.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.c(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        com.hyprmx.android.sdk.utility.l lVar = this.c;
        if (lVar != null) {
            lVar.close();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // com.hyprmx.android.sdk.preload.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object d(kotlin.coroutines.Continuation<? super java.lang.Boolean> r9) throws java.lang.Throwable {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.preload.q.a
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.preload.q$a r0 = (com.hyprmx.android.sdk.preload.q.a) r0
            int r1 = r0.f4645e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4645e = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.q$a r0 = new com.hyprmx.android.sdk.preload.q$a
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.c
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4645e
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L46
            if (r2 == r4) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r0 = r0.a
            kotlinx.coroutines.sync.Mutex r0 = (kotlinx.coroutines.sync.Mutex) r0
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L31
            goto L72
        L31:
            r9 = move-exception
            goto L84
        L33:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L3b:
            kotlinx.coroutines.sync.Mutex r2 = r0.b
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.preload.q r4 = (com.hyprmx.android.sdk.preload.q) r4
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r2
            goto L59
        L46:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r8.b
            r0.a = r8
            r0.b = r9
            r0.f4645e = r4
            java.lang.Object r2 = r9.c(r5, r0)
            if (r2 != r1) goto L58
            return r1
        L58:
            r4 = r8
        L59:
            kotlinx.coroutines.r r2 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L80
            com.hyprmx.android.sdk.preload.q$b r6 = new com.hyprmx.android.sdk.preload.q$b     // Catch: java.lang.Throwable -> L80
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L80
            r0.a = r9     // Catch: java.lang.Throwable -> L80
            r0.b = r5     // Catch: java.lang.Throwable -> L80
            r0.f4645e = r3     // Catch: java.lang.Throwable -> L80
            java.lang.Object r0 = kotlinx.coroutines.BuildersKt.withContext(r2, r6, r0)     // Catch: java.lang.Throwable -> L80
            if (r0 != r1) goto L6f
            return r1
        L6f:
            r7 = r0
            r0 = r9
            r9 = r7
        L72:
            java.lang.Boolean r9 = (java.lang.Boolean) r9     // Catch: java.lang.Throwable -> L31
            boolean r9 = r9.booleanValue()     // Catch: java.lang.Throwable -> L31
            java.lang.Boolean r9 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r9)     // Catch: java.lang.Throwable -> L31
            r0.d(r5)
            return r9
        L80:
            r0 = move-exception
            r7 = r0
            r0 = r9
            r9 = r7
        L84:
            r0.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.d(kotlin.coroutines.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v1, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v4, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r8v9 */
    @Override // com.hyprmx.android.sdk.preload.p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object e(java.lang.String r8, kotlin.coroutines.Continuation<? super java.lang.Long> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.hyprmx.android.sdk.preload.q.e
            if (r0 == 0) goto L13
            r0 = r9
            com.hyprmx.android.sdk.preload.q$e r0 = (com.hyprmx.android.sdk.preload.q.e) r0
            int r1 = r0.f4651f
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f4651f = r1
            goto L18
        L13:
            com.hyprmx.android.sdk.preload.q$e r0 = new com.hyprmx.android.sdk.preload.q$e
            r0.<init>(r9)
        L18:
            java.lang.Object r9 = r0.f4649d
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r2 = r0.f4651f
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L45
            if (r2 == r4) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r8 = r0.a
            kotlinx.coroutines.sync.Mutex r8 = (kotlinx.coroutines.sync.Mutex) r8
            kotlin.ResultKt.throwOnFailure(r9)     // Catch: java.lang.Throwable -> L82
            goto L74
        L31:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L39:
            kotlinx.coroutines.sync.Mutex r8 = r0.c
            java.lang.String r2 = r0.b
            java.lang.Object r4 = r0.a
            com.hyprmx.android.sdk.preload.q r4 = (com.hyprmx.android.sdk.preload.q) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5c
        L45:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlinx.coroutines.sync.Mutex r9 = r7.b
            r0.a = r7
            r0.b = r8
            r0.c = r9
            r0.f4651f = r4
            java.lang.Object r2 = r9.c(r5, r0)
            if (r2 != r1) goto L59
            return r1
        L59:
            r4 = r7
            r2 = r8
            r8 = r9
        L5c:
            kotlinx.coroutines.r r9 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L82
            com.hyprmx.android.sdk.preload.q$f r6 = new com.hyprmx.android.sdk.preload.q$f     // Catch: java.lang.Throwable -> L82
            r6.<init>(r2, r5)     // Catch: java.lang.Throwable -> L82
            r0.a = r8     // Catch: java.lang.Throwable -> L82
            r0.b = r5     // Catch: java.lang.Throwable -> L82
            r0.c = r5     // Catch: java.lang.Throwable -> L82
            r0.f4651f = r3     // Catch: java.lang.Throwable -> L82
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r9, r6, r0)     // Catch: java.lang.Throwable -> L82
            if (r9 != r1) goto L74
            return r1
        L74:
            java.lang.Number r9 = (java.lang.Number) r9     // Catch: java.lang.Throwable -> L82
            long r0 = r9.longValue()     // Catch: java.lang.Throwable -> L82
            java.lang.Long r9 = kotlin.coroutines.jvm.internal.Boxing.boxLong(r0)     // Catch: java.lang.Throwable -> L82
            r8.d(r5)
            return r9
        L82:
            r9 = move-exception
            r8.d(r5)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.q.e(java.lang.String, kotlin.coroutines.d):java.lang.Object");
    }
}
