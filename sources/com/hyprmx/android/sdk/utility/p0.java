package com.hyprmx.android.sdk.utility;

import android.content.Context;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class p0 implements n0, m {
    public final /* synthetic */ m a;

    public /* synthetic */ p0() {
        this(new f());
    }

    public p0(m failureToastHandler) {
        Intrinsics.checkNotNullParameter(failureToastHandler, "failureToastHandler");
        this.a = failureToastHandler;
    }

    @Override // com.hyprmx.android.sdk.utility.n0
    public final Object a(Context context, String str, Continuation continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new o0(context, this, str, null), continuation);
    }

    @Override // com.hyprmx.android.sdk.utility.m
    public final Object a(Context context, Continuation<? super kotlin.v> continuation) {
        return this.a.a(context, continuation);
    }
}
