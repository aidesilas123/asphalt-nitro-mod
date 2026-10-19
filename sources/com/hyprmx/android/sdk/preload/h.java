package com.hyprmx.android.sdk.preload;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$removeAdFromAsset$2", f = "CacheController.kt", i = {}, l = {166}, m = "invokeSuspend", n = {}, s = {})
public final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ c b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(c cVar, String str, Continuation<? super h> continuation) {
        super(2, continuation);
        this.b = cVar;
        this.c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new h(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.api.data.c cVarF = this.b.f(this.c);
            if (cVarF == null) {
                return null;
            }
            String str = this.c;
            c cVar = this.b;
            cVarF.f4477f.remove(str);
            if (cVarF.f4477f.isEmpty()) {
                this.a = 1;
                Object objWithContext = BuildersKt.withContext(cVar.h.getCoroutineContext(), new i(cVarF, cVar, null), this);
                if (objWithContext != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    objWithContext = kotlin.v.a;
                }
                if (objWithContext == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return kotlin.v.a;
    }
}
