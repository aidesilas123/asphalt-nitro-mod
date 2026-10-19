package com.bytedance.sdk.component.adexpress.dynamic.b;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicCreative.java */
/* JADX INFO: loaded from: classes.dex */
public class c {
    private HashMap<String, Object> a = new HashMap<>();
    private JSONObject b;

    public c(JSONObject jSONObject) {
        this.b = jSONObject;
    }

    public Object a(String str) {
        if (this.a.containsKey(str)) {
            return this.a.get(str);
        }
        return null;
    }

    public void a() {
        Iterator<String> itKeys = this.b.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object objOpt = this.b.opt(next);
            int i = 0;
            if (TextUtils.equals("image", next)) {
                if (objOpt instanceof JSONArray) {
                    while (true) {
                        JSONArray jSONArray = (JSONArray) objOpt;
                        if (i < jSONArray.length()) {
                            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                            if (jSONObjectOptJSONObject != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    Object objOpt2 = jSONObjectOptJSONObject.opt(next2);
                                    this.a.put(next + "." + i + "." + next2, objOpt2);
                                }
                            }
                            i++;
                        }
                    }
                }
            } else if (TextUtils.equals("dynamic_creative", next)) {
                if (objOpt instanceof String) {
                    try {
                        JSONObject jSONObject = new JSONObject((String) objOpt);
                        Iterator<String> itKeys3 = jSONObject.keys();
                        while (itKeys3.hasNext()) {
                            String next3 = itKeys3.next();
                            Object objOpt3 = jSONObject.opt(next3);
                            if (!(objOpt3 instanceof JSONArray) || TextUtils.equals(next3, "short_phrase") || TextUtils.equals(next3, "long_phrase")) {
                                this.a.put(next + "." + next3, objOpt3);
                            } else {
                                for (int i2 = 0; i2 < ((JSONArray) objOpt3).length(); i2++) {
                                    this.a.put(next + "." + next3 + "." + i2, ((JSONArray) objOpt3).opt(i2));
                                }
                            }
                        }
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                }
            } else if (!(objOpt instanceof JSONObject)) {
                this.a.put(next, objOpt);
                if (objOpt instanceof String) {
                    this.a.put(next, objOpt);
                }
            } else if (objOpt != null) {
                JSONObject jSONObject2 = (JSONObject) objOpt;
                Iterator<String> itKeys4 = jSONObject2.keys();
                while (itKeys4.hasNext()) {
                    String next4 = itKeys4.next();
                    Object objOpt4 = jSONObject2.opt(next4);
                    this.a.put(next + "." + next4, objOpt4);
                }
            }
        }
    }

    public boolean b(String str) {
        return this.a.containsKey(str);
    }
}
