package com.bytedance.sdk.component.f.c;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: TNCConfigHandler.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Object f1059d = new Object();
    private Context a;
    private c b = new c();
    private boolean c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1060e;

    public d(Context context, boolean z, int i) {
        this.c = true;
        this.a = context;
        this.c = z;
        this.f1060e = i;
    }

    private c b(JSONObject jSONObject) {
        try {
            c cVar = new c();
            if (jSONObject.has("local_enable")) {
                cVar.a = jSONObject.getInt("local_enable") != 0;
            }
            if (jSONObject.has("probe_enable")) {
                cVar.b = jSONObject.getInt("probe_enable") != 0;
            }
            if (jSONObject.has("local_host_filter")) {
                JSONArray jSONArray = jSONObject.getJSONArray("local_host_filter");
                HashMap map = new HashMap();
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        String string = jSONArray.getString(i);
                        if (!TextUtils.isEmpty(string)) {
                            map.put(string, 0);
                        }
                    }
                }
                cVar.c = map;
            } else {
                cVar.c = null;
            }
            if (jSONObject.has("host_replace_map")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("host_replace_map");
                HashMap map2 = new HashMap();
                if (jSONObject2.length() > 0) {
                    Iterator<String> itKeys = jSONObject2.keys();
                    while (itKeys.hasNext()) {
                        String next = itKeys.next();
                        String string2 = jSONObject2.getString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string2)) {
                            map2.put(next, string2);
                        }
                    }
                }
                cVar.f1055d = map2;
            } else {
                cVar.f1055d = null;
            }
            cVar.f1056e = jSONObject.optInt("req_to_cnt", cVar.f1056e);
            cVar.f1057f = jSONObject.optInt("req_to_api_cnt", cVar.f1057f);
            cVar.f1058g = jSONObject.optInt("req_to_ip_cnt", cVar.f1058g);
            cVar.h = jSONObject.optInt("req_err_cnt", cVar.h);
            cVar.i = jSONObject.optInt("req_err_api_cnt", cVar.i);
            cVar.j = jSONObject.optInt("req_err_ip_cnt", cVar.j);
            cVar.k = jSONObject.optInt("update_interval", cVar.k);
            cVar.l = jSONObject.optInt("update_random_range", cVar.l);
            cVar.m = jSONObject.optString("http_code_black", cVar.m);
            return cVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void a() {
        if (this.c) {
            String string = this.a.getSharedPreferences(g.a().a(this.f1060e).a(), 0).getString("tnc_config_str", null);
            if (TextUtils.isEmpty(string)) {
                com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", "loadLocalConfig: no existed");
                return;
            }
            try {
                c cVarB = b(new JSONObject(string));
                if (cVarB != null) {
                    this.b = cVarB;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("loadLocalConfig: ");
                sb.append(cVarB == null ? "null" : cVarB.toString());
                com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", sb.toString());
            } catch (Throwable th) {
                th.printStackTrace();
                com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", "loadLocalConfig: except: " + th.getMessage());
            }
        }
    }

    public void a(JSONObject jSONObject) {
        if (!this.c) {
            com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", "handleConfigChanged: no mainProc");
            return;
        }
        g.a().a(this.f1060e).e();
        try {
            boolean z = jSONObject.optInt("ttnet_url_dispatcher_enabled", 0) > 0;
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("ttnet_dispatch_actions");
            JSONObject jSONObject2 = null;
            if (g.a().a(this.f1060e).c() && z && jSONArrayOptJSONArray != null) {
                ArrayList<JSONObject> arrayList = new ArrayList();
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObject3 = ((JSONObject) jSONArrayOptJSONArray.get(i)).getJSONObject("param");
                    if (jSONObject3.optString("service_name", "").equals("idc_selection")) {
                        arrayList.add(jSONObject3.getJSONObject("strategy_info"));
                    }
                }
                if (!arrayList.isEmpty()) {
                    jSONObject2 = new JSONObject();
                    for (JSONObject jSONObject4 : arrayList) {
                        Iterator<String> itKeys = jSONObject4.keys();
                        while (itKeys.hasNext()) {
                            String next = itKeys.next();
                            jSONObject2.put(next, jSONObject4.getString(next));
                        }
                    }
                }
            }
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("tnc_config");
            if (jSONObjectOptJSONObject == null && jSONObject2 == null) {
                com.bytedance.sdk.component.f.d.c.a("TNCConfigHandler", " tnc host_replace_map config is null");
            } else if (jSONObjectOptJSONObject == null) {
                jSONObjectOptJSONObject = new JSONObject();
                jSONObjectOptJSONObject.put("host_replace_map", jSONObject2);
            } else if (jSONObject2 != null) {
                jSONObjectOptJSONObject.put("host_replace_map", jSONObject2);
            }
            c cVarB = b(jSONObjectOptJSONObject);
            StringBuilder sb = new StringBuilder();
            sb.append("handleConfigChanged, newConfig: ");
            sb.append(cVarB == null ? "null" : cVarB.toString());
            com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", sb.toString());
            if (cVarB == null) {
                synchronized (f1059d) {
                    this.a.getSharedPreferences(g.a().a(this.f1060e).a(), 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.component.f.d.d.a(this.a, 1, "", this.f1060e);
                }
            } else {
                this.b = cVarB;
                String string = jSONObjectOptJSONObject.toString();
                synchronized (f1059d) {
                    this.a.getSharedPreferences(g.a().a(this.f1060e).a(), 0).edit().putString("tnc_config_str", string).apply();
                    com.bytedance.sdk.component.f.d.d.a(this.a, 1, string, this.f1060e);
                }
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                this.b = new c();
                synchronized (f1059d) {
                    this.a.getSharedPreferences(g.a().a(this.f1060e).a(), 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.component.f.d.d.a(this.a, 1, "", this.f1060e);
                }
            } catch (Throwable th2) {
                synchronized (f1059d) {
                    this.a.getSharedPreferences(g.a().a(this.f1060e).a(), 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.component.f.d.d.a(this.a, 1, "", this.f1060e);
                    throw th2;
                }
            }
        }
    }

    public void b() {
        try {
            String strA = com.bytedance.sdk.component.f.d.d.a(this.a, 1, this.f1060e);
            if (TextUtils.isEmpty(strA)) {
                com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", "loadLocalConfigForOtherProcess, data empty");
                return;
            }
            c cVarB = b(new JSONObject(strA));
            StringBuilder sb = new StringBuilder();
            sb.append("loadLocalConfigForOtherProcess, config: ");
            sb.append(cVarB == null ? "null" : cVarB.toString());
            com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", sb.toString());
            if (cVarB != null) {
                this.b = cVarB;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.f.d.c.b("TNCConfigHandler", "loadLocalConfigForOtherProcess, except: " + th.getMessage());
        }
    }

    public c c() {
        return this.b;
    }
}
