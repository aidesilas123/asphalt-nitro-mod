package com.json;

import android.content.Context;
import com.json.environment.ContextProvider;
import com.json.v4;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class x4 {
    private JSONObject a(Context context, v4.a aVar) throws JSONException {
        String strName = aVar.name();
        JSONObject jSONObjectI = w4.a().i(context);
        JSONObject jSONObjectOptJSONObject = jSONObjectI.optJSONObject("adunit_data");
        JSONObject jSONObjectC = c(jSONObjectI);
        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optJSONObject(strName) != null) {
            JSONObject jSONObject = jSONObjectOptJSONObject.getJSONObject(strName);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectC.putOpt(next, jSONObject.opt(next));
            }
        }
        return jSONObjectC;
    }

    private JSONObject b(Context context, List<String> list) throws JSONException {
        return d(c(w4.a().i(context)), (String[]) list.toArray(new String[list.size()]));
    }

    private JSONObject c(JSONObject jSONObject) {
        jSONObject.remove("adunit_data");
        return jSONObject;
    }

    private JSONObject d(JSONObject jSONObject, String[] strArr) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        for (String str : strArr) {
            if (jSONObject.has(str)) {
                jSONObject2.put(str, jSONObject.opt(str));
            }
        }
        return jSONObject2;
    }

    public JSONObject a(Context context, String[] strArr) throws JSONException {
        return d(c(w4.a().i(context)), strArr);
    }

    public JSONObject a(List<String> list) throws JSONException {
        return b(ContextProvider.getInstance().getApplicationContext(), list);
    }

    public JSONObject a(List<String> list, v4.a aVar) throws JSONException {
        return d(a(ContextProvider.getInstance().getApplicationContext(), aVar), (String[]) list.toArray(new String[list.size()]));
    }

    public JSONObject a(String[] strArr) throws JSONException {
        return d(c(w4.a().i(ContextProvider.getInstance().getApplicationContext())), strArr);
    }
}
