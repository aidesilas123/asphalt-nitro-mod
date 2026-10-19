package com.json;

import android.content.Context;
import com.json.environment.ContextProvider;
import com.json.v4;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class z4 {
    public void a(Context context) {
        w4.a().l(context);
    }

    public void a(String str, v4.a aVar) {
        JSONObject jSONObjectOptJSONObject;
        try {
            String strName = aVar.name();
            w4 w4VarA = w4.a();
            JSONObject jSONObjectOptJSONObject2 = w4VarA.i(ContextProvider.getInstance().getApplicationContext()).optJSONObject("adunit_data");
            if (jSONObjectOptJSONObject2 == null || (jSONObjectOptJSONObject = jSONObjectOptJSONObject2.optJSONObject(strName)) == null || jSONObjectOptJSONObject.remove(str) == null) {
                return;
            }
            w4VarA.k("adunit_data", jSONObjectOptJSONObject2.put(strName, jSONObjectOptJSONObject));
        } catch (JSONException unused) {
        }
    }

    public void a(String str, Object obj) {
        w4.a().k(str, obj);
    }

    public void a(String str, Object obj, v4.a aVar) {
        try {
            String strName = aVar.name();
            w4 w4VarA = w4.a();
            JSONObject jSONObjectOptJSONObject = w4VarA.i(ContextProvider.getInstance().getApplicationContext()).optJSONObject("adunit_data");
            if (jSONObjectOptJSONObject == null) {
                w4VarA.k("adunit_data", new JSONObject().put(strName, new JSONObject().put(str, obj)));
                return;
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject(strName);
            if (jSONObjectOptJSONObject2 == null) {
                w4VarA.k("adunit_data", jSONObjectOptJSONObject.put(strName, new JSONObject().put(str, obj)));
            } else {
                w4VarA.k("adunit_data", jSONObjectOptJSONObject.put(strName, jSONObjectOptJSONObject2.put(str, obj)));
            }
        } catch (JSONException unused) {
        }
    }

    public void a(String str, JSONObject jSONObject) {
        w4.a().f(str, jSONObject);
    }

    public void a(Map<String, Object> map) {
        w4.a().g(map);
    }
}
