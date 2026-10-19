package com.hyprmx.android.sdk.utility;

import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.webkit.URLUtil;
import androidx.core.content.ContextCompat;
import com.hyprmx.android.sdk.utility.m0;
import java.text.SimpleDateFormat;
import java.util.Date;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes2.dex */
@DebugMetadata(c = "com.hyprmx.android.sdk.utility.StorePictureManagerImpl$storePicture$2", f = "StorePictureManagerImpl.kt", i = {}, l = {42, 48}, m = "invokeSuspend", n = {}, s = {})
public final class o0 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super m0<? extends String>>, Object> {
    public int a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ p0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f4728d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(Context context, p0 p0Var, String str, Continuation<? super o0> continuation) {
        super(2, continuation);
        this.b = context;
        this.c = p0Var;
        this.f4728d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
        return new o0(this.b, this.c, this.f4728d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super m0<? extends String>> continuation) {
        return ((o0) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
                return new m0.a("Failed to download.  No external storage permission", 3, null);
            }
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            return new m0.a("Picture URI is invalid", 0, null);
        }
        ResultKt.throwOnFailure(obj);
        if (Build.VERSION.SDK_INT < 29 && ContextCompat.checkSelfPermission(this.b, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            p0 p0Var = this.c;
            Context context = this.b;
            this.a = 1;
            if (p0Var.a.a(context, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return new m0.a("Failed to download.  No external storage permission", 3, null);
        }
        String str = this.f4728d;
        Intrinsics.checkNotNullParameter(str, "<this>");
        if (!URLUtil.isValidUrl(str) && !URLUtil.isFileUrl(this.f4728d)) {
            HyprMXLog.e("Picture URI is invalid");
            p0 p0Var2 = this.c;
            Context context2 = this.b;
            this.a = 2;
            if (p0Var2.a.a(context2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return new m0.a("Picture URI is invalid", 0, null);
        }
        try {
            String strGuessFileName = URLUtil.guessFileName(this.f4728d, null, null);
            Intrinsics.checkNotNullExpressionValue(strGuessFileName, "guessFileName(\n        u…ull,\n        null\n      )");
            try {
                strGuessFileName = StringsKt__StringsKt.substringBeforeLast$default(strGuessFileName, '.', (String) null, 2, (Object) null) + '-' + new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date()) + '.' + StringsKt__StringsKt.substringAfterLast$default(strGuessFileName, '.', (String) null, 2, (Object) null);
            } catch (Exception unused) {
            }
            Uri uri = Uri.parse(this.f4728d);
            Intrinsics.checkNotNullExpressionValue(uri, "parse(this)");
            DownloadManager.Request request = new DownloadManager.Request(uri);
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, strGuessFileName);
            request.allowScanningByMediaScanner();
            request.setMimeType("image/jpeg");
            request.setNotificationVisibility(3);
            request.setTitle(strGuessFileName);
            Object systemService = this.b.getSystemService("download");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.DownloadManager");
            ((DownloadManager) systemService).enqueue(request);
            return new m0.b("");
        } catch (Exception e2) {
            HyprMXLog.e("Error making request to image url: " + e2.getMessage());
            return new m0.a("Picture failed to download", 3, null);
        }
    }
}
