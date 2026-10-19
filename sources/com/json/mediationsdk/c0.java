package com.json.mediationsdk;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.e5;
import com.json.e9;
import com.json.environment.ContextProvider;
import com.json.environment.StringUtils;
import com.json.k0;
import com.json.mediationsdk.IronSource;
import com.json.mediationsdk.config.ConfigFile;
import com.json.mediationsdk.logger.IronLog;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.json.mediationsdk.utils.IronSourceUtils;
import com.json.o8;
import com.json.qc;
import com.json.z6;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
class c0 {
    private static c0 a;
    private final z6 c = e9.h().d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final e5 f6250d = e9.h().c();
    private JSONObject b = new JSONObject();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c0 c0Var = c0.this;
                c0Var.e(c0Var.h());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private c0() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(JSONObject jSONObject) {
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            d(next, jSONObject.opt(next));
        }
    }

    public static synchronized c0 f() {
        if (a == null) {
            a = new c0();
        }
        return a;
    }

    private void g() {
        e(j());
        e(i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject h() {
        String str;
        JSONObject jSONObject = new JSONObject();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext != null) {
            try {
                String strP = this.f6250d.p(applicationContext);
                String strA = this.f6250d.a(applicationContext);
                if (TextUtils.isEmpty(strP)) {
                    strP = this.f6250d.J(applicationContext);
                    str = !TextUtils.isEmpty(strP) ? IronSourceConstants.TYPE_UUID : "";
                } else {
                    str = IronSourceConstants.TYPE_GAID;
                }
                if (!TextUtils.isEmpty(strP)) {
                    jSONObject.put(qc.b, strP);
                    jSONObject.put(qc.D, str);
                }
                if (!TextUtils.isEmpty(strA)) {
                    jSONObject.put(qc.E, Boolean.parseBoolean(strA));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return jSONObject;
    }

    void b() {
        try {
            new Thread(new a()).start();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    synchronized void d(String str, Object obj) {
        try {
            this.b.put(str, obj);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    JSONObject i() {
        JSONObject jSONObject = new JSONObject();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        int iD = this.f6250d.d();
        int iJ = this.f6250d.j();
        float fH = this.f6250d.h();
        if (applicationContext != null) {
            try {
                ConcurrentHashMap<String, List<String>> concurrentHashMapC = c.b().c();
                concurrentHashMapC.putAll(o8.b().c());
                JSONObject jSONObject2 = new JSONObject();
                for (Map.Entry<String, List<String>> entry : concurrentHashMapC.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                Boolean boolK0 = p.o().K0();
                if (boolK0 != null) {
                    jSONObject.put("consent", boolK0.booleanValue());
                }
                String strD = this.f6250d.D(applicationContext);
                if (!TextUtils.isEmpty(strD)) {
                    jSONObject.put("asid", strD);
                }
                jSONObject.put(qc.f6532f, IronSourceUtils.getConnectionType(applicationContext));
                jSONObject.put(qc.V, this.f6250d.m(applicationContext));
                jSONObject.put(qc.y, this.f6250d.f());
                jSONObject.put("bat", this.f6250d.w(applicationContext));
                jSONObject.put(qc.z, this.f6250d.n());
                jSONObject.put(qc.B, jSONObject2);
                jSONObject.put(qc.j, new Date().getTime());
                jSONObject.put(qc.f6533g, iD);
                jSONObject.put(qc.h, iJ);
                jSONObject.put(qc.M, String.valueOf(fH));
                jSONObject.put(qc.l, this.c.a(IronSource.AD_UNIT.INTERSTITIAL));
                jSONObject.put(qc.k, this.c.a(IronSource.AD_UNIT.REWARDED_VIDEO));
                jSONObject.put(qc.G, this.f6250d.s());
            } catch (JSONException e2) {
                IronLog.INTERNAL.error("got the following error " + e2.getMessage());
                e2.printStackTrace();
            }
        }
        return jSONObject;
    }

    JSONObject j() {
        JSONObject jSONObject = new JSONObject();
        Context applicationContext = ContextProvider.getInstance().getApplicationContext();
        if (applicationContext != null) {
            try {
                String language = applicationContext.getResources().getConfiguration().locale.getLanguage();
                if (!TextUtils.isEmpty(language)) {
                    jSONObject.put(qc.A, StringUtils.toUpperCase(language));
                }
                String pluginType = ConfigFile.getConfigFile().getPluginType();
                if (!TextUtils.isEmpty(pluginType)) {
                    jSONObject.put(qc.n, pluginType);
                }
                String strO = this.f6250d.o();
                if (strO != null) {
                    jSONObject.put(qc.p, strO);
                    jSONObject.put(qc.o, strO.replaceAll("[^0-9/.]", ""));
                }
                String strS = this.f6250d.s(applicationContext);
                if (strS != null) {
                    jSONObject.put("auid", strS);
                }
                jSONObject.put(qc.m, IronSourceUtils.getSessionId());
                jSONObject.put("appKey", p.o().p());
                jSONObject.put(qc.f6530d, this.f6250d.j(applicationContext));
                jSONObject.put(qc.f6531e, IronSourceUtils.getSDKVersion());
                jSONObject.put(qc.i, Build.MODEL);
                jSONObject.put(qc.q, "android");
                jSONObject.put(qc.r, Build.MANUFACTURER);
                jSONObject.put(qc.s, String.valueOf(Build.VERSION.SDK_INT));
                jSONObject.put(qc.t, applicationContext.getPackageName());
                jSONObject.put(qc.u, k0.b(applicationContext, applicationContext.getPackageName()));
                String strQ = p.o().q();
                if (!TextUtils.isEmpty(strQ)) {
                    jSONObject.put(qc.v, strQ);
                }
            } catch (JSONException e2) {
                IronLog.INTERNAL.error("got the following error " + e2.getMessage());
                e2.printStackTrace();
            }
        }
        return jSONObject;
    }

    JSONObject k() {
        g();
        return this.b;
    }
}
