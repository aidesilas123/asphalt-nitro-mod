package com.hyprmx.android.sdk.core;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController$initCache$2", f = "HyprMXController.kt", i = {}, l = {363, 364, 365, 366}, m = "invokeSuspend", n = {}, s = {})
public final class n extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ j b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(j jVar, Continuation<? super n> continuation) {
        super(2, continuation);
        this.b = jVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new n(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((n) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7 A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r8.a
            r2 = 4
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L2e
            if (r1 == r5) goto L2a
            if (r1 == r4) goto L26
            if (r1 == r3) goto L22
            if (r1 != r2) goto L1a
            kotlin.ResultKt.throwOnFailure(r9)
            goto Lb8
        L1a:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L22:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L8d
        L26:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6d
        L2a:
            kotlin.ResultKt.throwOnFailure(r9)
            goto L42
        L2e:
            kotlin.ResultKt.throwOnFailure(r9)
            com.hyprmx.android.sdk.core.j r9 = r8.b
            com.hyprmx.android.sdk.core.b r9 = r9.a
            com.hyprmx.android.sdk.preload.n r9 = r9.a()
            r8.a = r5
            java.lang.Object r9 = r9.a(r8)
            if (r9 != r0) goto L42
            return r0
        L42:
            com.hyprmx.android.sdk.core.j r9 = r8.b
            com.hyprmx.android.sdk.core.b r1 = r9.a
            java.lang.String r1 = r1.s()
            com.hyprmx.android.sdk.core.j r5 = r8.b
            com.hyprmx.android.sdk.core.b r5 = r5.a
            java.lang.String r5 = r5.y()
            r8.a = r4
            kotlinx.coroutines.r r4 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.core.l r7 = new com.hyprmx.android.sdk.core.l
            r7.<init>(r9, r1, r5, r6)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r4, r7, r8)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r9 != r1) goto L68
            goto L6a
        L68:
            kotlin.v r9 = kotlin.v.a
        L6a:
            if (r9 != r0) goto L6d
            return r0
        L6d:
            com.hyprmx.android.sdk.core.j r9 = r8.b
            r8.a = r3
            r9.getClass()
            kotlinx.coroutines.r r1 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.core.m r3 = new com.hyprmx.android.sdk.core.m
            r3.<init>(r9, r6)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r1, r3, r8)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r9 != r1) goto L88
            goto L8a
        L88:
            kotlin.v r9 = kotlin.v.a
        L8a:
            if (r9 != r0) goto L8d
            return r0
        L8d:
            com.hyprmx.android.sdk.core.j r9 = r8.b
            com.hyprmx.android.sdk.core.b r1 = r9.a
            java.lang.String r1 = r1.s()
            com.hyprmx.android.sdk.core.j r3 = r8.b
            com.hyprmx.android.sdk.core.b r3 = r3.a
            java.lang.String r3 = r3.y()
            r8.a = r2
            kotlinx.coroutines.r r2 = kotlinx.coroutines.Dispatchers.getIO()
            com.hyprmx.android.sdk.core.o r4 = new com.hyprmx.android.sdk.core.o
            r4.<init>(r9, r1, r3, r6)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r2, r4, r8)
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            if (r9 != r1) goto Lb3
            goto Lb5
        Lb3:
            kotlin.v r9 = kotlin.v.a
        Lb5:
            if (r9 != r0) goto Lb8
            return r0
        Lb8:
            kotlin.v r9 = kotlin.v.a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.n.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
