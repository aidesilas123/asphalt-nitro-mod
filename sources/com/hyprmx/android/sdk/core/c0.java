package com.hyprmx.android.sdk.core;

import android.content.SharedPreferences;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper$deleteSharedJSIfSdkVersionUpdated$2", f = "StorageHelper.kt", i = {0}, l = {147}, m = "invokeSuspend", n = {"sharedPreferences"}, s = {"L$0"})
public final class c0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public SharedPreferences a;
    public int b;
    public final /* synthetic */ b0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(b0 b0Var, Continuation<? super c0> continuation) {
        super(2, continuation);
        this.c = b0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new c0(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((c0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SharedPreferences sharedPreferences;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharedPreferences sharedPreferences2 = this.c.a.getSharedPreferences("hyprmx_prefs_internal", 0);
            if (sharedPreferences2.getInt("sdk_build_version", 0) != 403) {
                b0 b0Var = this.c;
                this.a = sharedPreferences2;
                this.b = 1;
                if (b0Var.a(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                sharedPreferences = sharedPreferences2;
            }
            return kotlin.v.a;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        sharedPreferences = this.a;
        ResultKt.throwOnFailure(obj);
        sharedPreferences.edit().putInt("sdk_build_version", 403).apply();
        return kotlin.v.a;
    }
}
