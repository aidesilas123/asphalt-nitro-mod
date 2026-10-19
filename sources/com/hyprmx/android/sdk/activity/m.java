package com.hyprmx.android.sdk.activity;

import android.content.Context;
import android.content.Intent;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$onActivityResult$1", f = "HyprMXBaseViewController.kt", i = {}, l = {328}, m = "invokeSuspend", n = {}, s = {})
public final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ HyprMXBaseViewController b;
    public final /* synthetic */ int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4457d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Intent f4458e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(HyprMXBaseViewController hyprMXBaseViewController, int i, int i2, Intent intent, Continuation<? super m> continuation) {
        super(2, continuation);
        this.b = hyprMXBaseViewController;
        this.c = i;
        this.f4457d = i2;
        this.f4458e = intent;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new m(this.b, this.c, this.f4457d, this.f4458e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((m) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HyprMXBaseViewController hyprMXBaseViewController = this.b;
            Context applicationContext = hyprMXBaseViewController.a.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "activity.applicationContext");
            int i2 = this.c;
            int i3 = this.f4457d;
            Intent intent = this.f4458e;
            HyprMXBaseViewController hyprMXBaseViewController2 = this.b;
            this.a = 1;
            if (hyprMXBaseViewController.p.a(applicationContext, i2, i3, intent, hyprMXBaseViewController2, this) == coroutine_suspended) {
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
