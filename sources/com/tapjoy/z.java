package com.tapjoy;

import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class z {
    public final ConcurrentLinkedQueue a = new ConcurrentLinkedQueue();
    public WebView b;
    public final TJWebViewJSInterfaceListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f8058d;

    public z(WebView webView, TJWebViewJSInterfaceListener tJWebViewJSInterfaceListener) {
        this.b = webView;
        this.c = tJWebViewJSInterfaceListener;
    }

    public void a(ArrayList<?> arrayList, String str, String str2) {
        try {
            c(new JSONArray((Collection) arrayList), str, str2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void b(Map<?, ?> map, String str, String str2) {
        try {
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(new JSONObject(map));
            c(jSONArray, str, str2);
        } catch (Exception e2) {
            TapjoyLog.e("TJWebViewJSInterface", "Exception in callback to JS: " + e2.toString());
            e2.printStackTrace();
        }
    }

    public void c(Object obj, String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("arguments", obj);
            if (str != null && str.length() > 0) {
                jSONObject.put("method", str);
            }
            JSONObject jSONObject2 = new JSONObject();
            if (str2 != null && str2.length() > 0) {
                jSONObject2.put("callbackId", str2);
            }
            jSONObject2.put("data", jSONObject);
            String str3 = "javascript:if(window.AndroidWebViewJavascriptBridge) AndroidWebViewJavascriptBridge._handleMessageFromAndroid('" + jSONObject2 + "');";
            if (!this.f8058d) {
                this.a.add(str3);
                return;
            }
            WebView webView = this.b;
            if (webView != null) {
                TapjoyUtil.runOnMainThread(new m0(webView, str3));
            } else {
                TapjoyLog.w("TJWebViewJSInterface", "No available webview to execute js");
            }
        } catch (Exception e2) {
            TapjoyLog.e("TJWebViewJSInterface", "Exception in callback to JS: " + e2.toString());
            e2.printStackTrace();
        }
    }

    public void d() {
        if (this.f8058d) {
            return;
        }
        while (true) {
            String str = (String) this.a.poll();
            if (str == null) {
                this.f8058d = true;
                return;
            } else {
                WebView webView = this.b;
                if (webView != null) {
                    TapjoyUtil.runOnMainThread(new m0(webView, str));
                }
            }
        }
    }

    @JavascriptInterface
    public void dispatchMethod(String str) {
        TapjoyLog.d("TJWebViewJSInterface", "dispatchMethod params: " + str);
        try {
            JSONObject jSONObject = new JSONObject(str);
            String string = jSONObject.getJSONObject("data").getString("method");
            TapjoyLog.d("TJWebViewJSInterface", "method: " + string);
            TJWebViewJSInterfaceListener tJWebViewJSInterfaceListener = this.c;
            if (tJWebViewJSInterfaceListener == null || this.b == null) {
                return;
            }
            tJWebViewJSInterfaceListener.onDispatchMethod(string, jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
