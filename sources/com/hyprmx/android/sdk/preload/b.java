package com.hyprmx.android.sdk.preload;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.CacheController$cleanupUnreferencedAssets$2", f = "CacheController.kt", i = {}, l = {178}, m = "invokeSuspend", n = {}, s = {})
public final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public c a;
    public Iterator b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c f4617d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(c cVar, Continuation<? super b> continuation) {
        super(2, continuation);
        this.f4617d = cVar;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new b(this.f4617d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        c cVar;
        Iterator it;
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.c;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Collection collectionValues = this.f4617d.n.values();
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : collectionValues) {
                if (((com.hyprmx.android.sdk.api.data.c) obj2).f4477f.isEmpty()) {
                    arrayList.add(obj2);
                }
            }
            cVar = this.f4617d;
            it = arrayList.iterator();
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = this.b;
            cVar = this.a;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            com.hyprmx.android.sdk.api.data.c it2 = (com.hyprmx.android.sdk.api.data.c) it.next();
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            this.a = cVar;
            this.b = it;
            this.c = 1;
            Object objWithContext = BuildersKt.withContext(cVar.h.getCoroutineContext(), new i(it2, cVar, null), this);
            if (objWithContext != IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                objWithContext = kotlin.v.a;
            }
            if (objWithContext == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return kotlin.v.a;
    }
}
