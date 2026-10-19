package com.hyprmx.android.sdk.core;

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
@DebugMetadata(c = "com.hyprmx.android.sdk.core.StorageHelper$getCoreJSFilePath$2", f = "StorageHelper.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class d0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
    public final /* synthetic */ b0 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(b0 b0Var, Continuation<? super d0> continuation) {
        super(2, continuation);
        this.a = b0Var;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new d0(this.a, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
        return ((d0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        String str = this.a.c;
        if (str != null) {
            return str;
        }
        String str2 = this.a.a.getFilesDir().getAbsolutePath() + "/hyprMX_js";
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.a.c = str2 + "/hyprMX_sdk_core.js";
        String str3 = this.a.c;
        if (str3 != null) {
            return str3;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coreJSFilePath");
        return null;
    }
}
