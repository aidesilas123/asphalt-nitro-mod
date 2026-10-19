package com.hyprmx.android.sdk.core;

import android.content.SharedPreferences;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.core.HyprMXController$deleteCacheIfDistIdOrUserIdChanged$2", f = "HyprMXController.kt", i = {0}, l = {401}, m = "invokeSuspend", n = {"sharedPreferences"}, s = {"L$0"})
public final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public SharedPreferences a;
    public int b;
    public final /* synthetic */ j c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4516d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f4517e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(j jVar, String str, String str2, Continuation<? super l> continuation) {
        super(2, continuation);
        this.c = jVar;
        this.f4516d = str;
        this.f4517e = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new l(this.c, this.f4516d, this.f4517e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SharedPreferences sharedPreferences;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SharedPreferences sharedPreferences2 = this.c.a.z().getSharedPreferences("hyprmx_prefs_internal", 0);
            String string = sharedPreferences2.getString("distributor_id", null);
            String string2 = sharedPreferences2.getString("user_id", null);
            if (!Intrinsics.areEqual(this.f4516d, string) || !Intrinsics.areEqual(this.f4517e, string2)) {
                HyprMXLog.d("Clearing cache because distributor id or user id was changed.");
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
        sharedPreferences.edit().putString("distributor_id", this.f4516d).putString("user_id", this.f4517e).apply();
        return kotlin.v.a;
    }
}
