package com.json.sdk.controller;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes4.dex */
class q {
    private u a;
    private boolean b = false;

    q(u uVar) {
        this.a = uVar;
    }

    @JavascriptInterface
    public String getTokenForMessaging() {
        if (this.b) {
            return "";
        }
        this.b = true;
        return this.a.e();
    }
}
