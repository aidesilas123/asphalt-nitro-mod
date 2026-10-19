package com.fyber.inneractive.sdk.config;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class i {
    public final Map<String, String> a = new HashMap();
    public final Map<String, h> b = new HashMap();

    public static i a(JSONObject jSONObject) {
        i iVar = new i();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("params");
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("overrides");
        JSONArray jSONArrayNames = jSONObjectOptJSONObject.names();
        for (int i = 0; i < jSONArrayNames.length(); i++) {
            String strOptString = jSONArrayNames.optString(i, null);
            String strOptString2 = jSONObjectOptJSONObject.optString(strOptString, null);
            if (strOptString != null && strOptString2 != null) {
                iVar.a.put(strOptString, strOptString2);
            }
        }
        if (jSONObjectOptJSONObject2 != null) {
            JSONArray jSONArrayNames2 = jSONObjectOptJSONObject2.names();
            for (int i2 = 0; i2 < jSONArrayNames2.length(); i2++) {
                String strOptString3 = jSONArrayNames2.optString(i2, null);
                JSONObject jSONObjectOptJSONObject3 = jSONObjectOptJSONObject2.optJSONObject(strOptString3);
                if (strOptString3 != null && jSONObjectOptJSONObject3 != null) {
                    iVar.b.put(strOptString3, new h(jSONObjectOptJSONObject3));
                }
            }
        }
        return iVar;
    }

    public int a(String str, int i, int i2) {
        String string = Integer.toString(i);
        if (this.a.containsKey(str)) {
            string = this.a.get(str);
        }
        try {
            i = Integer.parseInt(string);
        } catch (Throwable unused) {
        }
        return Math.max(i, i2);
    }

    public g a(String str) {
        String str2 = IAConfigManager.M.f1933d;
        h hVar = this.b.containsKey(str2) ? this.b.get(str2) : new h();
        hVar.getClass();
        return hVar.a.containsKey(str) ? hVar.a.get(str) : new g();
    }

    public boolean a(String str, boolean z) {
        String string = Boolean.toString(z);
        if (this.a.containsKey(str)) {
            string = this.a.get(str);
        }
        try {
            return Boolean.parseBoolean(string);
        } catch (Throwable unused) {
            return z;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.a.equals(iVar.a) && this.b.equals(iVar.b);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
