package com.hyprmx.android.sdk.utility;

import android.content.Context;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.VideoCacheManagerImpl$isVideoPlayable$2", f = "VideoCacheManagerImpl.kt", i = {}, l = {87}, m = "invokeSuspend", n = {}, s = {})
public final class d1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    public int a;
    public final /* synthetic */ e1 b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d1(e1 e1Var, String str, Continuation<? super d1> continuation) {
        super(2, continuation);
        this.b = e1Var;
        this.c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new d1(this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
        return ((d1) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        boolean z = true;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            e1 e1Var = this.b;
            com.hyprmx.android.sdk.preload.p pVar = e1Var.f4719d;
            String str = this.c;
            Context context = e1Var.a;
            this.a = 1;
            obj = pVar.a(context, str, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        String mediaFilePath = (String) obj;
        this.b.getClass();
        Intrinsics.checkNotNullParameter(mediaFilePath, "mediaFilePath");
        if (!w0.c(mediaFilePath)) {
            String str2 = "Video NOT playable with asset key: " + this.c;
            HyprMXLog.e(str2);
            this.b.b.a(s.HYPRErrorTypeVastCachingAssetError, str2, 4);
            z = false;
        }
        return Boxing.boxBoolean(z);
    }
}
