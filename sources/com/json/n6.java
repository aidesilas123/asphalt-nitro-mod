package com.json;

import android.util.Base64;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class n6 implements j5 {
    @Override // com.json.j5
    public String a(Map<String, Object> map) {
        try {
            return String.format("%s=%s", "data", Base64.encodeToString(new JSONObject().put(b4.O, b4.P).put("data", new JSONObject(map)).toString().getBytes(), 2));
        } catch (JSONException e2) {
            e2.printStackTrace();
            return "";
        }
    }
}
