package com.hyprmx.android.sdk.activity;

import com.json.o2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.activity.HyprMXBaseViewController$setOrientationProperties$2", f = "HyprMXBaseViewController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class s extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public final /* synthetic */ String a;
    public final /* synthetic */ HyprMXBaseViewController b;
    public final /* synthetic */ boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(HyprMXBaseViewController hyprMXBaseViewController, String str, Continuation continuation, boolean z) {
        super(2, continuation);
        this.a = str;
        this.b = hyprMXBaseViewController;
        this.c = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new s(this.b, this.a, continuation, this.c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((s) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (Intrinsics.areEqual(this.a, o2.h.D)) {
            this.b.c.a(1);
        } else if (Intrinsics.areEqual(this.a, o2.h.C)) {
            this.b.c.a(6);
        } else if (!this.c) {
            this.b.c.a(com.hyprmx.android.sdk.utility.w0.a(this.b.a));
        } else if (Intrinsics.areEqual(this.a, "none")) {
            this.b.c.a(4);
        }
        return kotlin.v.a;
    }
}
