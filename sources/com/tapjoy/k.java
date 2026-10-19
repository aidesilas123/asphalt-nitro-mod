package com.tapjoy;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebView;
import com.json.o2;
import com.tapjoy.TapjoyErrorMessage;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"SetJavaScriptEnabled"})
public class k implements TJWebViewJSInterfaceListener {
    public static Object a;
    public z b;
    public final t c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public y f8032d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f8033e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8034f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f8035g = true;
    public String h = null;
    public boolean i = false;
    public boolean j = false;
    public String k = null;
    public final ConcurrentLinkedQueue l = new ConcurrentLinkedQueue();

    @SuppressLint({"AddJavascriptInterface"})
    public k(t tVar) {
        this.c = tVar;
        TapjoyLog.i("TJAdUnitJSBridge", "creating AdUnit/JS Bridge");
        WebView webViewC = tVar.c();
        if (webViewC == null) {
            TapjoyLog.e("TJAdUnitJSBridge", new TapjoyErrorMessage(TapjoyErrorMessage.ErrorType.b, "Cannot create AdUnitJSBridge -- webview is NULL"));
            return;
        }
        z zVar = new z(webViewC, this);
        this.b = zVar;
        webViewC.addJavascriptInterface(zVar, "AndroidJavascriptInterface");
        v(true);
        try {
            Context contextA = tVar.a();
            Bundle bundle = contextA.getPackageManager().getApplicationInfo(contextA.getPackageName(), 128).metaData;
            if (bundle.containsKey("appJSMessageHandler")) {
                if (a == null) {
                    a = Class.forName(bundle.getString("appJSMessageHandler")).newInstance();
                }
                a.getClass().getDeclaredMethod("setHandler", Object.class, String.class).invoke(a, new s0(this), s0.class.getDeclaredMethods()[0].getName());
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e = e2;
            throw new RuntimeException(e);
        } catch (ClassNotFoundException unused) {
            TapjoyLog.d("TJAdUnitJSBridge", "No app-provided support for JS handler");
        } catch (IllegalAccessException e3) {
            e = e3;
            throw new RuntimeException(e);
        } catch (InstantiationException e4) {
            e = e4;
            throw new RuntimeException(e);
        } catch (NoSuchMethodException e5) {
            e = e5;
            throw new RuntimeException(e);
        } catch (InvocationTargetException e6) {
            e = e6;
            throw new RuntimeException(e);
        }
    }

    public void a() {
        z zVar = this.b;
        if (zVar != null) {
            WebView webView = zVar.b;
            if (webView != null) {
                webView.removeAllViews();
                this.b.b.destroy();
                this.b.b = null;
            }
            this.b = null;
        }
    }

    public void b(Boolean bool) {
        y yVar = this.f8032d;
        if (yVar != null) {
            if (yVar.b()) {
                return;
            }
            this.f8032d.i.d(null, null);
        } else {
            this.j = true;
            HashMap map = new HashMap();
            map.put(o2.h.i, bool);
            h("closeRequested", map);
        }
    }

    public void c() {
    }

    public void d(JSONObject jSONObject, String str) {
        TapjoyUtil.runOnMainThread(new n0(this, str));
    }

    public void e() {
        i("display", new Object[0]);
    }

    public void f() {
        while (true) {
            Pair pair = (Pair) this.l.poll();
            if (pair == null) {
                return;
            } else {
                onDispatchMethod((String) pair.first, (JSONObject) pair.second);
            }
        }
    }

    public void g() {
        z zVar = this.b;
        if (zVar == null) {
            return;
        }
        zVar.d();
    }

    public void h(String str, Map<String, Object> map) {
        z zVar = this.b;
        if (zVar != null) {
            zVar.b(map, str, null);
        }
    }

    public void i(String str, Object... objArr) {
        ArrayList<?> arrayList = new ArrayList<>(Arrays.asList(objArr));
        z zVar = this.b;
        if (zVar != null) {
            zVar.a(arrayList, str, null);
        }
    }

    public void j(String str, Object... objArr) {
        if (TextUtils.isEmpty(str)) {
            TapjoyLog.d("TJAdUnitJSBridge", "invokeJSCallback -- no callbackID provided");
            return;
        }
        ArrayList<?> arrayList = new ArrayList<>(Arrays.asList(objArr));
        z zVar = this.b;
        if (zVar != null) {
            zVar.a(arrayList, "", str);
        }
    }

    public void k(String str, int i, int i2) {
        HashMap map = new HashMap();
        map.put("orientation", str);
        map.put("width", Integer.valueOf(i));
        map.put("height", Integer.valueOf(i2));
        h("orientationChanged", map);
    }

    public void l() {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoComplete");
        h("videoEvent", map);
    }

    public void m(String str) {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoError");
        map.put("error", str);
        h("videoEvent", map);
    }

    public void n(String str) {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoInfo");
        map.put("info", str);
        h("videoEvent", map);
    }

    public void o(int i) {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoPause");
        map.put("currentTime", Integer.valueOf(i));
        h("videoEvent", map);
    }

    @Override // com.tapjoy.TJWebViewJSInterfaceListener
    public void onDispatchMethod(String str, JSONObject jSONObject) {
        if (!this.f8033e) {
            TapjoyLog.d("TJAdUnitJSBridge", "Bridge currently disabled. Adding " + str + " to message queue");
            this.l.add(new Pair(str, jSONObject));
            return;
        }
        String strOptString = null;
        try {
            strOptString = jSONObject.optString("callbackId", null);
            JSONObject jSONObject2 = jSONObject.getJSONObject("data");
            Method method = k.class.getMethod(str, JSONObject.class, String.class);
            TapjoyLog.d("TJAdUnitJSBridge", "Dispatching method: " + method + " with data=" + jSONObject2 + "; callbackID=" + strOptString);
            if (this.b == null) {
                return;
            }
            method.invoke(this, jSONObject2, strOptString);
        } catch (Exception e2) {
            e2.printStackTrace();
            j(strOptString, Boolean.FALSE);
        }
    }

    public void p(int i) {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoProgress");
        map.put("currentTime", Integer.valueOf(i));
        h("videoEvent", map);
    }

    public void q(int i, int i2, int i3) {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoReady");
        map.put("videoDuration", Integer.valueOf(i));
        map.put("videoWidth", Integer.valueOf(i2));
        map.put("videoHeight", Integer.valueOf(i3));
        h("videoEvent", map);
    }

    public void r(int i) {
        HashMap map = new HashMap();
        map.put("videoEventName", "videoStart");
        map.put("currentTime", Integer.valueOf(i));
        h("videoEvent", map);
    }

    public void s() {
        h("volumeChanged", this.c.b());
    }

    public void t() {
        try {
            i("onVisibilityStateChange", "hidden");
        } catch (Exception e2) {
            TapjoyLog.e("TJAdUnitJSBridge", "Exception: " + e2.toString());
        }
    }

    public void u() {
        try {
            i("onVisibilityStateChange", "visible");
        } catch (Exception e2) {
            TapjoyLog.e("TJAdUnitJSBridge", "Exception: " + e2.toString());
        }
    }

    public void v(boolean z) {
        this.f8033e = z;
        if (z) {
            f();
        }
    }
}
