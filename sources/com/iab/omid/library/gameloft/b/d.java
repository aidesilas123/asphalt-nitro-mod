package com.iab.omid.library.gameloft.b;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.VisibleForTesting;
import com.iab.omid.library.gameloft.adsession.ErrorType;
import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d {
    private static d a = new d();

    private d() {
    }

    public static d a() {
        return a;
    }

    public void a(WebView webView) {
        a(webView, "finishSession", new Object[0]);
    }

    public void a(WebView webView, float f2) {
        a(webView, "setDeviceVolume", Float.valueOf(f2));
    }

    public void a(WebView webView, ErrorType errorType, String str) {
        a(webView, "error", errorType.toString(), str);
    }

    public void a(WebView webView, String str, JSONObject jSONObject) {
        if (jSONObject != null) {
            a(webView, "publishVideoEvent", str, jSONObject);
        } else {
            a(webView, "publishVideoEvent", str);
        }
    }

    public void a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2) {
        a(webView, "startSession", str, jSONObject, jSONObject2);
    }

    @VisibleForTesting
    void a(WebView webView, String str, Object... objArr) {
        if (webView == null) {
            com.iab.omid.library.gameloft.d.c.a("The WebView is null for " + str);
            return;
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
        sb.append(str);
        sb.append("(");
        a(sb, objArr);
        sb.append(")}");
        a(webView, sb);
    }

    @VisibleForTesting
    void a(final WebView webView, StringBuilder sb) {
        final String string = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(string);
        } else {
            handler.post(new Runnable() { // from class: com.iab.omid.library.gameloft.b.d.1
                @Override // java.lang.Runnable
                public void run() {
                    webView.loadUrl(string);
                }
            });
        }
    }

    public void a(WebView webView, JSONObject jSONObject) {
        a(webView, o2.a.f6463e, jSONObject);
    }

    @VisibleForTesting
    void a(StringBuilder sb, Object[] objArr) {
        if (objArr == null || objArr.length <= 0) {
            return;
        }
        for (Object obj : objArr) {
            if (obj == null) {
                sb.append('\"');
            } else {
                if (obj instanceof String) {
                    String string = obj.toString();
                    if (string.startsWith("{")) {
                        sb.append(string);
                    } else {
                        sb.append('\"');
                        sb.append(string);
                    }
                } else {
                    sb.append(obj);
                }
                sb.append(",");
            }
            sb.append('\"');
            sb.append(",");
        }
        sb.setLength(sb.length() - 1);
    }

    public boolean a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    public void b(WebView webView) {
        a(webView, "publishImpressionEvent", new Object[0]);
    }

    public void b(WebView webView, String str) {
        if (str != null) {
            a(webView, "var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);".replace("%SCRIPT_SRC%", str));
        }
    }

    public void c(WebView webView, String str) {
        a(webView, "setNativeViewHierarchy", str);
    }

    public void d(WebView webView, String str) {
        a(webView, "setState", str);
    }
}
