package com.hyprmx.android.sdk.utility;

import java.io.InputStream;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.VideoCacheManagerImpl$downloadVideo$2", f = "VideoCacheManagerImpl.kt", i = {0, 0, 1, 1, 2, 2, 2, 3, 3, 3}, l = {34, 36, 57, 58}, m = "invokeSuspend", n = {"$this$withContext", "key", "$this$withContext", "key", "$this$withContext", "key", com.json.mediationsdk.utils.c.Y1, "$this$withContext", com.json.mediationsdk.utils.c.Y1, "cachedVideoLength"}, s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$2", "L$0", "L$1", "J$0"})
public final class c1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super b1>, Object> {
    public Object a;
    public com.hyprmx.android.sdk.network.m b;
    public long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4714d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f4715e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f4716f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ e1 f4717g;

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.VideoCacheManagerImpl$downloadVideo$2$response$1", f = "VideoCacheManagerImpl.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<InputStream, Continuation<? super Boolean>, Object> {
        public int a;
        public /* synthetic */ Object b;
        public final /* synthetic */ e1 c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4718d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(e1 e1Var, String str, Continuation<? super a> continuation) {
            super(2, continuation);
            this.c = e1Var;
            this.f4718d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(this.c, this.f4718d, continuation);
            aVar.b = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InputStream inputStream, Continuation<? super Boolean> continuation) {
            return ((a) create(inputStream, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                InputStream inputStream = (InputStream) this.b;
                com.hyprmx.android.sdk.preload.p pVar = this.c.f4719d;
                String str = this.f4718d;
                this.a = 1;
                obj = pVar.a(str, inputStream, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c1(e1 e1Var, String str, Continuation continuation) {
        super(2, continuation);
        this.f4716f = str;
        this.f4717g = e1Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        c1 c1Var = new c1(this.f4717g, this.f4716f, continuation);
        c1Var.f4715e = obj;
        return c1Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super b1> continuation) {
        return ((c1) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:0|2|76|(4:(1:(1:(1:(1:(5:8|9|10|56|(2:58|59)(2:60|61))(2:11|12))(7:13|14|15|53|(1:55)|56|(0)(0)))(7:16|17|18|32|(3:34|(1:39)(1:38)|(2:41|(2:43|44)(2:45|(2:47|48)(2:49|(1:51)(5:52|53|(0)|56|(0)(0))))))|62|63))(2:19|20))(3:22|23|(1:25))|79|28|(1:30)(5:31|32|(0)|62|63))|21|77|26|27|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01c5, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01c6, code lost:
    
        r17 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00cd A[Catch: Exception -> 0x01cb, TryCatch #0 {Exception -> 0x01cb, blocks: (B:9:0x0026, B:56:0x017a, B:58:0x0189, B:60:0x01b3, B:14:0x0041, B:53:0x0155, B:17:0x0052, B:32:0x00c7, B:34:0x00cd, B:41:0x00de, B:43:0x00eb, B:45:0x00f6, B:47:0x0108, B:49:0x013d, B:62:0x01bd, B:20:0x0062, B:23:0x0075), top: B:76:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0179 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0189 A[Catch: Exception -> 0x01cb, TryCatch #0 {Exception -> 0x01cb, blocks: (B:9:0x0026, B:56:0x017a, B:58:0x0189, B:60:0x01b3, B:14:0x0041, B:53:0x0155, B:17:0x0052, B:32:0x00c7, B:34:0x00cd, B:41:0x00de, B:43:0x00eb, B:45:0x00f6, B:47:0x0108, B:49:0x013d, B:62:0x01bd, B:20:0x0062, B:23:0x0075), top: B:76:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b3 A[Catch: Exception -> 0x01cb, TryCatch #0 {Exception -> 0x01cb, blocks: (B:9:0x0026, B:56:0x017a, B:58:0x0189, B:60:0x01b3, B:14:0x0041, B:53:0x0155, B:17:0x0052, B:32:0x00c7, B:34:0x00cd, B:41:0x00de, B:43:0x00eb, B:45:0x00f6, B:47:0x0108, B:49:0x013d, B:62:0x01bd, B:20:0x0062, B:23:0x0075), top: B:76:0x0012 }] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instruction units count: 497
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.utility.c1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
