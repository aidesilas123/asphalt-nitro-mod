package com.hyprmx.android.sdk.om;

import android.content.Context;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.io.File;
import java.io.IOException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.om.DefaultOpenMeasurementController$putFileToDisk$2", f = "OpenMeasurementController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
public final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
    public final /* synthetic */ Context a;
    public final /* synthetic */ String b;
    public final /* synthetic */ String c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(Context context, String str, String str2, Continuation<? super e> continuation) {
        super(2, continuation);
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> continuation) {
        return new e(this.a, this.b, this.c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
        return ((e) create(coroutineScope, continuation)).invokeSuspend(v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws IOException {
        IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        File file = new File(this.a.getCacheDir().getAbsolutePath() + "/hyprmx_omsdk/");
        if (file.exists()) {
            HyprMXLog.d("Cleaning cache directory successful = " + FilesKt__UtilsKt.deleteRecursively(file));
        }
        file.mkdir();
        FilesKt__FileReadWriteKt.writeText$default(new File(file, this.b), this.c, null, 2, null);
        return v.a;
    }
}
