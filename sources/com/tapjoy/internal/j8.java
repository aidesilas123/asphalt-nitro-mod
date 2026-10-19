package com.tapjoy.internal;

import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.tapjoy.TJAdUnit;
import com.tapjoy.TapjoyLog;

/* JADX INFO: loaded from: classes4.dex */
public final class j8 extends WebChromeClient {
    public final /* synthetic */ TJAdUnit a;

    public j8(TJAdUnit tJAdUnit) {
        this.a = tJAdUnit;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        TJAdUnit tJAdUnit = this.a;
        com.tapjoy.k kVar = tJAdUnit.f7789f;
        if (kVar == null || !kVar.j) {
            return true;
        }
        String[] strArr = {"Uncaught", "uncaught", "Error", "error", "not defined"};
        if (tJAdUnit.f7788e == null) {
            return true;
        }
        for (int i = 0; i < 5; i++) {
            if (consoleMessage.message().contains(strArr[i])) {
                this.a.f7788e.e(false);
                return true;
            }
        }
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        TapjoyLog.d("TJAdUnit", str2);
        return false;
    }
}
