package com.hyprmx.android.sdk.network;

import android.content.Context;
import android.os.Build;
import android.webkit.WebSettings;
import com.hyprmx.android.sdk.analytics.c;
import com.hyprmx.android.sdk.network.m;
import com.mbridge.msdk.foundation.download.Command;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.util.List;
import java.util.Map;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.j0;
import kotlin.text.Charsets;
import kotlin.v;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: loaded from: classes2.dex */
public final class d implements k {
    public final Context a;

    @DebugMetadata(c = "com.hyprmx.android.sdk.network.HttpNetworkController$getRequest$2", f = "HttpNetworkController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<InputStream, Continuation<? super String>, Object> {
        public /* synthetic */ Object a;

        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            a aVar = new a(continuation);
            aVar.a = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(InputStream inputStream, Continuation<? super String> continuation) {
            return ((a) create(inputStream, continuation)).invokeSuspend(v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            return com.hyprmx.android.sdk.extensions.a.a((InputStream) this.a);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @DebugMetadata(c = "com.hyprmx.android.sdk.network.HttpNetworkController$request$2", f = "HttpNetworkController.kt", i = {0, 0, 0}, l = {76}, m = "invokeSuspend", n = {"errorResponseCode", "$this$invokeSuspend_u24lambda_u242", "contentLength"}, s = {"L$0", "L$1", "J$0"})
    public static final class b<T> extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super m<? extends T>>, Object> {
        public j0 a;
        public HttpURLConnection b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public long f4575d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f4576e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f4577f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ com.hyprmx.android.sdk.network.a f4578g;
        public final /* synthetic */ String h;
        public final /* synthetic */ d i;
        public final /* synthetic */ String j;
        public final /* synthetic */ Function2<InputStream, Continuation<? super T>, Object> k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(String str, com.hyprmx.android.sdk.network.a aVar, String str2, d dVar, String str3, Function2<? super InputStream, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super b> continuation) {
            super(2, continuation);
            this.f4577f = str;
            this.f4578g = aVar;
            this.h = str2;
            this.i = dVar;
            this.j = str3;
            this.k = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new b(this.f4577f, this.f4578g, this.h, this.i, this.j, this.k, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Object obj) {
            return ((b) create(coroutineScope, (Continuation) obj)).invokeSuspend(v.a);
        }

        /* JADX WARN: Not initialized variable reg: 4, insn: 0x014f: IGET (r1 I:int) = (r4 I:kotlin.jvm.internal.j0) kotlin.jvm.internal.j0.a int, block:B:54:0x014d */
        /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.jvm.internal.j0] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws Throwable {
            ?? r4;
            j0 j0Var;
            HttpURLConnection httpURLConnection;
            Throwable th;
            Object obj2;
            int i;
            long j;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.f4576e;
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    j0Var = new j0();
                    URLConnection uRLConnectionOpenConnection = new URL(this.f4577f).openConnection();
                    Intrinsics.checkNotNull(uRLConnectionOpenConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) uRLConnectionOpenConnection;
                    com.hyprmx.android.sdk.network.a aVar = this.f4578g;
                    String str = this.h;
                    d dVar = this.i;
                    String str2 = this.j;
                    Function2<InputStream, Continuation<? super T>, Object> function2 = this.k;
                    try {
                        httpURLConnection2.setInstanceFollowRedirects(aVar.a);
                        httpURLConnection2.setReadTimeout(aVar.b);
                        httpURLConnection2.setConnectTimeout(aVar.c);
                        httpURLConnection2.setRequestMethod(str);
                        if (Intrinsics.areEqual(str, "PATCH")) {
                            httpURLConnection2.setRequestMethod("POST");
                            httpURLConnection2.setRequestProperty("X-HTTP-Method-Override", "PATCH");
                        }
                        httpURLConnection2.setRequestProperty(Command.HTTP_HEADER_USER_AGENT, WebSettings.getDefaultUserAgent(dVar.a));
                        httpURLConnection2.setRequestProperty("Accept", "*/*");
                        httpURLConnection2.setRequestProperty("Accept-Language", "en-us");
                        for (Map.Entry<String, String> entry : aVar.f4574d.entrySet()) {
                            httpURLConnection2.setRequestProperty(entry.getKey(), entry.getValue());
                        }
                        if ((Intrinsics.areEqual(str, "POST") || Intrinsics.areEqual(str, "PUT") || Intrinsics.areEqual(str, "PATCH")) && str2 != null) {
                            Charset charset = Charsets.b;
                            byte[] bytes = str2.getBytes(charset);
                            Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                            httpURLConnection2.setFixedLengthStreamingMode(bytes.length);
                            httpURLConnection2.setDoOutput(true);
                            OutputStream outputStream = httpURLConnection2.getOutputStream();
                            Intrinsics.checkNotNullExpressionValue(outputStream, "outputStream");
                            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, charset);
                            try {
                                outputStreamWriter.write(str2);
                                v vVar = v.a;
                                CloseableKt.closeFinally(outputStreamWriter, null);
                            } finally {
                            }
                        }
                        long contentLengthLong = Build.VERSION.SDK_INT >= 24 ? httpURLConnection2.getContentLengthLong() : httpURLConnection2.getContentLength();
                        int responseCode = httpURLConnection2.getResponseCode();
                        InputStream inputStream = httpURLConnection2.getInputStream();
                        Intrinsics.checkNotNullExpressionValue(inputStream, "inputStream");
                        this.a = j0Var;
                        this.b = httpURLConnection2;
                        this.c = responseCode;
                        this.f4575d = contentLengthLong;
                        this.f4576e = 1;
                        Object objInvoke = function2.invoke(inputStream, this);
                        if (objInvoke == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        httpURLConnection = httpURLConnection2;
                        obj2 = objInvoke;
                        i = responseCode;
                        j = contentLengthLong;
                    } catch (Throwable th2) {
                        httpURLConnection = httpURLConnection2;
                        th = th2;
                        j0Var.a = httpURLConnection.getResponseCode();
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } else {
                    if (i2 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    long j2 = this.f4575d;
                    int i3 = this.c;
                    httpURLConnection = this.b;
                    j0Var = this.a;
                    try {
                        ResultKt.throwOnFailure(obj);
                        obj2 = obj;
                        j = j2;
                        i = i3;
                    } catch (Throwable th3) {
                        th = th3;
                        j0Var.a = httpURLConnection.getResponseCode();
                        httpURLConnection.disconnect();
                        throw th;
                    }
                }
                Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                Intrinsics.checkNotNullExpressionValue(headerFields, "headerFields");
                m.b bVar = new m.b(i, obj2, headerFields, j);
                j0Var.a = httpURLConnection.getResponseCode();
                httpURLConnection.disconnect();
                return bVar;
            } catch (Exception e2) {
                return new m.a(e2.toString(), r4.a);
            }
        }
    }

    public d(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a = context;
    }

    @Override // com.hyprmx.android.sdk.network.k
    public final Object a(String str, com.hyprmx.android.sdk.network.a aVar, Continuation<? super m<String>> continuation) {
        return a(str, null, "GET", aVar, new a(null), continuation);
    }

    @Override // com.hyprmx.android.sdk.network.k
    public final Object a(String str, String str2, com.hyprmx.android.sdk.network.a aVar, c.a aVar2) {
        return a(str, str2, "POST", aVar, new e(null), aVar2);
    }

    @Override // com.hyprmx.android.sdk.network.k
    public final <T> Object a(String str, String str2, String str3, com.hyprmx.android.sdk.network.a aVar, Function2<? super InputStream, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super m<? extends T>> continuation) {
        return BuildersKt.withContext(Dispatchers.getIO(), new b(str, aVar, str3, this, str2, function2, null), continuation);
    }
}
