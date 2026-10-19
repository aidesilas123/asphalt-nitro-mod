package io.didomi.drawable;

import app.cash.quickjs.QuickJs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import io.didomi.drawable.C1946y;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: renamed from: io.didomi.sdk.h5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00052\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0005\u001a\u00020\u0004*\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u0004*\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J!\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\t2\u0006\u0010\b\u001a\u00020\u0004H\u0096@ø\u0001\u0000¢\u0006\u0004\b\u0005\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"Lio/didomi/sdk/h5;", "Lio/didomi/sdk/s3;", "<init>", "()V", "", "a", "(Ljava/lang/String;)Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "script", "Lio/didomi/sdk/y;", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "android_release"}, mv = {1, 8, 0})
public final class C1782h5 implements InterfaceC1890s3 {
    private final String a(String str) {
        return "var eval = undefined;'use strict';" + str;
    }

    private final String b(String str) {
        return new Regex("^\"(.+)\"$").f(str, "$1");
    }

    @Override // io.didomi.drawable.InterfaceC1890s3
    public Object a(String str, Continuation<? super C1946y<String>> continuation) throws Throwable {
        String strValueOf;
        SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        if (StringsKt__StringsJVMKt.isBlank(str)) {
            Result.a aVar = Result.a;
            safeContinuation.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a("Script is invalid for evaluation")));
        } else {
            QuickJs quickJsCreate = QuickJs.create();
            Intrinsics.checkNotNullExpressionValue(quickJsCreate, "create()");
            try {
                strValueOf = String.valueOf(quickJsCreate.i(a(str)));
            } catch (Exception e2) {
                e2.printStackTrace();
                C1946y.Companion companion = C1946y.INSTANCE;
                String message = e2.getMessage();
                if (message == null) {
                    message = "Error while running script";
                }
                C1946y c1946yA = companion.a(message);
                Result.a aVar2 = Result.a;
                safeContinuation.resumeWith(Result.m1238constructorimpl(c1946yA));
                strValueOf = null;
            } finally {
                quickJsCreate.close();
            }
            if (strValueOf != null) {
                Result.a aVar3 = Result.a;
                safeContinuation.resumeWith(Result.m1238constructorimpl(C1946y.INSTANCE.a(b(strValueOf))));
            }
        }
        Object objB = safeContinuation.b();
        if (objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objB;
    }
}
