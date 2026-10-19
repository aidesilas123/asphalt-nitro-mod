package com.hyprmx.android.sdk.utility;

import android.content.Context;
import android.graphics.Bitmap;
import java.lang.ref.SoftReference;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class y implements f0 {
    public final Context a;
    public final com.hyprmx.android.sdk.network.k b;
    public final Map<String, SoftReference<Bitmap>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f4738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f4739e;

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.ImageCacheManager$downloadAndCacheImage$2", f = "ImageCacheManager.kt", i = {}, l = {106, 107}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        public int a;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return y.this.new a(this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (y.this.f4739e.contains(this.c)) {
                    HyprMXLog.d("Image " + this.c + " download already in progress");
                    return kotlin.v.a;
                }
                y yVar = y.this;
                String str = this.c;
                this.a = 1;
                yVar.getClass();
                obj = BuildersKt.withContext(Dispatchers.getIO(), new c0(yVar, str, null), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                ResultKt.throwOnFailure(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                HyprMXLog.d("Image " + this.c + " already cached");
                return kotlin.v.a;
            }
            y yVar2 = y.this;
            String str2 = this.c;
            this.a = 2;
            yVar2.getClass();
            Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new x(yVar2, str2, null), this);
            return objWithContext == coroutine_suspended ? coroutine_suspended : objWithContext;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.ImageCacheManager$retrieveBitmap$2", f = "ImageCacheManager.kt", i = {}, l = {114, 115, 117}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super m0<? extends Bitmap>>, Object> {
        public int a;
        public final /* synthetic */ String b;
        public final /* synthetic */ y c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(y yVar, String str, Continuation continuation) {
            super(2, continuation);
            this.b = str;
            this.c = yVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new b(this.c, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super m0<? extends Bitmap>> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x00a3  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
            /*
                r7 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
                int r1 = r7.a
                r2 = 3
                r3 = 2
                r4 = 1
                r5 = 0
                if (r1 == 0) goto L27
                if (r1 == r4) goto L23
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
                kotlin.ResultKt.throwOnFailure(r8)
                goto L7c
            L23:
                kotlin.ResultKt.throwOnFailure(r8)
                goto L5b
            L27:
                kotlin.ResultKt.throwOnFailure(r8)
                java.lang.StringBuilder r8 = new java.lang.StringBuilder
                java.lang.String r1 = "fetching ["
                r8.<init>(r1)
                java.lang.String r1 = r7.b
                r8.append(r1)
                r1 = 93
                r8.append(r1)
                java.lang.String r8 = r8.toString()
                com.hyprmx.android.sdk.utility.HyprMXLog.d(r8)
                com.hyprmx.android.sdk.utility.y r8 = r7.c
                java.lang.String r1 = r7.b
                r7.a = r4
                r8.getClass()
                kotlinx.coroutines.r r4 = kotlinx.coroutines.Dispatchers.getIO()
                com.hyprmx.android.sdk.utility.c0 r6 = new com.hyprmx.android.sdk.utility.c0
                r6.<init>(r8, r1, r5)
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r4, r6, r7)
                if (r8 != r0) goto L5b
                return r0
            L5b:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 != 0) goto L7d
                com.hyprmx.android.sdk.utility.y r8 = r7.c
                java.lang.String r1 = r7.b
                r7.a = r3
                r8.getClass()
                kotlinx.coroutines.r r2 = kotlinx.coroutines.Dispatchers.getIO()
                com.hyprmx.android.sdk.utility.x r3 = new com.hyprmx.android.sdk.utility.x
                r3.<init>(r8, r1, r5)
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r2, r3, r7)
                if (r8 != r0) goto L7c
                return r0
            L7c:
                return r8
            L7d:
                com.hyprmx.android.sdk.utility.y r8 = r7.c
                java.lang.String r1 = r7.b
                r7.a = r2
                r8.getClass()
                kotlinx.coroutines.r r2 = kotlinx.coroutines.Dispatchers.getIO()
                com.hyprmx.android.sdk.utility.a0 r3 = new com.hyprmx.android.sdk.utility.a0
                r3.<init>(r8, r1, r5)
                java.lang.Object r8 = kotlinx.coroutines.BuildersKt.withContext(r2, r3, r7)
                if (r8 != r0) goto L96
                return r0
            L96:
                android.graphics.Bitmap r8 = (android.graphics.Bitmap) r8
                if (r8 != 0) goto La3
                com.hyprmx.android.sdk.utility.m0$a r8 = new com.hyprmx.android.sdk.utility.m0$a
                r0 = 0
                java.lang.String r1 = "Failed to retrieve image from cache"
                r8.<init>(r1, r0, r5)
                goto La9
            La3:
                com.hyprmx.android.sdk.utility.m0$b r0 = new com.hyprmx.android.sdk.utility.m0$b
                r0.<init>(r8)
                r8 = r0
            La9:
                return r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.utility.y.b.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ y(Context context, com.hyprmx.android.sdk.network.k kVar) {
        this(context, kVar, new ConcurrentHashMap(), 3);
    }

    public y(Context context, com.hyprmx.android.sdk.network.k networkController, Map<String, SoftReference<Bitmap>> memoryCache, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(memoryCache, "memoryCache");
        this.a = context;
        this.b = networkController;
        this.c = memoryCache;
        this.f4738d = i;
        this.f4739e = new HashSet();
    }

    @Override // com.hyprmx.android.sdk.utility.f0
    public final Object a(String str, Continuation<? super m0<Bitmap>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new b(this, str, null), continuation);
    }

    @Override // com.hyprmx.android.sdk.utility.f0
    public final Object b(String str, Continuation<? super kotlin.v> continuation) {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new a(str, null), continuation);
        return objWithContext == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : kotlin.v.a;
    }
}
