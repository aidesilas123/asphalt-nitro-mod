package com.hyprmx.android.sdk.footer;

import android.graphics.Bitmap;
import com.hyprmx.android.sdk.footer.FooterContract;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.f0;
import com.hyprmx.android.sdk.utility.m0;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.footer.FooterPresenter$4$1", f = "FooterPresenter.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
public final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
    public int a;
    public final /* synthetic */ d b;
    public final /* synthetic */ e c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(d dVar, e eVar, Continuation<? super c> continuation) {
        super(2, continuation);
        this.b = dVar;
        this.c = eVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new c(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
        return ((c) create(coroutineScope, continuation)).invokeSuspend(v.a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            f0 f0Var = this.b.f4535d;
            String str = this.c.a;
            this.a = 1;
            obj = f0Var.a(str, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        m0 m0Var = (m0) obj;
        if (this.b.c.isContextInvalid()) {
            return v.a;
        }
        if (m0Var instanceof m0.b) {
            FooterContract.View view = this.b.c;
            Bitmap bitmap = (Bitmap) ((m0.b) m0Var).a;
            e eVar = this.c;
            view.setIcon2(bitmap, eVar.c, eVar.b, eVar.f4537d);
        } else {
            HyprMXLog.e("Unable to load footer icon2.");
        }
        return v.a;
    }
}
