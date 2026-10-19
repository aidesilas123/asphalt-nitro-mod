package com.hyprmx.android.sdk.core;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper$getCoreJSFromFile$2", f = "StorageHelper.kt", i = {0, 1}, l = {104, 107}, m = "invokeSuspend", n = {"jsFile", "jsFile"}, s = {"L$0", "L$0"})
public final class e0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    public String a;
    public int b;
    public final /* synthetic */ b0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(b0 b0Var, Continuation<? super e0> continuation) {
        super(2, continuation);
        this.c = b0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new e0(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((e0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x008d  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.io.IOException {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r8.b
            r2 = 8192(0x2000, float:1.148E-41)
            java.lang.String r3 = "applicationContext.assets.open(jsFile)"
            r4 = 0
            r5 = 2
            r6 = 1
            if (r1 == 0) goto L28
            if (r1 == r6) goto L22
            if (r1 != r5) goto L1a
            java.lang.String r0 = r8.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L89
        L1a:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L22:
            java.lang.String r1 = r8.a
            kotlin.ResultKt.throwOnFailure(r9)
            goto L3d
        L28:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.String r9 = "sdk_core.min.js"
            com.hyprmx.android.sdk.core.b0 r1 = r8.c
            r8.a = r9
            r8.b = r6
            java.lang.Object r1 = r1.b(r8)
            if (r1 != r0) goto L3a
            return r0
        L3a:
            r7 = r1
            r1 = r9
            r9 = r7
        L3d:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 != 0) goto L74
            com.hyprmx.android.sdk.core.b0 r9 = r8.c
            android.content.Context r9 = r9.a
            android.content.res.AssetManager r9 = r9.getAssets()
            java.io.InputStream r9 = r9.open(r1)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r3)
            java.nio.charset.Charset r0 = kotlin.text.Charsets.b
            java.io.InputStreamReader r1 = new java.io.InputStreamReader
            r1.<init>(r9, r0)
            boolean r9 = r1 instanceof java.io.BufferedReader
            if (r9 == 0) goto L62
            java.io.BufferedReader r1 = (java.io.BufferedReader) r1
            goto L68
        L62:
            java.io.BufferedReader r9 = new java.io.BufferedReader
            r9.<init>(r1, r2)
            r1 = r9
        L68:
            java.lang.String r9 = kotlin.io.TextStreamsKt.readText(r1)     // Catch: java.lang.Throwable -> L6d
            goto Lb4
        L6d:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> L6f
        L6f:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r1, r9)
            throw r0
        L74:
            com.hyprmx.android.sdk.core.b0 r9 = r8.c
            r8.a = r1
            r8.b = r5
            kotlinx.coroutines.r r5 = r9.b
            com.hyprmx.android.sdk.core.f0 r6 = new com.hyprmx.android.sdk.core.f0
            r6.<init>(r9, r4)
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r5, r6, r8)
            if (r9 != r0) goto L88
            return r0
        L88:
            r0 = r1
        L89:
            java.lang.String r9 = (java.lang.String) r9
            if (r9 != 0) goto Lbf
            com.hyprmx.android.sdk.core.b0 r9 = r8.c
            android.content.Context r9 = r9.a
            android.content.res.AssetManager r9 = r9.getAssets()
            java.io.InputStream r9 = r9.open(r0)
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r9, r3)
            java.nio.charset.Charset r0 = kotlin.text.Charsets.b
            java.io.InputStreamReader r1 = new java.io.InputStreamReader
            r1.<init>(r9, r0)
            boolean r9 = r1 instanceof java.io.BufferedReader
            if (r9 == 0) goto Laa
            java.io.BufferedReader r1 = (java.io.BufferedReader) r1
            goto Lb0
        Laa:
            java.io.BufferedReader r9 = new java.io.BufferedReader
            r9.<init>(r1, r2)
            r1 = r9
        Lb0:
            java.lang.String r9 = kotlin.io.TextStreamsKt.readText(r1)     // Catch: java.lang.Throwable -> Lb8
        Lb4:
            kotlin.io.CloseableKt.closeFinally(r1, r4)
            goto Lbf
        Lb8:
            r9 = move-exception
            throw r9     // Catch: java.lang.Throwable -> Lba
        Lba:
            r0 = move-exception
            kotlin.io.CloseableKt.closeFinally(r1, r9)
            throw r0
        Lbf:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.core.e0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
