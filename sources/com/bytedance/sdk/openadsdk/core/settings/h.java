package com.bytedance.sdk.openadsdk.core.settings;

import android.text.TextUtils;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: MediationInitConfigs.java */
/* JADX INFO: loaded from: classes2.dex */
public class h {
    public static final h a = new h("");
    private final HashMap<String, a> b = new HashMap<>();

    /* JADX INFO: compiled from: MediationInitConfigs.java */
    public static class a {
        public final String a;
        public String b;
        public int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1682d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public String f1683e;

        public a(JSONObject jSONObject) {
            this.a = jSONObject.optString("name");
            this.b = jSONObject.optString("app_id");
            this.c = jSONObject.optInt("init_thread", 2);
            this.f1682d = jSONObject.optInt("request_after_init", 2);
            this.f1683e = jSONObject.optString("class_name");
        }
    }

    public h(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    a aVar = new a(jSONObjectOptJSONObject);
                    this.b.put(aVar.a, aVar);
                }
            }
        } catch (JSONException e2) {
            com.bytedance.sdk.component.utils.l.e("MediationInitConfigs", e2.getMessage());
        }
    }
}
