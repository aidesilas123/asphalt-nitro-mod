package com.hyprmx.android.sdk.webview;

import android.net.Uri;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.j0;
import com.hyprmx.android.sdk.utility.r0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class n implements com.hyprmx.android.sdk.webview.k, r0, com.hyprmx.android.sdk.mvp.c, CoroutineScope, t, v {
    public com.hyprmx.android.sdk.webview.l a;
    public final CoroutineScope b;
    public final r0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final v f4754d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.hyprmx.android.sdk.mvp.c f4755e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f4756f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4757g;
    public ValueCallback<Uri[]> h;

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$addJavascriptInterface$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class a extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public a(Continuation<? super a> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new a(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((a) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.b();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$imageCaptured$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class b extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ n b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(n nVar, String str, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = nVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new b(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((b) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            if (StringsKt__StringsJVMKt.isBlank(this.a)) {
                HyprMXLog.d("Image capture returned with empty path.");
                ValueCallback<Uri[]> valueCallback = this.b.h;
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
            } else {
                ValueCallback<Uri[]> valueCallback2 = this.b.h;
                if (valueCallback2 != null) {
                    Uri uri = Uri.parse(this.a);
                    Intrinsics.checkNotNullExpressionValue(uri, "parse(this)");
                    valueCallback2.onReceiveValue(new Uri[]{uri});
                }
            }
            this.b.h = null;
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$navigateBack$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class c extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public c(Continuation<? super c> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new c(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((c) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.navigateBack();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$navigateForward$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class d extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public d(Continuation<? super d> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new d(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((d) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.navigateForward();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$pauseJSExecution$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class e extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public e(Continuation<? super e> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new e(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((e) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.pauseJSExecution();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$postUrl$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class f extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;
        public final /* synthetic */ String c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(String str, String str2, Continuation<? super f> continuation) {
            super(2, continuation);
            this.b = str;
            this.c = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new f(this.b, this.c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((f) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                String str = this.b;
                byte[] bytes = this.c.getBytes(Charsets.b);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                lVar.a(str, bytes);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$removeJavascriptInterface$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class g extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public g(Continuation<? super g> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new g(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((g) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.a();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$resumeJSExecution$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class h extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public h(Continuation<? super h> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new h(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((h) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.resumeJSExecution();
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$runScript$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class i extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(String str, Continuation<? super i> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new i(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((i) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.a(this.b);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$setAdHtml$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class j extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ n b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public j(n nVar, String str, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = nVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new j(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((j) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            String data = this.a;
            Intrinsics.checkNotNullParameter(data, "data");
            JSONObject jSONObject = new JSONObject(data);
            String data2 = jSONObject.optString("data");
            Intrinsics.checkNotNullExpressionValue(data2, "this.optString(DATA_KEY)");
            String baseUrl = jSONObject.optString("baseUrl");
            Intrinsics.checkNotNullExpressionValue(baseUrl, "this.optString(BASE_URL_KEY)");
            String mimeType = jSONObject.optString("mimeType");
            Intrinsics.checkNotNullExpressionValue(mimeType, "this.optString(MIME_TYPE_KEY)");
            String encoding = jSONObject.optString("encoding");
            Intrinsics.checkNotNullExpressionValue(encoding, "this.optString(ENCODING_KEY)");
            Intrinsics.checkNotNullParameter(data2, "data");
            Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            Intrinsics.checkNotNullParameter(encoding, "encoding");
            n nVar = this.b;
            com.hyprmx.android.sdk.webview.l lVar = nVar.a;
            if (lVar != null) {
                lVar.a(baseUrl, data2, mimeType, encoding);
            }
            nVar.f4754d.C();
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$setCatalogFramePost$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class k extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String a;
        public final /* synthetic */ n b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(n nVar, String str, Continuation continuation) {
            super(2, continuation);
            this.a = str;
            this.b = nVar;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return new k(this.b, this.a, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((k) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            String data = this.a;
            Intrinsics.checkNotNullParameter(data, "data");
            JSONObject jSONObject = new JSONObject(data);
            String url = jSONObject.optString("url", "");
            Intrinsics.checkNotNullExpressionValue(url, "this.optString(URL_KEY, \"\")");
            String params = jSONObject.optString("params", "");
            Intrinsics.checkNotNullExpressionValue(params, "this.optString(PARAMS_KEY, \"\")");
            String query = jSONObject.optString("query", "");
            Intrinsics.checkNotNullExpressionValue(query, "this.optString(QUERY_KEY, \"\")");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(params, "params");
            Intrinsics.checkNotNullParameter(query, "query");
            com.hyprmx.android.sdk.webview.l lVar = this.b.a;
            if (lVar != null) {
                byte[] bytes = params.getBytes(Charsets.b);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                lVar.a(url, bytes);
            }
            return kotlin.v.a;
        }
    }

    @DebugMetadata(c = "com.hyprmx.android.sdk.webview.HyprMXWebViewPresenter$setUrl$1", f = "HyprMXWebViewPresenter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    public static final class l extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super kotlin.v>, Object> {
        public final /* synthetic */ String b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public l(String str, Continuation<? super l> continuation) {
            super(2, continuation);
            this.b = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<kotlin.v> create(Object obj, Continuation<?> continuation) {
            return n.this.new l(this.b, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super kotlin.v> continuation) {
            return ((l) create(coroutineScope, continuation)).invokeSuspend(kotlin.v.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            ResultKt.throwOnFailure(obj);
            com.hyprmx.android.sdk.webview.l lVar = n.this.a;
            if (lVar != null) {
                lVar.a(this.b, (String) null);
            }
            return kotlin.v.a;
        }
    }

    public n(com.hyprmx.android.sdk.webview.l lVar, String viewModelIdentifier, com.hyprmx.android.sdk.core.js.a jsEngine, CoroutineScope scope, com.hyprmx.android.sdk.presentation.h eventPublisher, r0 urlFilter, com.hyprmx.android.sdk.mvp.c lifecycleHandler, v sharedInterface) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        Intrinsics.checkNotNullParameter(jsEngine, "jsEngine");
        Intrinsics.checkNotNullParameter(scope, "scope");
        Intrinsics.checkNotNullParameter(eventPublisher, "eventPublisher");
        Intrinsics.checkNotNullParameter(urlFilter, "urlFilter");
        Intrinsics.checkNotNullParameter(lifecycleHandler, "lifecycleHandler");
        Intrinsics.checkNotNullParameter(sharedInterface, "sharedInterface");
        this.a = lVar;
        this.b = scope;
        this.c = urlFilter;
        this.f4754d = sharedInterface;
        this.f4755e = lifecycleHandler;
        b(this);
        updateWebViewConfiguration(D());
        this.f4756f = new LinkedHashMap();
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void C() {
        this.f4754d.C();
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final String D() {
        return this.f4754d.D();
    }

    @Override // com.hyprmx.android.sdk.core.c
    public final void L() {
        this.a = null;
    }

    @Override // com.hyprmx.android.sdk.webview.h, com.hyprmx.android.sdk.webview.v
    public final WebResourceResponse a(String url, String str, boolean z) {
        Intrinsics.checkNotNullParameter(url, "url");
        return this.f4754d.a(url, str, z);
    }

    @Override // com.hyprmx.android.sdk.utility.r0
    public final j0 a(String url, String mimeType) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        return this.c.a(url, mimeType);
    }

    @Override // com.hyprmx.android.sdk.presentation.k, com.hyprmx.android.sdk.core.a0
    public final String a() {
        return this.f4754d.a();
    }

    @Override // com.hyprmx.android.sdk.webview.e
    public final void a(PermissionRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f4756f.put(Integer.valueOf(this.f4757g), request);
        this.f4754d.a(request, this.f4757g);
        this.f4757g++;
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void a(PermissionRequest request, int i2) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.f4754d.a(request, i2);
    }

    @Override // com.hyprmx.android.sdk.webview.h, com.hyprmx.android.sdk.webview.v
    public final void a(String description, String errorCode, String url) {
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(errorCode, "errorCode");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f4754d.a(description, errorCode, url);
    }

    @Override // com.hyprmx.android.sdk.webview.h, com.hyprmx.android.sdk.webview.v
    public final void a(boolean z, boolean z2, int i2, String str, String str2, String str3, ArrayList history) {
        Intrinsics.checkNotNullParameter(history, "history");
        this.f4754d.a(z, z2, i2, str, str2, str3, history);
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final boolean a(WebChromeClient.FileChooserParams fileChooserParams) {
        Intrinsics.checkNotNullParameter(fileChooserParams, "fileChooserParams");
        return this.f4754d.a(fileChooserParams);
    }

    @Override // com.hyprmx.android.sdk.webview.e
    public final boolean a(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(filePathCallback, "filePathCallback");
        Intrinsics.checkNotNullParameter(fileChooserParams, "fileChooserParams");
        HyprMXLog.d("onShowFileChooser");
        ValueCallback<Uri[]> valueCallback = this.h;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
        this.h = filePathCallback;
        Intrinsics.checkNotNullParameter(fileChooserParams, "fileChooserParams");
        return this.f4754d.a(fileChooserParams);
    }

    @Override // com.hyprmx.android.sdk.webview.h
    public final boolean a(String url, boolean z) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(url, "url");
        j0 j0VarB = this.c.b(url, z);
        if (Intrinsics.areEqual(j0VarB, j0.a.b)) {
            return false;
        }
        if (!Intrinsics.areEqual(j0VarB, j0.b.b) && !Intrinsics.areEqual(j0VarB, j0.c.b)) {
            if (!(j0VarB instanceof j0.d)) {
                throw new NoWhenBranchMatchedException();
            }
            String str = ((j0.d) j0VarB).b;
            com.hyprmx.android.sdk.webview.l lVar = this.a;
            if (lVar != null) {
                lVar.a(str, (String) null);
            }
        }
        return true;
    }

    @Override // com.hyprmx.android.sdk.webview.e, com.hyprmx.android.sdk.webview.v
    public final boolean a(boolean z, String url, String message, JsResult jsResult) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(jsResult, "jsResult");
        if (this.f4754d.a(z, url, message, jsResult)) {
            com.hyprmx.android.sdk.webview.l lVar = this.a;
            if (lVar == null) {
                return true;
            }
            lVar.a(z, message, jsResult);
            return true;
        }
        if (z) {
            jsResult.cancel();
            return true;
        }
        jsResult.confirm();
        return true;
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void addJavascriptInterface() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new a(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.utility.r0
    public final j0 b(String url, boolean z) {
        Intrinsics.checkNotNullParameter(url, "url");
        return this.c.b(url, z);
    }

    @Override // com.hyprmx.android.sdk.utility.r0
    public final String b(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return this.c.b(url);
    }

    @Override // com.hyprmx.android.sdk.webview.v
    public final void b(float f2, float f3) {
        this.f4754d.b(f2, f3);
    }

    @Override // com.hyprmx.android.sdk.core.a0
    public final void b(Object nativeObject) {
        Intrinsics.checkNotNullParameter(nativeObject, "nativeObject");
        this.f4754d.b(nativeObject);
    }

    @Override // com.hyprmx.android.sdk.webview.d
    public final void b(String methodName, String str) {
        Intrinsics.checkNotNullParameter(methodName, "methodName");
        this.f4754d.b(methodName, str);
    }

    @Override // com.hyprmx.android.sdk.presentation.k
    public final void c(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.f4754d.c(str);
    }

    @Override // com.hyprmx.android.sdk.webview.h, com.hyprmx.android.sdk.webview.v
    public final void d(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f4754d.d(url);
    }

    @Override // com.hyprmx.android.sdk.webview.h, com.hyprmx.android.sdk.webview.v
    public final void e(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        this.f4754d.e(url);
    }

    @Override // com.hyprmx.android.sdk.webview.e
    public final String g(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HyprMXLog.d("onCreateWindow " + url);
        Intrinsics.checkNotNullParameter(url, "url");
        return this.c.b(url);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.b.getCoroutineContext();
    }

    @Override // com.hyprmx.android.sdk.webview.k
    public final void h(String viewModelIdentifier) {
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "viewModelIdentifier");
        if (Intrinsics.areEqual(this.f4754d.a(), viewModelIdentifier)) {
            return;
        }
        HyprMXLog.d("Rebind webview from " + this.f4754d.a() + " to " + viewModelIdentifier);
        Intrinsics.checkNotNullParameter(viewModelIdentifier, "<set-?>");
        this.f4754d.c(viewModelIdentifier);
        Intrinsics.checkNotNullParameter(this, "nativeObject");
        this.f4754d.b(this);
    }

    @Override // com.hyprmx.android.sdk.mvp.c
    public final void i(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.f4755e.i(event);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void imageCaptured(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new b(this, url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.h, com.hyprmx.android.sdk.webview.v
    public final boolean k() {
        HyprMXLog.e("onRenderProcessGone - The webview has reported a crash");
        boolean zK = this.f4754d.k();
        com.hyprmx.android.sdk.webview.l lVar = this.a;
        if (lVar != null) {
            lVar.b(zK);
        }
        return zK;
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void navigateBack() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new c(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void navigateForward() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new d(null), 3, null);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String url, String userAgent, String contentDisposition, String mimeType, long j2) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        Intrinsics.checkNotNullParameter(contentDisposition, "contentDisposition");
        Intrinsics.checkNotNullParameter(mimeType, "mimetype");
        HyprMXLog.d("onDownloadStart " + url + " with type " + mimeType);
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        j0 j0VarA = this.c.a(url, mimeType);
        if (j0VarA instanceof j0.d) {
            String str = ((j0.d) j0VarA).b;
            com.hyprmx.android.sdk.webview.l lVar = this.a;
            if (lVar != null) {
                lVar.a(str, (String) null);
            }
        }
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void pauseJSExecution() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new e(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void permissionResponse(String data) throws JSONException {
        StringBuilder sb;
        Intrinsics.checkNotNullParameter(data, "data");
        JSONObject jSONObject = new JSONObject(data);
        int i2 = jSONObject.getInt("permissionId");
        JSONArray jSONArray = jSONObject.getJSONArray("permissions");
        HashMap map = new HashMap();
        int length = jSONArray.length();
        for (int i3 = 0; i3 < length; i3++) {
            JSONObject jSONObject2 = jSONArray.getJSONObject(i3);
            String string = jSONObject2.getString("permission");
            Intrinsics.checkNotNullExpressionValue(string, "entry.getString(WebViewE…_RESPONSE_ARG_PERMISSION)");
            map.put(string, Boolean.valueOf(jSONObject2.getBoolean("granted")));
        }
        PermissionRequest permissionRequest = (PermissionRequest) this.f4756f.remove(Integer.valueOf(i2));
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : map.entrySet()) {
                if (((Boolean) entry.getValue()).booleanValue()) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            ArrayList arrayList = new ArrayList(linkedHashMap.size());
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                arrayList.add((String) ((Map.Entry) it.next()).getKey());
            }
            if (!(!arrayList.isEmpty())) {
                if (permissionRequest != null) {
                    permissionRequest.deny();
                }
            } else if (permissionRequest != null) {
                Object[] array = arrayList.toArray(new String[0]);
                Intrinsics.checkNotNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                permissionRequest.grant((String[]) array);
            }
        } catch (Error e2) {
            e = e2;
            sb = new StringBuilder("Error while adjusting permissions: ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.e(sb.toString());
        } catch (Exception e3) {
            e = e3;
            sb = new StringBuilder("Exception while adjusting permissions: ");
            sb.append(e.getLocalizedMessage());
            HyprMXLog.e(sb.toString());
        }
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void postUrl(String url, String postParams) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(postParams, "postParams");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new f(url, postParams, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void removeJavascriptInterface() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new g(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void resumeJSExecution() {
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new h(null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void runScript(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new i(script, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void setAdHtml(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new j(this, data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void setCatalogFramePost(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new k(this, data, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void setUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        BuildersKt__Builders_commonKt.launch$default(this, null, null, new l(url, null), 3, null);
    }

    @Override // com.hyprmx.android.sdk.webview.t
    public final void updateWebViewConfiguration(String data) {
        p pVar;
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(data, "data");
        try {
            JSONObject jSONObject = new JSONObject(data);
            boolean z = jSONObject.getBoolean("isWebViewScrollable");
            boolean z2 = jSONObject.getBoolean("isWebViewScrollBounceEnabled");
            boolean z3 = jSONObject.getBoolean("allowsPinchGesture");
            boolean z4 = jSONObject.getBoolean("allowsLinkPreview");
            boolean z5 = jSONObject.getBoolean("javaScriptEnabled");
            boolean z6 = jSONObject.getBoolean("domStorageEnabled");
            boolean z7 = jSONObject.getBoolean("loadWithOverviewMode");
            boolean z8 = jSONObject.getBoolean("useWideViewPort");
            boolean z9 = jSONObject.getBoolean("displayZoomControls");
            boolean z10 = jSONObject.getBoolean("builtInZoomControls");
            boolean z11 = jSONObject.getBoolean("supportsMultipleWindows");
            String str = jSONObject.getString("alpha") + jSONObject.getString(TtmlNode.ATTR_TTS_BACKGROUND_COLOR);
            String customUserAgent = jSONObject.getString("customUserAgent");
            boolean z12 = jSONObject.getBoolean("playbackRequiresUserAction");
            Intrinsics.checkNotNullExpressionValue(customUserAgent, "customUserAgent");
            pVar = new p(z, z2, z3, z4, z5, z6, z7, z8, z9, z10, z11, str, customUserAgent, z12);
        } catch (Exception e2) {
            HyprMXLog.e("Exception parsing config " + e2.getLocalizedMessage());
            pVar = null;
        }
        if (pVar == null) {
            HyprMXLog.d("Error parsing webview configuration update event");
            return;
        }
        com.hyprmx.android.sdk.webview.l lVar = this.a;
        if (lVar != null) {
            lVar.a(pVar.a, pVar.b, pVar.c, pVar.f4758d, pVar.f4759e, pVar.f4760f, pVar.f4761g, pVar.h, pVar.i, pVar.j, pVar.k, pVar.l, pVar.m, pVar.n);
        }
    }
}
