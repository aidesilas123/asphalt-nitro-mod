package com.gameloft.android.ANMP.GloftAGHM.PackageUtils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.ArrayMap;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.gameloft.android.ANMP.GloftAGHM.GLUtils.SUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.Field;
import java.net.ProxySelector;
import java.util.Iterator;
import org.apache.http.HttpHost;

/* JADX INFO: loaded from: classes2.dex */
public class AdBlockerPlugin implements com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a {
    private e a = null;

    private static Object getFieldValueSafely(Field field, Object obj) throws IllegalAccessException, IllegalArgumentException {
        boolean zIsAccessible = field.isAccessible();
        field.setAccessible(true);
        Object obj2 = field.get(obj);
        field.setAccessible(zIsAccessible);
        return obj2;
    }

    public static String[] getProxyDetails() {
        String[] strArr = new String[3];
        try {
            strArr[0] = System.getProperty("http.proxyHost");
            strArr[1] = System.getProperty("http.proxyPort");
        } catch (Exception unused) {
        }
        if (strArr[0] != null) {
            return strArr;
        }
        return null;
    }

    public static boolean setProxyForWebview(WebView webView) {
        int i = Build.VERSION.SDK_INT;
        return i <= 13 ? setProxyUpToHC(webView, "", 0) : i <= 15 ? setProxyICS(webView, "", 0) : i <= 18 ? setProxyJB(webView, "", 0) : setProxyKKPlus(webView, "", 0, "android.app.Application");
    }

    public static boolean setProxyICS(WebView webView, String str, int i) {
        try {
            Class.forName("android.webkit.JWebCoreJavaBridge").getDeclaredMethod("updateProxy", Class.forName("android.net.ProxyProperties")).invoke(getFieldValueSafely(Class.forName("android.webkit.BrowserFrame").getDeclaredField("sJavaBridge"), getFieldValueSafely(Class.forName("android.webkit.WebViewCore").getDeclaredField("mBrowserFrame"), getFieldValueSafely(Class.forName("android.webkit.WebView").getDeclaredField("mWebViewCore"), webView))), Class.forName("android.net.ProxyProperties").getConstructor(String.class, Integer.TYPE, String.class).newInstance(str, Integer.valueOf(i), null));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean setProxyJB(WebView webView, String str, int i) {
        try {
            Class.forName("android.webkit.JWebCoreJavaBridge").getDeclaredMethod("updateProxy", Class.forName("android.net.ProxyProperties")).invoke(getFieldValueSafely(Class.forName("android.webkit.BrowserFrame").getDeclaredField("sJavaBridge"), getFieldValueSafely(Class.forName("android.webkit.WebViewCore").getDeclaredField("mBrowserFrame"), getFieldValueSafely(Class.forName("android.webkit.WebViewClassic").getDeclaredField("mWebViewCore"), Class.forName("android.webkit.WebViewClassic").getDeclaredMethod("fromWebView", Class.forName("android.webkit.WebView")).invoke(null, webView)))), Class.forName("android.net.ProxyProperties").getConstructor(String.class, Integer.TYPE, String.class).newInstance(str, Integer.valueOf(i), null));
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    @SuppressLint({"NewApi"})
    private static boolean setProxyKKPlus(WebView webView, String str, int i, String str2) {
        Context applicationContext = SUtils.getApplicationContext();
        System.setProperty("http.proxyHost", str);
        System.setProperty("http.proxyPort", i + "");
        System.setProperty("https.proxyHost", str);
        System.setProperty("https.proxyPort", i + "");
        try {
            Field field = Class.forName(str2).getField("mLoadedApk");
            field.setAccessible(true);
            Object obj = field.get(applicationContext);
            Field declaredField = Class.forName("android.app.LoadedApk").getDeclaredField("mReceivers");
            declaredField.setAccessible(true);
            Iterator it = ((ArrayMap) declaredField.get(obj)).values().iterator();
            while (it.hasNext()) {
                for (Object obj2 : ((ArrayMap) it.next()).keySet()) {
                    Class<?> cls = obj2.getClass();
                    if (cls.getName().contains("ProxyChangeListener")) {
                        cls.getDeclaredMethod("onReceive", Context.class, Intent.class).invoke(obj2, applicationContext, new Intent("android.intent.action.PROXY_CHANGE"));
                    }
                }
            }
            return true;
        } catch (Exception e2) {
            StringWriter stringWriter = new StringWriter();
            e2.printStackTrace(new PrintWriter(stringWriter));
            String string = stringWriter.toString();
            Log.v("GAME", e2.getMessage());
            Log.v("GAME", string);
            return false;
        }
    }

    private static boolean setProxyUpToHC(WebView webView, String str, int i) {
        Object fieldValueSafely;
        HttpHost httpHost = new HttpHost(str, i);
        try {
            Class<?> cls = Class.forName("android.webkit.Network");
            Object objInvoke = cls.getMethod("getInstance", Context.class).invoke(cls, webView.getContext());
            if (objInvoke == null || (fieldValueSafely = getFieldValueSafely(cls.getDeclaredField("mRequestQueue"), objInvoke)) == null) {
                return false;
            }
            Field declaredField = Class.forName("android.net.http.RequestQueue").getDeclaredField("mProxyHost");
            boolean zIsAccessible = declaredField.isAccessible();
            try {
                declaredField.setAccessible(true);
                declaredField.set(fieldValueSafely, httpHost);
            } catch (Exception unused) {
            } catch (Throwable th) {
                declaredField.setAccessible(zIsAccessible);
                throw th;
            }
            declaredField.setAccessible(zIsAccessible);
            return true;
        } catch (Exception unused2) {
            return false;
        }
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public boolean onActivityResult(int i, int i2, Intent intent) {
        return false;
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPluginStart(Activity activity, ViewGroup viewGroup) {
        if (getProxyDetails() == null || this.a != null) {
            return;
        }
        e eVar = new e(ProxySelector.getDefault());
        this.a = eVar;
        ProxySelector.setDefault(eVar);
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPostNativeResume() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativePause() {
    }

    @Override // com.gameloft.android.ANMP.GloftAGHM.PackageUtils.d.a
    public void onPreNativeResume() {
        if (getProxyDetails() == null || this.a != null) {
            return;
        }
        e eVar = new e(ProxySelector.getDefault());
        this.a = eVar;
        ProxySelector.setDefault(eVar);
    }
}
