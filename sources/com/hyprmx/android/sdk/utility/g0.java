package com.hyprmx.android.sdk.utility;

import android.content.Context;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class g0 implements com.hyprmx.android.sdk.utility.a {
    public final String a;
    public final com.hyprmx.android.sdk.analytics.b b;

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.InternalStorageCacheSerializer$deleteCacheJournal$2", f = "InternalStorageCacheSerializer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public final /* synthetic */ Context a;
        public final /* synthetic */ g0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(Context context, g0 g0Var, Continuation<? super a> continuation) {
            super(2, continuation);
            this.a = context;
            this.b = g0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new a(this.a, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return Boxing.boxBoolean(new File(this.a.getFilesDir(), this.b.a).delete());
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.InternalStorageCacheSerializer$loadCacheJournal$2", f = "InternalStorageCacheSerializer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super JSONObject>, Object> {
        public final /* synthetic */ Context a;
        public final /* synthetic */ g0 b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context, g0 g0Var, Continuation<? super b> continuation) {
            super(2, continuation);
            this.a = context;
            this.b = g0Var;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new b(this.a, this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super JSONObject> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v6, types: [T, org.json.JSONObject] */
        /* JADX WARN: Type inference failed for: r1v5, types: [T, org.json.JSONObject] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            try {
                kotlin.jvm.internal.l0 l0Var = new kotlin.jvm.internal.l0();
                l0Var.a = new JSONObject();
                File file = new File(this.a.getFilesDir(), this.b.a);
                if (file.exists()) {
                    Reader inputStreamReader = new InputStreamReader(new FileInputStream(file), Charsets.b);
                    BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
                    try {
                        l0Var.a = new JSONObject(TextStreamsKt.readText(bufferedReader));
                        kotlin.v vVar = kotlin.v.a;
                        CloseableKt.closeFinally(bufferedReader, null);
                    } finally {
                    }
                }
                return (JSONObject) l0Var.a;
            } catch (Exception unused) {
                String str = "Error loading " + this.b.a + " from disk.";
                HyprMXLog.e(str);
                this.b.b.a(s.HYPRErrorTypeFailureToLoad, str, 2);
                return new JSONObject();
            }
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.utility.InternalStorageCacheSerializer$writeCacheJournalToStorage$2", f = "InternalStorageCacheSerializer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        public final /* synthetic */ Context a;
        public final /* synthetic */ g0 b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Context context, g0 g0Var, String str, Continuation<? super c> continuation) {
            super(2, continuation);
            this.a = context;
            this.b = g0Var;
            this.c = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new c(this.a, this.b, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            boolean z = false;
            try {
                FileOutputStream fileOutputStreamOpenFileOutput = this.a.openFileOutput(this.b.a, 0);
                try {
                    byte[] bytes = this.c.getBytes(Charsets.b);
                    Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                    fileOutputStreamOpenFileOutput.write(bytes);
                    kotlin.v vVar = kotlin.v.a;
                    CloseableKt.closeFinally(fileOutputStreamOpenFileOutput, null);
                    z = true;
                } finally {
                }
            } catch (Exception unused) {
                HyprMXLog.d("Exception writing cache journal to disk");
            }
            return Boxing.boxBoolean(z);
        }
    }

    public g0(String _journalName, com.hyprmx.android.sdk.analytics.b clientErrorController) {
        Intrinsics.checkNotNullParameter(_journalName, "_journalName");
        Intrinsics.checkNotNullParameter(clientErrorController, "clientErrorController");
        this.a = _journalName;
        this.b = clientErrorController;
    }

    @Override // com.hyprmx.android.sdk.utility.a
    public final Object a(Context context, String str, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new c(context, this, str, null), continuation);
    }

    @Override // com.hyprmx.android.sdk.utility.a
    public final Object a(Context context, Continuation<? super Boolean> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new a(context, this, null), continuation);
    }

    @Override // com.hyprmx.android.sdk.utility.a
    public final Object b(Context context, Continuation<? super JSONObject> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new b(context, this, null), continuation);
    }
}
