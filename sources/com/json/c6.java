package com.json;

import android.webkit.JavascriptInterface;

/* JADX INFO: loaded from: classes2.dex */
public class c6 {
    private f6 a;

    c6(f6 f6Var) {
        this.a = f6Var;
    }

    @JavascriptInterface
    public void receiveMessageFromExternal(String str) {
        this.a.handleMessageFromAd(str);
    }
}
