package com.hyprmx.android.sdk.jsinterface;

import android.webkit.JavascriptInterface;
import com.hyprmx.android.sdk.webview.d;
import com.hyprmx.android.sdk.webview.k;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public final d a;

    public a(k onJSMessageHandler) {
        Intrinsics.checkNotNullParameter(onJSMessageHandler, "onJSMessageHandler");
        this.a = onJSMessageHandler;
    }

    @JavascriptInterface
    public void abort(String context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.a.b("abort", context);
    }

    @JavascriptInterface
    public void adDidComplete() {
        this.a.b("adDidComplete", null);
    }

    @JavascriptInterface
    public void audioEvent(String event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.a.b("audioEvent", event);
    }

    @JavascriptInterface
    public void closeAd() {
        this.a.b("closeAd", null);
    }

    @JavascriptInterface
    public void endOMSession() {
        this.a.b("endOMSession", null);
    }

    @JavascriptInterface
    public void pageReady() {
        this.a.b("pageReady", null);
    }

    @JavascriptInterface
    public void payoutComplete() {
        this.a.b("payoutComplete", null);
    }

    @JavascriptInterface
    public void presentDialog(String presentDialogJsonString) {
        Intrinsics.checkNotNullParameter(presentDialogJsonString, "presentDialogJsonString");
        this.a.b("presentDialog", presentDialogJsonString);
    }

    @JavascriptInterface
    public void setClosable(boolean z) {
        this.a.b("setClosable", String.valueOf(z));
    }

    @JavascriptInterface
    public void setRecoveryPostParameters(String params) {
        Intrinsics.checkNotNullParameter(params, "params");
        this.a.b("setRecoveryPostParameters", params);
    }

    @JavascriptInterface
    public void setTrampoline(String trampoline) {
        Intrinsics.checkNotNullParameter(trampoline, "trampoline");
        this.a.b("setTrampoline", trampoline);
    }

    @JavascriptInterface
    public void startOMSession(String sessionData) {
        Intrinsics.checkNotNullParameter(sessionData, "sessionData");
        this.a.b("startOMSession", sessionData);
    }

    @JavascriptInterface
    public void startWebtraffic(String webTrafficJsonString) {
        Intrinsics.checkNotNullParameter(webTrafficJsonString, "webTrafficJsonString");
        this.a.b("startWebtraffic", webTrafficJsonString);
    }
}
