package com.hyprmx.android.sdk.network;

import com.hyprmx.android.sdk.annotation.RetainMethodSignature;
import com.hyprmx.android.sdk.network.m;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class f implements l {
    public final k a;
    public final com.hyprmx.android.sdk.core.js.a b;
    public final CoroutineScope c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CoroutineDispatcher f4579d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f4580e;

    @DebugMetadata(c = "com.hyprmx.android.sdk.network.JSNetworkController$request$1", f = "JSNetworkController.kt", i = {}, l = {34}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super v>, Object> {
        public int a;
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ String f4581d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ f f4582e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ String f4583f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final /* synthetic */ String f4584g;
        public final /* synthetic */ String h;

        /* JADX INFO: renamed from: com.hyprmx.android.sdk.network.f$a$a, reason: collision with other inner class name */
        @DebugMetadata(c = "com.hyprmx.android.sdk.network.JSNetworkController$request$1$response$1", f = "JSNetworkController.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        public static final class C0292a extends SuspendLambda implements Function2<InputStream, Continuation<? super String>, Object> {
            public /* synthetic */ Object a;

            public C0292a(Continuation<? super C0292a> continuation) {
                super(2, continuation);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<v> create(Object obj, Continuation<?> continuation) {
                C0292a c0292a = new C0292a(continuation);
                c0292a.a = obj;
                return c0292a;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(InputStream inputStream, Continuation<? super String> continuation) {
                return ((C0292a) create(inputStream, continuation)).invokeSuspend(v.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws IOException {
                IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                InputStream inputStream = (InputStream) this.a;
                try {
                    String strA = com.hyprmx.android.sdk.extensions.a.a(inputStream);
                    CloseableKt.closeFinally(inputStream, null);
                    return strA;
                } finally {
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, String str2, String str3, f fVar, String str4, String str5, String str6, Continuation<? super a> continuation) {
            super(2, continuation);
            this.b = str;
            this.c = str2;
            this.f4581d = str3;
            this.f4582e = fVar;
            this.f4583f = str4;
            this.f4584g = str5;
            this.h = str6;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<v> create(Object obj, Continuation<?> continuation) {
            return new a(this.b, this.c, this.f4581d, this.f4582e, this.f4583f, this.f4584g, this.h, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(v.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) throws JSONException {
            Object objA;
            m mVar;
            com.hyprmx.android.sdk.core.js.a aVar;
            StringBuilder sb;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.a;
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    HyprMXLog.d("Network request " + this.b + " to " + this.c + " with method " + this.f4581d);
                    k kVar = this.f4582e.a;
                    String str = this.c;
                    String str2 = this.f4583f;
                    String str3 = this.f4581d;
                    com.hyprmx.android.sdk.network.a aVarA = g.a(this.f4584g);
                    C0292a c0292a = new C0292a(null);
                    this.a = 1;
                    objA = kVar.a(str, str2, str3, aVarA, c0292a, this);
                    if (objA == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    objA = obj;
                }
                mVar = (m) objA;
            } catch (IllegalArgumentException e2) {
                HyprMXLog.e("Error making request to url: " + e2.getMessage());
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("code", -1);
                jSONObject.put("error", "Exception making network request");
                this.f4582e.b.c(this.h + "('" + this.b + "', " + jSONObject + ");");
            }
            if (!(mVar instanceof m.b)) {
                if (mVar instanceof m.a) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("code", mVar.a());
                    jSONObject2.put("error", ((m.a) mVar).b);
                    aVar = this.f4582e.b;
                    sb = new StringBuilder();
                    sb.append(this.h);
                    sb.append("('");
                    sb.append(this.b);
                    sb.append("', ");
                    sb.append(jSONObject2);
                    sb.append(");");
                }
                this.f4582e.f4580e.put(this.b, null);
                return v.a;
            }
            HyprMXLog.d("Network response returned with " + ((String) ((m.b) mVar).b));
            JSONObject jSONObject3 = new JSONObject();
            g.a(jSONObject3, ((m.b) mVar).c);
            jSONObject3.put("code", mVar.a());
            jSONObject3.put("body", ((m.b) mVar).b);
            aVar = this.f4582e.b;
            sb = new StringBuilder();
            sb.append(this.h);
            sb.append("('");
            sb.append(this.b);
            sb.append("', ");
            sb.append(jSONObject3);
            sb.append(");");
            aVar.c(sb.toString());
            this.f4582e.f4580e.put(this.b, null);
            return v.a;
        }
    }

    public /* synthetic */ f(k kVar, com.hyprmx.android.sdk.core.js.a aVar, CoroutineScope coroutineScope) {
        this(kVar, aVar, coroutineScope, Dispatchers.getIO());
    }

    public f(k networkController, com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope coroutineScope, CoroutineDispatcher ioDispatcher) {
        Intrinsics.checkNotNullParameter(networkController, "networkController");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        this.a = networkController;
        this.b = jsEngine;
        this.c = coroutineScope;
        this.f4579d = ioDispatcher;
        this.f4580e = new LinkedHashMap();
        jsEngine.a("HYPRNativeNetworkController", this);
    }

    @RetainMethodSignature
    public void abortRequest(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        Job job = (Job) this.f4580e.get(id);
        if (job != null) {
            Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        }
        this.f4580e.put(id, null);
    }

    @RetainMethodSignature
    public void request(String id, String url, String str, String method, String connectionConfiguration, String callback) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(connectionConfiguration, "connectionConfiguration");
        Intrinsics.checkNotNullParameter(callback, "callback");
        this.f4580e.put(id, BuildersKt__Builders_commonKt.launch$default(this.c, this.f4579d, null, new a(id, url, method, this, str, connectionConfiguration, callback, null), 2, null));
    }
}
