package com.hyprmx.android.sdk.preload;

import android.content.Context;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$writeAdsToDisk$2", f = "CacheController.kt", i = {}, l = {345}, m = "invokeSuspend", n = {}, s = {})
public final class m extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ c b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(c cVar, Continuation<? super m> continuation) {
        super(2, continuation);
        this.b = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new m(this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((m) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws JSONException {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            ConcurrentHashMap concurrentHashMap = this.b.m;
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry entry : concurrentHashMap.entrySet()) {
                jSONObject.put((String) entry.getKey(), ((com.hyprmx.android.sdk.api.data.b) entry.getValue()).d());
            }
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "json.toString()");
            this.b.f4620f.runningOnBackgroundThread();
            c cVar = this.b;
            com.hyprmx.android.sdk.utility.a aVar = cVar.f4618d;
            Context context = cVar.b;
            this.a = 1;
            obj = aVar.a(context, string, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            HyprMXLog.d("Cache Journal saved to file");
        } else {
            HyprMXLog.e("There was an error saving the Ad cache journal");
            this.b.a.a(com.hyprmx.android.sdk.utility.s.HYPRErrorTypeCacheJournal, "There was an error saving the Ad cache journal", 4);
        }
        return kotlin.v.a;
    }
}
