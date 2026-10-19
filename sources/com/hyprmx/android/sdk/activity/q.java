package com.hyprmx.android.sdk.activity;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$reportPowerState$2", f = "HyprMXBaseViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class q extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public final /* synthetic */ HyprMXBaseViewController a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(HyprMXBaseViewController hyprMXBaseViewController, Continuation<? super q> continuation) {
        super(2, continuation);
        this.a = hyprMXBaseViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new q(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((q) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        HyprMXLog.d("Reporting power state to webview");
        HyprMXBaseViewController hyprMXBaseViewController = this.a;
        hyprMXBaseViewController.f4440e.a(hyprMXBaseViewController.t);
        return kotlin.v.a;
    }
}
