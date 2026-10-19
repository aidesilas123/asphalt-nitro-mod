package com.hyprmx.android.sdk.preload;

import com.hyprmx.android.sdk.utility.b1;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$processVideoDownloadResult$2", f = "CacheController.kt", i = {0, 1, 2, 3, 4}, l = {256, 257, 263, 275, 279}, m = "invokeSuspend", n = {"retry", "retry", "retry", "retry", "retry"}, s = {"I$0", "I$0", "I$0", "I$0", "I$0"})
public final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    public int a;
    public int b;
    public final /* synthetic */ b1 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ com.hyprmx.android.sdk.api.data.c f4640d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c f4641e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(b1 b1Var, com.hyprmx.android.sdk.api.data.c cVar, c cVar2, Continuation<? super g> continuation) {
        super(2, continuation);
        this.c = b1Var;
        this.f4640d = cVar;
        this.f4641e = cVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new g(this.c, this.f4640d, this.f4641e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x008b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0096 A[Catch: IllegalStateException -> 0x0035, TRY_LEAVE, TryCatch #1 {IllegalStateException -> 0x0035, blocks: (B:13:0x0029, B:54:0x0119, B:55:0x0120, B:16:0x0030, B:21:0x003a, B:39:0x008d, B:42:0x0096, B:24:0x0040, B:35:0x007f), top: B:67:0x0012 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0130 A[RETURN] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v39 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v42 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            Method dump skipped, instruction units count: 323
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.g.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
