package com.json;

import com.json.o2;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class q8 {
    private String a;
    private JSONObject b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f6528d;

    public q8(JSONObject jSONObject) {
        this.a = jSONObject.optString(o2.f.b);
        this.b = jSONObject.optJSONObject(o2.f.c);
        this.c = jSONObject.optString("success");
        this.f6528d = jSONObject.optString(o2.f.f6481e);
    }

    public String a() {
        return this.f6528d;
    }

    public String b() {
        return this.a;
    }

    public JSONObject c() {
        return this.b;
    }

    public String d() {
        return this.c;
    }

    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(o2.f.b, this.a);
            jSONObject.put(o2.f.c, this.b);
            jSONObject.put("success", this.c);
            jSONObject.put(o2.f.f6481e, this.f6528d);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }
}
