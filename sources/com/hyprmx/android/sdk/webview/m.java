package com.hyprmx.android.sdk.webview;

import android.content.Context;
import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.hyprmx.android.R;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class m {
    public static final WebView a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        WebView webView = new WebView(context);
        webView.setId(R.id.hyprmx_webview);
        if (Build.VERSION.SDK_INT >= 21) {
            webView.getSettings().setMixedContentMode(2);
            CookieManager.getInstance().setAcceptThirdPartyCookies(webView, true);
        } else {
            CookieManager.getInstance().setAcceptCookie(true);
        }
        return webView;
    }
}
