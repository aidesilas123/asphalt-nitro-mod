package com.hyprmx.android.sdk.core;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper$writeToCoreJSFile$2", f = "StorageHelper.kt", i = {}, l = {71, 71}, m = "invokeSuspend", n = {}, s = {})
public final class g0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    public b0 a;
    public int b;
    public final /* synthetic */ b0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4500d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(b0 b0Var, String str, Continuation<? super g0> continuation) {
        super(2, continuation);
        this.c = b0Var;
        this.f4500d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new g0(this.c, this.f4500d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((g0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        b0 b0Var;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("writetoCoreJSFile");
            b0Var = this.c;
            this.a = b0Var;
            this.b = 1;
            obj = BuildersKt.withContext(b0Var.b, new d0(b0Var, null), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b0Var = this.a;
            ResultKt.throwOnFailure(obj);
        }
        String str = this.f4500d;
        this.a = null;
        this.b = 2;
        obj = BuildersKt.withContext(b0Var.b, new h0((String) obj, str, null), this);
        return obj == coroutine_suspended ? coroutine_suspended : obj;
    }
}
