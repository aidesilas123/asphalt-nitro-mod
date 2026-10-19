package com.hyprmx.android.sdk.activity;

import com.facebook.internal.FacebookRequestErrorClassification;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXWebTrafficViewController$insertNewWebView$2", f = "HyprMXWebTrafficViewController.kt", i = {0}, l = {FacebookRequestErrorClassification.EC_TOO_MANY_USER_ACTION_CALLS}, m = "invokeSuspend", n = {"$this$invokeSuspend_u24lambda_u240"}, s = {"L$1"})
public final class s0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public com.hyprmx.android.sdk.webview.f a;
    public int b;
    public final /* synthetic */ com.hyprmx.android.sdk.webview.f c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s0(com.hyprmx.android.sdk.webview.f fVar, Continuation<? super s0> continuation) {
        super(2, continuation);
        this.c = fVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new s0(this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((s0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        com.hyprmx.android.sdk.webview.f fVar;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.f fVar2 = this.c;
            HyprMXLog.d("Delaying destroying webview for 1s");
            this.a = fVar2;
            this.b = 1;
            if (DelayKt.delay(1000L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            fVar = fVar2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            fVar = this.a;
            ResultKt.throwOnFailure(obj);
        }
        fVar.a.stopLoading();
        fVar.c();
        return kotlin.v.a;
    }
}
