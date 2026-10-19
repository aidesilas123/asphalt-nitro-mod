package com.hyprmx.android.sdk.webview;

import android.graphics.Bitmap;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class i extends WebViewClient {
    public final h a;

    public i(k client) {
        Intrinsics.checkNotNullParameter(client, "client");
        this.a = client;
    }

    public final void a(WebView webView) {
        String url;
        WebBackForwardList webBackForwardListCopyBackForwardList = webView.copyBackForwardList();
        Intrinsics.checkNotNullExpressionValue(webBackForwardListCopyBackForwardList, "view.copyBackForwardList()");
        ArrayList arrayList = new ArrayList();
        int size = webBackForwardListCopyBackForwardList.getSize();
        for (int i = 0; i < size; i++) {
            String url2 = webBackForwardListCopyBackForwardList.getItemAtIndex(i).getUrl();
            Intrinsics.checkNotNullExpressionValue(url2, "backForwardList.getItemAtIndex(index).url");
            arrayList.add(url2);
        }
        try {
            url = new URL(webView.getUrl()).getHost();
        } catch (MalformedURLException unused) {
            url = webView.getUrl();
        }
        String str = url;
        h hVar = this.a;
        boolean zCanGoBack = webView.canGoBack();
        boolean zCanGoForward = webView.canGoForward();
        int currentIndex = webBackForwardListCopyBackForwardList.getCurrentIndex();
        WebHistoryItem currentItem = webBackForwardListCopyBackForwardList.getCurrentItem();
        hVar.a(zCanGoBack, zCanGoForward, currentIndex, currentItem != null ? currentItem.getUrl() : null, str, webView.getTitle(), arrayList);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView view, String url) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.e(url);
        a(view);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView view, String url, Bitmap bitmap) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(url, "url");
        this.a.d(url);
        a(view);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int i, String description, String failingUrl) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
        this.a.a(description, String.valueOf(i), failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(error, "error");
        this.a.a(error.getDescription().toString(), String.valueOf(error.getErrorCode()), String.valueOf(view.getUrl()));
    }

    @Override // android.webkit.WebViewClient
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        StringBuilder sb = new StringBuilder("onRenderProcessGone for ");
        sb.append(webView != null ? Integer.valueOf(webView.hashCode()) : null);
        HyprMXLog.d(sb.toString());
        this.a.k();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        h hVar = this.a;
        String string = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "request.url.toString()");
        return hVar.a(string, request.getUrl().getScheme(), request.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(request, "request");
        h hVar = this.a;
        String string = request.getUrl().toString();
        Intrinsics.checkNotNullExpressionValue(string, "request.url.toString()");
        return hVar.a(string, request.isForMainFrame());
    }
}
