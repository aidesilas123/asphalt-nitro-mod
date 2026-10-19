package com.hyprmx.android.sdk.om;

import android.content.Context;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.om.DefaultOpenMeasurementController$fetchOmSdkJSLibrary$2", f = "OpenMeasurementController.kt", i = {0, 1, 2}, l = {101, 107, 111}, m = "invokeSuspend", n = {"filename", "filename", "js"}, s = {"L$0", "L$0", "L$0"})
public final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    public String a;
    public int b;
    public final /* synthetic */ String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ b f4586d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f4587e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(Context context, b bVar, String str, Continuation continuation) {
        super(2, continuation);
        this.c = str;
        this.f4586d = bVar;
        this.f4587e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        String str = this.c;
        return new a(this.f4587e, this.f4586d, str, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()
            int r1 = r9.b
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L2d
            if (r1 == r4) goto L27
            if (r1 == r3) goto L21
            if (r1 != r2) goto L19
            java.lang.String r5 = r9.a
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Exception -> La5
            goto Lbb
        L19:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r0)
            throw r10
        L21:
            java.lang.String r1 = r9.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L77
        L27:
            java.lang.String r1 = r9.a
            kotlin.ResultKt.throwOnFailure(r10)
            goto L51
        L2d:
            kotlin.ResultKt.throwOnFailure(r10)
            java.lang.String r10 = r9.c
            java.lang.String r1 = "/"
            java.lang.String r10 = kotlin.text.g.substringAfterLast$default(r10, r1, r5, r3, r5)
            com.hyprmx.android.sdk.om.b r1 = r9.f4586d
            android.content.Context r6 = r9.f4587e
            r9.a = r10
            r9.b = r4
            kotlinx.coroutines.r r1 = r1.f4591g
            com.hyprmx.android.sdk.om.d r7 = new com.hyprmx.android.sdk.om.d
            r7.<init>(r6, r10, r5)
            java.lang.Object r1 = kotlinx.coroutines.BuildersKt.withContext(r1, r7, r9)
            if (r1 != r0) goto L4e
            return r0
        L4e:
            r8 = r1
            r1 = r10
            r10 = r8
        L51:
            java.io.File r10 = (java.io.File) r10
            boolean r6 = r10.exists()
            if (r6 == 0) goto L5e
            java.lang.String r5 = kotlin.io.e.readText$default(r10, r5, r4, r5)
            goto Lbb
        L5e:
            com.hyprmx.android.sdk.om.b r10 = r9.f4586d
            com.hyprmx.android.sdk.network.k r10 = r10.b
            java.lang.String r4 = r9.c
            r9.a = r1
            r9.b = r3
            com.hyprmx.android.sdk.network.a r3 = new com.hyprmx.android.sdk.network.a
            r6 = 0
            r7 = 15
            r3.<init>(r6, r5, r7)
            java.lang.Object r10 = r10.a(r4, r3, r9)
            if (r10 != r0) goto L77
            return r0
        L77:
            com.hyprmx.android.sdk.network.m r10 = (com.hyprmx.android.sdk.network.m) r10
            boolean r3 = r10 instanceof com.hyprmx.android.sdk.network.m.b
            if (r3 == 0) goto La8
            com.hyprmx.android.sdk.network.m$b r10 = (com.hyprmx.android.sdk.network.m.b) r10
            T r10 = r10.b
            java.lang.String r10 = (java.lang.String) r10
            com.hyprmx.android.sdk.om.b r3 = r9.f4586d     // Catch: java.lang.Exception -> La4
            android.content.Context r4 = r9.f4587e     // Catch: java.lang.Exception -> La4
            r9.a = r10     // Catch: java.lang.Exception -> La4
            r9.b = r2     // Catch: java.lang.Exception -> La4
            kotlinx.coroutines.r r2 = r3.f4591g     // Catch: java.lang.Exception -> La4
            com.hyprmx.android.sdk.om.e r3 = new com.hyprmx.android.sdk.om.e     // Catch: java.lang.Exception -> La4
            r3.<init>(r4, r1, r10, r5)     // Catch: java.lang.Exception -> La4
            java.lang.Object r1 = kotlinx.coroutines.BuildersKt.withContext(r2, r3, r9)     // Catch: java.lang.Exception -> La4
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.getCOROUTINE_SUSPENDED()     // Catch: java.lang.Exception -> La4
            if (r1 != r2) goto L9d
            goto L9f
        L9d:
            kotlin.v r1 = kotlin.v.a     // Catch: java.lang.Exception -> La4
        L9f:
            if (r1 != r0) goto La2
            return r0
        La2:
            r5 = r10
            goto Lbb
        La4:
            r5 = r10
        La5:
            java.lang.String r10 = "Unable to store Open Measurement JS"
            goto Lb8
        La8:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r0 = "Error with network call to fetch OM SDK js library. "
            r10.<init>(r0)
            java.lang.String r0 = r9.c
            r10.append(r0)
            java.lang.String r10 = r10.toString()
        Lb8:
            com.hyprmx.android.sdk.utility.HyprMXLog.e(r10)
        Lbb:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.hyprmx.android.sdk.om.a.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
