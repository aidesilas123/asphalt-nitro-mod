package com.iab.omid.library.jungroup.b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes2.dex */
public final class f {
    public static void a(WebView webView, String str, Object... objArr) {
        String string;
        if (webView == null) {
            String strConcat = "The WebView is null for ".concat(str);
            if (!com.iab.omid.library.jungroup.b.a.booleanValue() || TextUtils.isEmpty(strConcat)) {
                return;
            }
            Log.i("OMIDLIB", strConcat);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        if (objArr.length > 0) {
            for (Object obj : objArr) {
                if (obj == null) {
                    string = "\"\"";
                } else {
                    if (obj instanceof String) {
                        string = obj.toString();
                        if (!string.startsWith("{")) {
                            sb.append('\"');
                            sb.append(string);
                            sb.append('\"');
                        }
                    } else {
                        sb.append(obj);
                    }
                    sb.append(",");
                }
                sb.append(string);
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
        }
        sb.append(")}");
        String string2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(string2);
        } else {
            handler.post(new e(webView, string2));
        }
    }
}
