package com.hyprmx.android.sdk.preload;

import android.content.Context;
import java.io.File;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.preload.DiskLruCacheHelperImpl$getFilePathDiskCache$2$1", f = "DiskLruCacheHelperImpl.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class s extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    public final /* synthetic */ q a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(q qVar, Context context, String str, Continuation<? super s> continuation) {
        super(2, continuation);
        this.a = qVar;
        this.b = context;
        this.c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new s(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((s) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        StringBuilder sb = new StringBuilder();
        q qVar = this.a;
        Context context = this.b;
        qVar.getClass();
        Intrinsics.checkNotNullParameter(context, "context");
        String path = context.getFilesDir().getPath();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(path);
        String str = File.separator;
        sb2.append(str);
        sb2.append("hyprmx_cache");
        sb.append(new File(sb2.toString()));
        sb.append(str);
        sb.append(this.c);
        sb.append(".0");
        return sb.toString();
    }
}
