package com.hyprmx.android.sdk.activity;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$1$1$1$1", f = "HyprMXVastViewController.kt", i = {}, l = {142}, m = "invokeSuspend", n = {}, s = {})
public final class m0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ HyprMXVastViewController b;
    public final /* synthetic */ com.hyprmx.android.sdk.model.vast.a c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(HyprMXVastViewController hyprMXVastViewController, com.hyprmx.android.sdk.model.vast.a aVar, Continuation<? super m0> continuation) {
        super(2, continuation);
        this.b = hyprMXVastViewController;
        this.c = aVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new m0(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((m0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HyprMXVastViewController hyprMXVastViewController = this.b;
            com.hyprmx.android.sdk.tracking.c cVar = hyprMXVastViewController.C;
            com.hyprmx.android.sdk.vast.b bVar = new com.hyprmx.android.sdk.vast.b(this.c, hyprMXVastViewController.D);
            this.a = 1;
            if (cVar.a(bVar, this) == coroutine_suspended) {
                return coroutine_suspended;
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
