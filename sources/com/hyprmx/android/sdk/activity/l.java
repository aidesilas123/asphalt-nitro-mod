package com.hyprmx.android.sdk.activity;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$notifyAdResultListener$1", f = "HyprMXBaseViewController.kt", i = {}, l = {260, 262}, m = "invokeSuspend", n = {}, s = {})
public final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ HyprMXBaseViewController b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(HyprMXBaseViewController hyprMXBaseViewController, Continuation<? super l> continuation) {
        super(2, continuation);
        this.b = hyprMXBaseViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new l(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HyprMXBaseViewController hyprMXBaseViewController = this.b;
            if (!hyprMXBaseViewController.y) {
                if (hyprMXBaseViewController.n.P()) {
                    com.hyprmx.android.sdk.presentation.a aVar = this.b.f4439d;
                    this.a = 1;
                    if (aVar.b() == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            }
            return kotlin.v.a;
        }
        if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.b.y = true;
            return kotlin.v.a;
        }
        ResultKt.throwOnFailure(obj);
        HyprMXBaseViewController hyprMXBaseViewController2 = this.b;
        com.hyprmx.android.sdk.presentation.a aVar2 = hyprMXBaseViewController2.f4439d;
        boolean zX = hyprMXBaseViewController2.n.x();
        this.a = 2;
        if (aVar2.a(zX) == coroutine_suspended) {
            return coroutine_suspended;
        }
        this.b.y = true;
        return kotlin.v.a;
    }
}
