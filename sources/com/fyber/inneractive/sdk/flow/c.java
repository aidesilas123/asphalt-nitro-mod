package com.fyber.inneractive.sdk.flow;

import android.app.Application;
import android.content.SharedPreferences;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveError;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Runnable {
    public final /* synthetic */ InneractiveError a;
    public final /* synthetic */ d b;

    public c(d dVar, InneractiveError inneractiveError) {
        this.b = dVar;
        this.a = inneractiveError;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        String string;
        T t = this.b.b;
        if (t == 0 || (str = t.h) == null) {
            return;
        }
        Map<String, String> map = t.p;
        if (map == null && t.q == null) {
            return;
        }
        com.fyber.inneractive.sdk.config.i iVar = IAConfigManager.M.u.b;
        String str2 = d.f2000e;
        if (iVar.a.containsKey("max_failed_creatives_interval_hours")) {
            str2 = iVar.a.get("max_failed_creatives_interval_hours");
        }
        String str3 = d.f2001f;
        if (iVar.a.containsKey("max_failed_creatives_per_interval")) {
            str3 = iVar.a.get("max_failed_creatives_per_interval");
        }
        int iA = com.fyber.inneractive.sdk.util.q.a(str2, 24);
        int iA2 = com.fyber.inneractive.sdk.util.q.a(str3, 1);
        Application application = com.fyber.inneractive.sdk.util.l.a;
        if (application != null) {
            SharedPreferences sharedPreferences = application.getSharedPreferences("IAConfigPrefs", 0);
            JSONArray jSONArray = new JSONArray();
            try {
                jSONArray = new JSONArray(sharedPreferences.getString("lt", "[]"));
            } catch (JSONException unused) {
            }
            CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
            if (iVar.a(this.b.a, false) && !com.fyber.inneractive.sdk.metrics.a.a(iA, iA2, jSONArray, copyOnWriteArrayList)) {
                copyOnWriteArrayList.add(Long.valueOf(System.currentTimeMillis()));
                if (map != null) {
                    try {
                        string = new JSONObject(map).toString();
                    } catch (Throwable unused2) {
                        string = "";
                    }
                } else {
                    string = this.b.b.q;
                }
                d dVar = this.b;
                InneractiveAdRequest inneractiveAdRequest = dVar.c;
                T t2 = dVar.b;
                InneractiveError inneractiveError = this.a;
                s.a aVar = new s.a(com.fyber.inneractive.sdk.network.r.IA_AD_FAILURE_DATA, inneractiveAdRequest, t2, dVar.f2002d);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("raw_response", str);
                } catch (Exception unused3) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "raw_response", str);
                }
                try {
                    jSONObject.put("headers", string);
                } catch (Exception unused4) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "headers", string);
                }
                String strDescription = inneractiveError.description();
                try {
                    jSONObject.put("error_code", strDescription);
                } catch (Exception unused5) {
                    IAlog.e("Got exception adding param to json object: %s, %s", "error_code", strDescription);
                }
                aVar.f2120f.put(jSONObject);
                aVar.a((String) null);
            }
            sharedPreferences.edit().putString("lt", new JSONArray((Collection) copyOnWriteArrayList).toString()).apply();
        }
    }
}
