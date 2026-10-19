package com.bytedance.sdk.component.adexpress.dynamic.b;

import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicDiffPlugin.java */
/* JADX INFO: loaded from: classes.dex */
public class d {
    public List<a> a;
    public String b;
    public String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f725d;

    /* JADX INFO: compiled from: DynamicDiffPlugin.java */
    public static class a {
        public int a;
        public JSONObject b;
    }

    public static d a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        String strOptString = jSONObject.optString("custom_components");
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(strOptString);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    a aVar = new a();
                    aVar.a = jSONObjectOptJSONObject.optInt("id");
                    aVar.b = new JSONObject(jSONObjectOptJSONObject.optString("componentLayout"));
                    arrayList.add(aVar);
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        dVar.a = arrayList;
        dVar.b = jSONObject.optString("diff_data");
        dVar.c = jSONObject.optString("style_diff");
        dVar.f725d = jSONObject.optString("tag_diff");
        return dVar;
    }
}
