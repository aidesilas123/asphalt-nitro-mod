package com.hyprmx.android.sdk.preload;

import com.hyprmx.android.sdk.utility.HyprMXLog;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$removeAssetFromDiskByAssetKey$2", f = "CacheController.kt", i = {}, l = {429}, m = "invokeSuspend", n = {}, s = {})
public final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ c c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(c cVar, String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
        this.c = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new j(this.c, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((j) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            HyprMXLog.d("Removing asset from disk with key: " + this.b);
            p pVar = this.c.c;
            String str = this.b;
            this.a = 1;
            obj = pVar.b(str, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (!((Boolean) obj).booleanValue()) {
            String str2 = "There was an error removing the asset with assetKey: " + this.b;
            HyprMXLog.e(str2);
            this.c.a.a(com.hyprmx.android.sdk.utility.s.HYPRErrorTypeCacheJournal, str2, 4);
        }
        return kotlin.v.a;
    }
}
