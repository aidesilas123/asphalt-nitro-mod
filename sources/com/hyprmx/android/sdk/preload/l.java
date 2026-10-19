package com.hyprmx.android.sdk.preload;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$startVideoDownload$2", f = "CacheController.kt", i = {}, l = {234, 235}, m = "invokeSuspend", n = {}, s = {})
public final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ com.hyprmx.android.sdk.api.data.c b;
    public final /* synthetic */ c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(com.hyprmx.android.sdk.api.data.c cVar, c cVar2, Continuation<? super l> continuation) {
        super(2, continuation);
        this.b = cVar;
        this.c = cVar2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new l(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x005c A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r6.a
            r2 = 2
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L1f
            if (r1 == r4) goto L1b
            if (r1 != r2) goto L13
            kotlin.ResultKt.throwOnFailure(r7)
            goto L5d
        L13:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L1b:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L43
        L1f:
            kotlin.ResultKt.throwOnFailure(r7)
            com.hyprmx.android.sdk.api.data.c r7 = r6.b
            boolean r1 = r7.f4476e
            if (r1 != 0) goto L5d
            com.hyprmx.android.sdk.preload.c r1 = r6.c
            com.hyprmx.android.sdk.utility.e1 r1 = r1.i
            java.lang.String r7 = r7.a
            r6.a = r4
            r1.getClass()
            kotlinx.coroutines.r r4 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.utility.c1 r5 = new com.hyprmx.android.sdk.utility.c1
            r5.<init>(r1, r7, r3)
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r6)
            if (r7 != r0) goto L43
            return r0
        L43:
            com.hyprmx.android.sdk.utility.b1 r7 = (com.hyprmx.android.sdk.utility.b1) r7
            com.hyprmx.android.sdk.preload.c r1 = r6.c
            com.hyprmx.android.sdk.api.data.c r4 = r6.b
            r6.a = r2
            kotlinx.coroutines.s r2 = r1.h
            kotlin.coroutines.CoroutineContext r2 = r2.getCoroutineContext()
            com.hyprmx.android.sdk.preload.g r5 = new com.hyprmx.android.sdk.preload.g
            r5.<init>(r7, r4, r1, r3)
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r2, r5, r6)
            if (r7 != r0) goto L5d
            return r0
        L5d:
            kotlin.v r7 = kotlin.v.a
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.preload.l.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
