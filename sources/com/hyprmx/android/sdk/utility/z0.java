package com.hyprmx.android.sdk.utility;

import android.content.Context;
import android.os.Build;
import com.gameloft.adsmanager.JavaUtils;
import java.io.File;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.UtilsKt$galleryAddPic$2", f = "Utils.kt", i = {}, l = {JavaUtils.Constants.BANNER_WIDTH_DP, 322}, m = "invokeSuspend", n = {}, s = {})
public final class z0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
    public int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Context c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z0(Context context, String str, Continuation continuation) {
        super(2, continuation);
        this.b = str;
        this.c = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new z0(this.c, this.b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
        return ((z0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            File file = new File(this.b);
            if (!file.exists() || file.length() == 0) {
                HyprMXLog.d("No file found to save.");
                return kotlin.v.a;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                String str = this.b;
                Context context = this.c;
                this.a = 1;
                if (BuildersKt.withContext(Dispatchers.getIO(), new y0(context, str, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                String str2 = this.b;
                Context context2 = this.c;
                this.a = 2;
                if (BuildersKt.withContext(Dispatchers.getIO(), new x0(context2, str2, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i != 1 && i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return kotlin.v.a;
    }
}
