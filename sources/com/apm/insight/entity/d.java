package com.apm.insight.entity;

import android.os.Environment;
import com.apm.insight.i;
import com.apm.insight.l.l;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class d {
    private static String a;
    private static JSONObject b;

    private static void a() {
        JSONObject jSONObject;
        if (a == null) {
            a = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/data/" + i.g().getPackageName() + "/AutomationTestInfo.json";
        }
        if (b == null) {
            try {
                b = new JSONObject(com.apm.insight.l.i.c(a));
            } catch (IOException unused) {
                jSONObject = new JSONObject();
                b = jSONObject;
            } catch (JSONException unused2) {
                jSONObject = new JSONObject();
                b = jSONObject;
            }
        }
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            c(jSONObject);
        } catch (Throwable unused) {
        }
    }

    public static void b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            d(jSONObject);
        } catch (Throwable unused) {
        }
    }

    private static void c(JSONObject jSONObject) {
        Object objOpt;
        a();
        JSONObject jSONObject2 = b;
        if (jSONObject2 == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject2.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!"slardar_filter".equals(next) && (objOpt = b.opt(next)) != null) {
                try {
                    jSONObject.put(next, objOpt);
                } catch (JSONException unused) {
                }
            }
        }
    }

    private static void d(JSONObject jSONObject) {
        a();
        JSONObject jSONObject2 = b;
        if (jSONObject2 == null) {
            return;
        }
        JSONObject jSONObjectOptJSONObject = jSONObject2.optJSONObject("slardar_filter");
        if (l.a(jSONObjectOptJSONObject)) {
            return;
        }
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("filters");
        if (jSONObjectOptJSONObject2 == null) {
            jSONObjectOptJSONObject2 = new JSONObject();
            try {
                jSONObject.put("filters", jSONObjectOptJSONObject2);
            } catch (JSONException unused) {
            }
        }
        a.b(jSONObjectOptJSONObject2, jSONObjectOptJSONObject);
    }
}
