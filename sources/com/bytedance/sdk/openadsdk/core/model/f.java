package com.bytedance.sdk.openadsdk.core.model;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AutoTestModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class f {
    private String a;
    private List<String> b;

    public f(String str) {
        this.a = "";
        this.b = new ArrayList();
        HashMap<String, Object> map = TextUtils.isEmpty(str) ? new HashMap<>() : a(str);
        try {
            this.a = (String) map.get("auto_test_param");
            JSONArray jSONArray = new JSONArray((String) map.get("auto_test_hosts"));
            this.b = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.b.add(jSONArray.optString(i));
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.l.e("AutoTestModel", e2.getMessage());
        }
    }

    private static final HashMap<String, Object> a(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap<>();
        }
        HashMap<String, Object> map = new HashMap<>();
        try {
            JSONArray jSONArray = new JSONArray(str);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                map.put(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.optString("value"));
            }
            return map;
        } catch (Exception unused) {
            return new HashMap<>();
        }
    }

    public String a() {
        return this.a;
    }

    public List<String> b() {
        return this.b;
    }
}
