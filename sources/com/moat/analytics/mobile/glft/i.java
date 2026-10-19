package com.moat.analytics.mobile.glft;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.json.qc;
import com.moat.analytics.mobile.glft.u;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class i {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final WeakReference<WebView> f7655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<b, String> f7656f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final LinkedList<String> f7657g;
    private final long i;
    private com.moat.analytics.mobile.glft.a.b.a<String> j;
    private final List<String> k;
    private final a l;
    private final BroadcastReceiver m;
    private final BroadcastReceiver n;
    private int b = 0;
    private boolean c = false;
    boolean a = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f7654d = false;
    private final AtomicBoolean h = new AtomicBoolean(false);

    enum a {
        WEBVIEW,
        NATIVE_DISPLAY,
        NATIVE_VIDEO
    }

    i(WebView webView, a aVar) {
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: com.moat.analytics.mobile.glft.i.2
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    i.this.c();
                } catch (Exception e2) {
                    l.a(e2);
                }
                if (System.currentTimeMillis() - i.this.i > 10000) {
                    i.this.e();
                }
            }
        };
        this.m = broadcastReceiver;
        BroadcastReceiver broadcastReceiver2 = new BroadcastReceiver() { // from class: com.moat.analytics.mobile.glft.i.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                try {
                    i.this.d();
                } catch (Exception e2) {
                    l.a(e2);
                }
            }
        };
        this.n = broadcastReceiver2;
        this.f7655e = new WeakReference<>(webView);
        this.l = aVar;
        this.j = com.moat.analytics.mobile.glft.a.b.a.a();
        this.f7657g = new LinkedList<>();
        this.k = new ArrayList();
        this.f7656f = new WeakHashMap();
        this.i = System.currentTimeMillis();
        IntentFilter intentFilter = new IntentFilter("UPDATE_METADATA");
        IntentFilter intentFilter2 = new IntentFilter("UPDATE_VIEW_INFO");
        LocalBroadcastManager.getInstance(g()).registerReceiver(broadcastReceiver, intentFilter);
        LocalBroadcastManager.getInstance(g()).registerReceiver(broadcastReceiver2, intentFilter2);
        try {
            n.a(3, "MoatJavaScriptBridge", this, b() ? "bridge installed" : "bridge not installed");
        } catch (Exception e2) {
            l.a(e2);
        }
    }

    private boolean a(WebView webView, String str) {
        StringBuilder sb;
        String str2;
        if (webView == null) {
            sb = new StringBuilder();
            str2 = "WebView is null. Can't ";
        } else {
            if (webView.getSettings().getJavaScriptEnabled()) {
                return true;
            }
            sb = new StringBuilder();
            str2 = "JavaScript is not enabled in the given WebView. Can't ";
        }
        sb.append(str2);
        sb.append(str);
        n.a(6, "MoatJavaScriptBridge", this, sb.toString());
        return false;
    }

    private boolean b() {
        if (i() != null && !a(i(), "installBridge")) {
            return false;
        }
        this.a = true;
        h.a().a(g(), this);
        return true;
    }

    static /* synthetic */ int c(i iVar) {
        int i = iVar.b;
        iVar.b = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        try {
            if (u.d().a() == u.d.OFF) {
                return;
            }
            if (!this.f7654d) {
                n.a(3, "MoatJavaScriptBridge", this, "Ready for communication (setting environment variables).");
                this.f7654d = true;
            }
            String str = String.format("javascript:(function(d,l){function m(){function d(a){var b=a.c,c=a.a,f=a.b;a=a.f;var g=[];if(c)b[c]&&g.push(b[c].fn[0]);else for(key in b)if(b[key])for(var e=0,h=b[key].fn.length;e<h;e++)g.push(b[key].fn[e]);e=0;for(h=g.length;e<h;e++){var k=g[e];if('function'===typeof k)try{f?k(f):k()}catch(l){}a&&delete b[c]}}function f(a,b,c){'function'===typeof a&&(b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]})}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};this.g=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea;c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={c:iymv,b:a,a:ewat};briz?d(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={c:bjmk,f:!0};b!==kuea&&(c.b=a,c.a=a);d(c)};this.egpw=function(a){var b=a||kuea;ryup[b]=!0;var c={c:uqaj,f:!0};b!==kuea&&(c.b=a,c.a=a);d(c)};this.sglu=function(a){var b={c:yhgt,b:a.event||a,f:!1};(a.adKey||kuea)!==kuea&&(b.a=a.adKey);d(b);return 0<Object.keys(yhgt).length}}'undefined'===typeof d.MoatMAK&&(d.MoatMAK=new m,d.MoatMAK.g(l),d.__zMoatInit__=!0)})(window,%s);", k());
            if (h()) {
                i().loadUrl(str);
            }
        } catch (Exception e2) {
            n.a("MoatJavaScriptBridge", this, "Failed to initialize communication (did not set environment variables).", e2);
        }
    }

    private boolean c(String str) {
        if (this.a) {
            return true;
        }
        n.a(6, "MoatJavaScriptBridge", this, "Bridge is not installed in the given WebView. Can't " + str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(19)
    public void d() {
        String string;
        try {
            if (u.d().a() == u.d.OFF) {
                return;
            }
            if (this.f7655e != null && h() && (!this.c || i().getUrl() != null)) {
                if (i().getUrl() != null) {
                    this.c = true;
                }
                Iterator<Map.Entry<b, String>> it = this.f7656f.entrySet().iterator();
                while (it.hasNext()) {
                    b key = it.next().getKey();
                    if (key == null || key.c() == null) {
                        n.a(3, "MoatJavaScriptBridge", this, "Tracker has no subject");
                        if (!key.c) {
                            c(key);
                        }
                    }
                    if (key.f7638d) {
                        d(String.format("javascript: MoatMAK.mqjh(\"%s\")", key.b));
                        String str = String.format("javascript: MoatMAK.sglu(%s)", key.a());
                        if (Build.VERSION.SDK_INT >= 19) {
                            i().evaluateJavascript(str, new ValueCallback<String>() { // from class: com.moat.analytics.mobile.glft.i.1
                                @Override // android.webkit.ValueCallback
                                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                                public void onReceiveValue(String str2) {
                                    String str3 = "null";
                                    if (str2 != null && !str2.equalsIgnoreCase("null") && !str2.equalsIgnoreCase("false")) {
                                        if (str2.equalsIgnoreCase("true")) {
                                            if (i.this.b != 0) {
                                                n.a(3, "MoatJavaScriptBridge", i.this, "Javascript has found ad");
                                                i.this.e();
                                            }
                                            i.this.b = 0;
                                            return;
                                        }
                                        n.a(3, "MoatJavaScriptBridge", i.this, "Received unusual value from Javascript:" + str2);
                                        return;
                                    }
                                    i iVar = i.this;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("Received value is:");
                                    if (str2 != null) {
                                        str3 = "(String)" + str2;
                                    }
                                    sb.append(str3);
                                    n.a(3, "MoatJavaScriptBridge", iVar, sb.toString());
                                    if (i.this.b >= 50) {
                                        i.this.f();
                                    }
                                    i.c(i.this);
                                }
                            });
                        } else {
                            i().loadUrl(str);
                        }
                    }
                }
                return;
            }
            if (this.f7655e == null) {
                string = "WebView ref became null, stopping tracking loop";
            } else {
                StringBuilder sb = new StringBuilder();
                sb.append("WebView became null");
                sb.append(i() == null ? "" : "based on null url");
                sb.append(", stopping tracking loop");
                string = sb.toString();
            }
            n.a(3, "MoatJavaScriptBridge", this, string);
            f();
        } catch (Exception e2) {
            l.a(e2);
            f();
        }
    }

    private void d(b bVar) {
        n.a(3, "MoatJavaScriptBridge", this, "Stopping view update loop");
        if (bVar != null) {
            h.a().a(bVar);
        }
    }

    private void d(String str) {
        if (h()) {
            i().loadUrl(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        n.a(3, "MoatJavaScriptBridge", this, "Stopping metadata reporting loop");
        h.a().a(this);
        LocalBroadcastManager.getInstance(g()).unregisterReceiver(this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        n.a(3, "MoatJavaScriptBridge", this, "Cleaning up");
        e();
        Iterator<Map.Entry<b, String>> it = this.f7656f.entrySet().iterator();
        while (it.hasNext()) {
            d(it.next().getKey());
        }
        this.f7656f.clear();
        LocalBroadcastManager.getInstance(g()).unregisterReceiver(this.n);
    }

    private Context g() {
        return ((j) MoatAnalytics.getInstance()).b.get();
    }

    private boolean h() {
        return i() != null;
    }

    private WebView i() {
        return this.f7655e.get();
    }

    private String j() {
        if (this.j.c()) {
            return this.j.b();
        }
        String string = "_unknown_";
        try {
            if (h()) {
                Context context = i().getContext();
                string = context.getPackageManager().getApplicationLabel(context.getApplicationContext().getApplicationInfo()).toString();
                this.j = com.moat.analytics.mobile.glft.a.b.a.a(string);
            } else {
                n.a(3, "MoatJavaScriptBridge", this, "Can't get app name, WebView is null.");
            }
        } catch (Exception e2) {
            l.a(e2);
        }
        return string;
    }

    private String k() {
        try {
            HashMap map = new HashMap();
            String strJ = j();
            String string = Integer.toString(Build.VERSION.SDK_INT);
            String strB = p.b();
            String str = this.l == a.WEBVIEW ? "0" : "1";
            map.put("versionHash", "0bbafd1ca55aa33048dfa8f9ed6e5644a7625d79");
            map.put("appName", strJ);
            map.put("namespace", "GLFT");
            map.put("version", "2.1.0");
            map.put(qc.p0, string);
            map.put("isNative", str);
            if (strB != null) {
                map.put("aqzx", strB);
            }
            return new JSONObject(map).toString();
        } catch (Exception unused) {
            return JsonUtils.EMPTY_JSON;
        }
    }

    void a() {
        n.a(3, "MoatJavaScriptBridge", this, "webViewReady");
        this.h.compareAndSet(false, true);
        e();
        Iterator<String> it = this.k.iterator();
        while (it.hasNext()) {
            d(it.next());
        }
        this.k.clear();
    }

    void a(b bVar) {
        if (bVar != null) {
            n.a(3, "MoatJavaScriptBridge", this, "adding tracker" + bVar.b);
            this.f7656f.put(bVar, "");
        }
    }

    void a(String str) {
        String str2 = String.format("javascript: MoatMAK.crts(%s)", str);
        if (this.h.get()) {
            d(str2);
        } else {
            this.k.add(str2);
        }
    }

    void a(String str, JSONObject jSONObject) {
        String string = jSONObject.toString();
        if (this.h.get() && h()) {
            d(String.format("javascript:%s.dispatchEvent(%s);", str, string));
        } else {
            this.f7657g.add(string);
        }
    }

    void b(String str) {
        n.a(3, "MoatJavaScriptBridge", this, "flushDispatchQueue");
        this.h.compareAndSet(false, true);
        if (this.f7657g.size() >= 200) {
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < 10; i++) {
                linkedList.addFirst(this.f7657g.removeFirst());
            }
            int iMin = Math.min(Math.min(this.f7657g.size() / 200, 10) + 200, this.f7657g.size());
            for (int i2 = 0; i2 < iMin; i2++) {
                this.f7657g.removeFirst();
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                this.f7657g.addFirst((String) it.next());
            }
        }
        int i3 = 0;
        while (!this.f7657g.isEmpty() && i3 < 200) {
            i3++;
            StringBuilder sb = new StringBuilder();
            boolean z = true;
            while (!this.f7657g.isEmpty() && i3 < 200) {
                i3++;
                String first = this.f7657g.getFirst();
                if (sb.length() + first.length() > 2000) {
                    break;
                }
                this.f7657g.removeFirst();
                if (z) {
                    z = false;
                } else {
                    sb.append(",");
                }
                sb.append(first);
            }
            d(String.format("javascript:%s.dispatchMany([%s])", str, sb.toString()));
        }
        this.f7657g.clear();
    }

    boolean b(b bVar) {
        try {
            if (h() && a(i(), "startTracking") && c("startTracking")) {
                if (bVar.c() == null) {
                    if (!bVar.c) {
                        n.a(3, "MoatJavaScriptBridge", this, "Tracker subject is null, won't start tracking");
                        return false;
                    }
                    n.a(3, "MoatJavaScriptBridge", this, "Tracker subject is null at start");
                }
                n.a(3, "MoatJavaScriptBridge", this, "Starting tracking on tracker" + bVar.b);
                d(String.format("javascript: MoatMAK.mqjh(\"%s\")", bVar.b));
                h.a().a(g(), bVar);
                return true;
            }
            return false;
        } catch (Exception e2) {
            n.a("MoatJavaScriptBridge", this, "Failed to initialize impression start.", e2);
            return false;
        }
    }

    boolean c(b bVar) {
        boolean z = false;
        if (h() && a(i(), "stopTracking") && c("stopTracking")) {
            try {
                n.a(3, "MoatJavaScriptBridge", this, "Ending tracking on tracker" + bVar.b);
                d(String.format("javascript: MoatMAK.egpw(\"%s\")", bVar.b));
            } catch (Exception e2) {
                n.a("MoatJavaScriptBridge", this, "Failed to end impression.", e2);
            }
            z = true;
        }
        if (this.l == a.NATIVE_DISPLAY) {
            d(bVar);
        } else {
            f();
        }
        this.f7656f.remove(bVar);
        return z;
    }

    protected void finalize() throws Throwable {
        try {
            super.finalize();
            n.a(3, "MoatJavaScriptBridge", this, "finalize");
            f();
        } catch (Exception e2) {
            l.a(e2);
        }
    }
}
