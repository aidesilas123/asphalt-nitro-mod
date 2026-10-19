package com.hyprmx.android.sdk.preload;

import com.hyprmx.android.sdk.utility.w0;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$removeAssetFromDiskAndCache$2", f = "CacheController.kt", i = {}, l = {183, 185}, m = "invokeSuspend", n = {}, s = {})
public final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ c b;
    public final /* synthetic */ com.hyprmx.android.sdk.api.data.c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(com.hyprmx.android.sdk.api.data.c cVar, c cVar2, Continuation continuation) {
        super(2, continuation);
        this.b = cVar2;
        this.c = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new i(this.c, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c cVar = this.b;
            String str = this.c.a;
            this.a = 1;
            if (cVar.a(str, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                return kotlin.v.a;
            }
            ResultKt.throwOnFailure(obj);
        }
        this.b.n.remove(w0.a(this.c.a));
        c cVar2 = this.b;
        this.a = 2;
        if (cVar2.e(this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return kotlin.v.a;
    }
}
