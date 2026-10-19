package com.bytedance.sdk.component.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;

/* JADX INFO: compiled from: WebViewBridge.java */
/* JADX INFO: loaded from: classes.dex */
public class z extends a {
    static final /* synthetic */ boolean j = true;
    protected String h;
    protected WebView i;

    private void a(String str, final String str2) {
        if (this.f614f || TextUtils.isEmpty(str2)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.a.z.1
            @Override // java.lang.Runnable
            public void run() {
                if (z.this.f614f) {
                    return;
                }
                try {
                    if (Build.VERSION.SDK_INT >= 19) {
                        i.a("Invoking Jsb using evaluateJavascript: " + str2);
                        z.this.i.evaluateJavascript(str2, null);
                    } else {
                        i.a("Invoking Jsb using loadUrl: " + str2);
                        z.this.i.loadUrl(str2);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        };
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
            return;
        }
        i.a("Received call on sub-thread, posting to main thread: " + str2);
        this.f612d.post(runnable);
    }

    @Override // com.bytedance.sdk.component.a.a
    protected Context a(j jVar) {
        Context context = jVar.f622e;
        if (context != null) {
            return context;
        }
        WebView webView = jVar.a;
        if (webView != null) {
            return webView.getContext();
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.bytedance.sdk.component.a.a
    protected String a() {
        return this.i.getUrl();
    }

    @Override // com.bytedance.sdk.component.a.a
    protected void a(String str) {
        a(str, "javascript:" + this.h + "._handleMessageFromToutiao(" + str + ")");
    }

    @Override // com.bytedance.sdk.component.a.a
    protected void a(String str, q qVar) {
        if (qVar == null || TextUtils.isEmpty(qVar.h)) {
            super.a(str, qVar);
            return;
        }
        String str2 = qVar.h;
        a(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
    }

    @Override // com.bytedance.sdk.component.a.a
    protected void b() {
        super.b();
        d();
    }

    @Override // com.bytedance.sdk.component.a.a
    @SuppressLint({"JavascriptInterface", "AddJavascriptInterface"})
    protected void b(j jVar) {
        this.i = jVar.a;
        this.h = jVar.c;
        if (Build.VERSION.SDK_INT < 17 || jVar.n) {
            return;
        }
        c();
    }

    @SuppressLint({"AddJavascriptInterface"})
    protected void c() {
        if (!j && this.i == null) {
            throw new AssertionError();
        }
        this.i.addJavascriptInterface(this, this.h);
    }

    protected void d() {
        this.i.removeJavascriptInterface(this.h);
    }

    @Override // com.bytedance.sdk.component.a.a
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }
}
