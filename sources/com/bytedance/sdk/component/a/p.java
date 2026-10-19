package com.bytedance.sdk.component.a;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: Java2JsMsg.java */
/* JADX INFO: loaded from: classes.dex */
public final class p {
    private final Map<String, Object> a = new ConcurrentHashMap();

    private p() {
    }

    public static p a() {
        return new p();
    }

    public p a(String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            this.a.put(str, obj);
        }
        return this;
    }

    public String b() {
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : this.a.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }
}
