package com.json;

import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class d6 {
    private b6 a;
    private WebView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f6079e = d6.class.getSimpleName();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String[] f6080f = {"handleGetViewVisibility"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String[] f6081g = {z5.h, z5.i, z5.f6750g, "handleGetViewVisibility", z5.j};
    private cd b = new cd();

    class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (Build.VERSION.SDK_INT >= 19) {
                    d6.this.c.evaluateJavascript(this.a, null);
                } else {
                    d6.this.c.loadUrl(this.a);
                }
            } catch (Throwable unused) {
                Log.e(d6.this.f6079e, "injectJavaScriptIntoWebView | Error while trying inject JS into external adUnit: " + this.b + "Android API level: " + Build.VERSION.SDK_INT);
            }
        }
    }

    private String b(String str) {
        return String.format(z5.u, str);
    }

    private JSONObject c(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", jSONObject.getString("id"));
            jSONObject2.put("data", this.b.a());
        } catch (Exception e2) {
            Log.e(this.f6079e, "Error while trying execute method buildVisibilityMessageForAdUnit | params: " + jSONObject);
            e2.printStackTrace();
        }
        return jSONObject2;
    }

    private void f() {
        if (this.a == null || this.b == null) {
            return;
        }
        a(z5.a, a());
    }

    private void h(String str) {
        q5.a.c(new a("javascript:try{" + str + "}catch(e){console.log(\"JS exception: \" + JSON.stringify(e));}", str));
    }

    private boolean i(String str) {
        for (String str2 : this.f6080f) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }

    private boolean j(String str) {
        return str.equalsIgnoreCase(Build.VERSION.SDK_INT <= 22 ? z5.l : z5.k);
    }

    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(z5.s, this.b.a());
            jSONObject.put(z5.p, jSONObject2);
            jSONObject.put("adViewId", c());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    public void a(WebView webView) {
        this.c = webView;
    }

    public void a(b6 b6Var) {
        this.a = b6Var;
    }

    public void a(String str, int i, boolean z) {
        this.b.b(str, i, z);
        if (j(str)) {
            f();
        }
    }

    public void a(String str, String str2) {
        b6 b6Var = this.a;
        if (b6Var != null) {
            b6Var.a(str, str2, this.f6078d);
        }
    }

    public void a(String str, String str2, String str3) throws JSONException {
        if (this.c == null) {
            String str4 = "No external adUnit attached to ISNAdView while trying to send message: " + str;
            Log.e(this.f6079e, str4);
            this.a.a(str3, str4, this.f6078d);
            return;
        }
        try {
            new JSONObject(str);
        } catch (JSONException unused) {
            str = "\"" + str + "\"";
        }
        h(b(str));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adViewId", this.f6078d);
        a(str2, jSONObject);
    }

    public void a(String str, JSONObject jSONObject) {
        b6 b6Var = this.a;
        if (b6Var != null) {
            b6Var.a(str, jSONObject);
        }
    }

    public void a(JSONObject jSONObject, String str, String str2) throws JSONException {
        a(c(jSONObject).toString(), str, str2);
    }

    public void b() {
        this.a = null;
        this.b = null;
    }

    public String c() {
        return this.f6078d;
    }

    public void c(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("method");
            if (TextUtils.isEmpty(strOptString) || !i(strOptString)) {
                a(jSONObject.optString(z5.v, z5.c), jSONObject);
            } else if (strOptString.equalsIgnoreCase("handleGetViewVisibility")) {
                a(jSONObject, (String) null, (String) null);
            }
        } catch (JSONException e2) {
            Log.e(this.f6079e, "ISNAdViewLogic | receiveMessageFromExternal | Error while trying handle message: " + str);
            e2.printStackTrace();
        }
    }

    public void e() {
        if (this.a == null || this.b == null) {
            return;
        }
        a(z5.b, a());
    }

    public void e(String str) throws JSONException {
        JSONObject jSONObjectA = this.b.a();
        jSONObjectA.put("adViewId", this.f6078d);
        a(str, jSONObjectA);
    }

    public void f(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adViewId", this.f6078d);
            a(str, jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void g(String str) {
        this.f6078d = str;
    }
}
