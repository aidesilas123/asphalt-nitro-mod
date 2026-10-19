package com.hyprmx.android.sdk.network;

import java.io.InputStream;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.network.HttpNetworkController$postRequest$2", f = "HttpNetworkController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class e extends SuspendLambda implements Function2<InputStream, Continuation<? super String>, Object> {
    public /* synthetic */ Object a;

    public e(Continuation<? super e> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        e eVar = new e(continuation);
        eVar.a = obj;
        return eVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(InputStream inputStream, Continuation<? super String> continuation) {
        return ((e) create(inputStream, continuation)).invokeSuspend(v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        return com.hyprmx.android.sdk.extensions.a.a((InputStream) this.a);
    }
}
