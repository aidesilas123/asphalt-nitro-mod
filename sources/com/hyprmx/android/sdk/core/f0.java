package com.hyprmx.android.sdk.core;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper$readCoreJSFile$2", f = "StorageHelper.kt", i = {}, l = {113, 113}, m = "invokeSuspend", n = {}, s = {})
public final class f0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    public b0 a;
    public int b;
    public final /* synthetic */ b0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(b0 b0Var, Continuation<? super f0> continuation) {
        super(2, continuation);
        this.c = b0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new f0(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((f0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:0|2|(1:(1:(2:6|31)(2:7|8))(1:9))(2:10|(1:12))|13|32|14|(1:16)(2:17|18)|33|19|20|21|(1:30)(1:31)|(2:(0)|(1:36))) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0072, code lost:
    
        r1 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0073, code lost:
    
        com.hyprmx.android.sdk.utility.HyprMXLog.e("Error reading file for path " + r6, r1);
        r6 = null;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) throws java.io.IOException {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r5.b
            r2 = 2
            r3 = 1
            r4 = 0
            if (r1 == 0) goto L22
            if (r1 == r3) goto L1c
            if (r1 != r2) goto L14
            kotlin.ResultKt.throwOnFailure(r6)
            goto L88
        L14:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L1c:
            com.hyprmx.android.sdk.core.b0 r1 = r5.a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L39
        L22:
            kotlin.ResultKt.throwOnFailure(r6)
            com.hyprmx.android.sdk.core.b0 r1 = r5.c
            r5.a = r1
            r5.b = r3
            kotlinx.coroutines.r r6 = r1.b
            com.hyprmx.android.sdk.core.d0 r3 = new com.hyprmx.android.sdk.core.d0
            r3.<init>(r1, r4)
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r3, r5)
            if (r6 != r0) goto L39
            return r0
        L39:
            java.lang.String r6 = (java.lang.String) r6
            r5.a = r4
            r5.b = r2
            r1.getClass()
            java.io.File r1 = new java.io.File
            r1.<init>(r6)
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L72
            r2.<init>(r1)     // Catch: java.io.FileNotFoundException -> L72
            java.nio.charset.Charset r1 = kotlin.text.Charsets.b     // Catch: java.io.FileNotFoundException -> L72
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.io.FileNotFoundException -> L72
            r3.<init>(r2, r1)     // Catch: java.io.FileNotFoundException -> L72
            r1 = 8192(0x2000, float:1.148E-41)
            boolean r2 = r3 instanceof java.io.BufferedReader     // Catch: java.io.FileNotFoundException -> L72
            if (r2 == 0) goto L5c
            java.io.BufferedReader r3 = (java.io.BufferedReader) r3     // Catch: java.io.FileNotFoundException -> L72
            goto L62
        L5c:
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.io.FileNotFoundException -> L72
            r2.<init>(r3, r1)     // Catch: java.io.FileNotFoundException -> L72
            r3 = r2
        L62:
            java.lang.String r1 = kotlin.io.TextStreamsKt.readText(r3)     // Catch: java.lang.Throwable -> L6b
            kotlin.io.CloseableKt.closeFinally(r3, r4)     // Catch: java.io.FileNotFoundException -> L72
            r6 = r1
            goto L85
        L6b:
            r1 = move-exception
            throw r1     // Catch: java.lang.Throwable -> L6d
        L6d:
            r2 = move-exception
            kotlin.io.CloseableKt.closeFinally(r3, r1)     // Catch: java.io.FileNotFoundException -> L72
            throw r2     // Catch: java.io.FileNotFoundException -> L72
        L72:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Error reading file for path "
            r2.<init>(r3)
            r2.append(r6)
            java.lang.String r6 = r2.toString()
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r6, r1)
            r6 = r4
        L85:
            if (r6 != r0) goto L88
            return r0
        L88:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.f0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
