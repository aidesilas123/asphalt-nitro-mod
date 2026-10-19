package com.bytedance.sdk.component.adexpress.dynamic.c;

import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicParserUtils.java */
/* JADX INFO: loaded from: classes.dex */
public class h {
    public static String a(String str) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectAi = com.bytedance.sdk.component.adexpress.b.ai(str);
        if (jSONObjectAi == null || (jSONObjectOptJSONObject = jSONObjectAi.optJSONObject("values")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optString("data");
    }

    public static String a(String str, String str2) {
        JSONObject jSONObjectOptJSONObject;
        JSONObject jSONObjectAi = com.bytedance.sdk.component.adexpress.b.ai(str);
        if (jSONObjectAi == null || (jSONObjectOptJSONObject = jSONObjectAi.optJSONObject("values")) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optString(str2);
    }

    public static JSONObject a(String str, JSONObject jSONObject, JSONObject jSONObject2) {
        JSONObject jSONObjectAi = com.bytedance.sdk.component.adexpress.b.ai(str);
        if (jSONObjectAi == null) {
            return null;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        return a(jSONObject2, jSONObjectAi.optJSONObject("themeValues"), jSONObject);
    }

    public static JSONObject a(JSONArray jSONArray) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONArray == null || jSONArray.length() <= 0 || (jSONObjectOptJSONObject = jSONArray.optJSONObject(0)) == null) {
            return null;
        }
        return jSONObjectOptJSONObject.optJSONObject("values");
    }

    public static JSONObject a(JSONObject... jSONObjectArr) {
        JSONObject jSONObject = new JSONObject();
        for (JSONObject jSONObject2 : jSONObjectArr) {
            if (jSONObject2 != null) {
                Iterator<String> itKeys = jSONObject2.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    try {
                        jSONObject.put(next, jSONObject2.opt(next));
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        return jSONObject;
    }

    public static void a(String str, JSONObject jSONObject) {
        JSONObject jSONObjectAi = com.bytedance.sdk.component.adexpress.b.ai(str);
        if (jSONObjectAi == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        JSONObject jSONObjectOptJSONObject = jSONObjectAi.optJSONObject("values");
        if (jSONObjectOptJSONObject == null) {
            return;
        }
        a(jSONObjectOptJSONObject, jSONObject);
    }

    private static void a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (jSONObject2 == null) {
            jSONObject2 = new JSONObject();
        }
        if (jSONObject == null) {
            return;
        }
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (!jSONObject2.has(next)) {
                try {
                    jSONObject2.put(next, jSONObject.opt(next));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public static String b(String str) {
        if (str.indexOf(46) < 0) {
            str = str + ".png";
        }
        return "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-sg/static/images/" + str;
    }
}
