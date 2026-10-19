package com.gameloft.glads;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Message;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: compiled from: GLWebChromeClient.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends WebChromeClient {
    AndroidWebView a;

    /* JADX INFO: renamed from: com.gameloft.glads.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GLWebChromeClient.java */
    class C0217a extends WebViewClient {
        final /* synthetic */ long a;

        C0217a(long j) {
            this.a = j;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            a.this.a.OnCreateWindow(this.a, str);
            webView.destroy();
        }
    }

    a(AndroidWebView androidWebView) {
        this.a = androidWebView;
    }

    private void a(WebView webView, Message message) {
        long jGetTime = Utils.GetTime();
        WebView webView2 = new WebView(webView.getContext());
        webView2.getSettings().setJavaScriptEnabled(true);
        webView2.setWebViewClient(new C0217a(jGetTime));
        ((WebView.WebViewTransport) message.obj).setWebView(webView2);
        message.sendToTarget();
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        if (this.a.openWithModalWebview) {
            return false;
        }
        a(webView, message);
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        permissionRequest.grant(permissionRequest.getResources());
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        return WebViewFileChooser.ShowFileChooser(valueCallback, fileChooserParams);
    }
}
