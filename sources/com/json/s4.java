package com.json;

import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class s4 {
    private static s4 a = null;
    public static final String b = "userId";
    private JSONObject c = new JSONObject();

    private s4() {
    }

    public static synchronized s4 a() {
        if (a == null) {
            a = new s4();
        }
        return a;
    }

    public synchronized String a(String str) {
        return this.c.optString(str);
    }

    public synchronized void a(String str, Object obj) {
        try {
            this.c.put(str, obj);
        } catch (Exception unused) {
        }
    }

    public synchronized void a(Map<String, Object> map) {
        if (map != null) {
            for (String str : map.keySet()) {
                a(str, map.get(str));
            }
        }
    }

    public synchronized JSONObject b() {
        return this.c;
    }
}
