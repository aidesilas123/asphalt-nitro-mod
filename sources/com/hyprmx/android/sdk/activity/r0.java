package com.hyprmx.android.sdk.activity;

import com.unity3d.ads.adplayer.AndroidWebViewClient;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXVastViewController$tryLoadingThankYourUrl$1$1", f = "HyprMXVastViewController.kt", i = {0}, l = {773}, m = "invokeSuspend", n = {"$this$launch"}, s = {"L$0"})
public final class r0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public /* synthetic */ Object b;
    public final /* synthetic */ HyprMXVastViewController c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r0(HyprMXVastViewController hyprMXVastViewController, Continuation<? super r0> continuation) {
        super(2, continuation);
        this.c = hyprMXVastViewController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        r0 r0Var = new r0(this.c, continuation);
        r0Var.b = obj;
        return r0Var;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((r0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope2 = (CoroutineScope) this.b;
            this.b = coroutineScope2;
            this.a = 1;
            if (DelayKt.delay(8000L, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            coroutineScope = coroutineScope2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            coroutineScope = (CoroutineScope) this.b;
            ResultKt.throwOnFailure(obj);
        }
        if (CoroutineScopeKt.isActive(coroutineScope) && this.c.t.getProgress() != 100) {
            this.c.B.a(com.hyprmx.android.sdk.utility.s.HYPRErrorExitingAd, "Error loading the thank you page for vast.", 2);
            HyprMXVastViewController hyprMXVastViewController = this.c;
            hyprMXVastViewController.h.runningOnMainThread();
            if (!hyprMXVastViewController.a.isFinishing()) {
                hyprMXVastViewController.t.a(AndroidWebViewClient.BLANK_PAGE, (String) null);
                if (hyprMXVastViewController.E != null && hyprMXVastViewController.g0().isPlaying()) {
                    hyprMXVastViewController.g0().stopPlayback();
                }
                hyprMXVastViewController.a(hyprMXVastViewController.a, new x(hyprMXVastViewController));
            }
        }
        return kotlin.v.a;
    }
}
