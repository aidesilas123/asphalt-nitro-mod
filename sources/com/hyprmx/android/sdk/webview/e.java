package com.hyprmx.android.sdk.webview;

import android.net.Uri;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public interface e {
    void a(PermissionRequest permissionRequest);

    boolean a(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams);

    boolean a(boolean z, String str, String str2, JsResult jsResult);

    String g(String str);
}
