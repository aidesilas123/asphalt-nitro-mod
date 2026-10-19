package com.hyprmx.android.sdk.analytics;

import android.content.Context;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.o;
import com.hyprmx.android.sdk.utility.p;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.analytics.ParameterControllerImpl$initGaid$2", f = "ParameterController.kt", i = {}, l = {101}, m = "invokeSuspend", n = {}, s = {})
public final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
    public int a;
    public final /* synthetic */ k b;
    public final /* synthetic */ Context c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(k kVar, Context context, Continuation<? super j> continuation) {
        super(2, continuation);
        this.b = kVar;
        this.c = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new j(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
        return ((j) create(coroutineScope, continuation)).invokeSuspend(v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            o oVar = this.b.f4465f;
            Context context = this.c;
            this.a = 1;
            obj = oVar.a(context, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        p pVar = (p) obj;
        if (pVar instanceof p.b) {
            p.b bVar = (p.b) pVar;
            this.b.f4466g = bVar.a;
            this.b.h = bVar.b;
        } else if (pVar instanceof p.a) {
            HyprMXLog.d("gaid fetched failed");
        }
        return v.a;
    }
}
