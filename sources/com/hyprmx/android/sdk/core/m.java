package com.hyprmx.android.sdk.core;

import android.content.SharedPreferences;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController$deleteCacheIfVastCacheVersionUpdated$2", f = "HyprMXController.kt", i = {0}, l = {427}, m = "invokeSuspend", n = {"sharedPreferences"}, s = {"L$0"})
public final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public SharedPreferences a;
    public int b;
    public final /* synthetic */ j c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(j jVar, Continuation<? super m> continuation) {
        super(2, continuation);
        this.c = jVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new m(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((m) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SharedPreferences sharedPreferences;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharedPreferences sharedPreferences2 = this.c.a.z().getSharedPreferences("hyprmx_prefs_internal", 0);
            int i2 = sharedPreferences2.getInt("vast_cache_version", 0);
            HyprMXLog.d("Saved HYPRMX_VAST_CACHE_VERSION: " + i2);
            HyprMXLog.d("Current HYPRMX_VAST_CACHE_VERSION: 3");
            if (i2 != 3) {
                com.hyprmx.android.sdk.preload.n nVarA = this.c.a.a();
                this.a = sharedPreferences2;
                this.b = 1;
                if (nVarA.b(this) == coroutine_suspended) {
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
        sharedPreferences.edit().putInt("vast_cache_version", 3).apply();
        return kotlin.v.a;
    }
}
