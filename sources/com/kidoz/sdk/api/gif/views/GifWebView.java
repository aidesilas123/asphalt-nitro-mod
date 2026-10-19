package com.kidoz.sdk.api.gif.views;

import android.content.Context;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public class GifWebView extends WebView {
    public GifWebView(Context context, String str) {
        super(context);
        loadUrl(str);
    }
}
