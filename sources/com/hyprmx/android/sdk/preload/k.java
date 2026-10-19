package com.hyprmx.android.sdk.preload;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.hyprmx.android.sdk.utility.w0;
import java.security.NoSuchAlgorithmException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$retrieveAssetFilePath$2", f = "CacheController.kt", i = {0}, l = {TTAdConstant.DEEPLINK_FALLBACK_CODE, TTAdConstant.DEEPLINK_FALLBACK_TYPE_CODE}, m = "invokeSuspend", n = {"assetKey"}, s = {"L$0"})
public final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    public String a;
    public int b;
    public final /* synthetic */ String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f4642d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f4643e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(String str, c cVar, Context context, Continuation<? super k> continuation) {
        super(2, continuation);
        this.c = str;
        this.f4642d = cVar;
        this.f4643e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new k(this.c, this.f4642d, this.f4643e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws NoSuchAlgorithmException {
        String strA;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.b;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                strA = w0.a(this.c);
                p pVar = this.f4642d.c;
                this.a = strA;
                this.b = 1;
                obj = pVar.c(strA, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return (String) obj;
                }
                strA = this.a;
                ResultKt.throwOnFailure(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                return null;
            }
            p pVar2 = this.f4642d.c;
            Context context = this.f4643e;
            this.a = null;
            this.b = 2;
            obj = pVar2.a(context, strA, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            return (String) obj;
        } catch (Exception unused) {
            return null;
        }
    }
}
