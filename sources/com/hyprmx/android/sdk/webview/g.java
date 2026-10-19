package com.hyprmx.android.sdk.webview;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class g extends WebChromeClient {
    public final e a;

    public static final class a extends WebViewClient {
        public final /* synthetic */ WebView a;
        public final /* synthetic */ g b;

        public a(WebView webView, g gVar) {
            this.a = webView;
            this.b = gVar;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView view, String url) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            this.a.setWebViewClient(new WebViewClient());
            this.b.a.g(url);
            return true;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ g(k kVar) {
        com.hyprmx.android.sdk.core.j jVarA = com.hyprmx.android.sdk.core.t.a().a();
        this(kVar, jVarA != null ? jVarA.I() : null);
    }

    public g(k client, s sVar) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.a = client;
    }

    @Override // android.webkit.WebChromeClient
    public final Bitmap getDefaultVideoPoster() {
        Bitmap defaultVideoPoster = super.getDefaultVideoPoster();
        if (defaultVideoPoster != null) {
            return defaultVideoPoster;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(10, 10, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(10, 10, Bitmap.Config.ARGB_8888)");
        return bitmapCreateBitmap;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onCreateWindow(WebView view, boolean z, boolean z2, Message resultMsg) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(resultMsg, "resultMsg");
        WebView webView = new WebView(view.getContext());
        webView.setWebViewClient(new a(webView, this));
        Object obj = resultMsg.obj;
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.webkit.WebView.WebViewTransport");
        ((WebView.WebViewTransport) obj).setWebView(webView);
        resultMsg.sendToTarget();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView view, String url, String message, JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        return this.a.a(true, url, message, result);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsConfirm(WebView view, String url, String message, JsResult result) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(result, "result");
        return this.a.a(false, url, message, result);
    }

    @Override // android.webkit.WebChromeClient
    public final void onPermissionRequest(PermissionRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        this.a.a(request);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> filePathCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(filePathCallback, "filePathCallback");
        Intrinsics.checkNotNullParameter(fileChooserParams, "fileChooserParams");
        return this.a.a(webView, filePathCallback, fileChooserParams);
    }
}
