package com.hyprmx.android.sdk.activity;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$hyprMXBrowserClosed$2", f = "HyprMXBaseViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public final /* synthetic */ HyprMXBaseViewController a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(HyprMXBaseViewController hyprMXBaseViewController, Continuation<? super k> continuation) {
        super(2, continuation);
        this.a = hyprMXBaseViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new k(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.a.m.hyprMXBrowserClosed();
        return kotlin.v.a;
    }
}
