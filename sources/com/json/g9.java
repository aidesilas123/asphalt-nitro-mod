package com.json;

import com.json.sdk.utils.IronSourceStorageUtils;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g9 {
    private String a;

    public g9(String str) {
        this.a = str;
    }

    private q6 a() throws Exception {
        q6 q6Var = new q6(this.a, "metadata.json");
        if (!q6Var.exists()) {
            b(q6Var);
        }
        return q6Var;
    }

    private void b(q6 q6Var) throws Exception {
        IronSourceStorageUtils.saveFile(new JSONObject().toString().getBytes(), q6Var.getPath());
    }

    private boolean f(JSONObject jSONObject) throws Exception {
        return IronSourceStorageUtils.saveFile(jSONObject.toString().getBytes(), a().getPath()) != 0;
    }

    synchronized boolean c(String str) throws Exception {
        JSONObject jSONObjectG = g();
        if (!jSONObjectG.has(str)) {
            return true;
        }
        jSONObjectG.remove(str);
        return f(jSONObjectG);
    }

    synchronized boolean d(String str, JSONObject jSONObject) throws Exception {
        JSONObject jSONObjectG;
        jSONObjectG = g();
        jSONObjectG.put(str, jSONObject);
        return f(jSONObjectG);
    }

    boolean e(ArrayList<q6> arrayList) throws Exception {
        Iterator<q6> it = arrayList.iterator();
        boolean z = true;
        while (it.hasNext()) {
            if (!c(it.next().getName())) {
                z = false;
            }
        }
        return z;
    }

    synchronized JSONObject g() throws Exception {
        return new JSONObject(IronSourceStorageUtils.readFile(a()));
    }

    synchronized boolean h(String str, JSONObject jSONObject) throws Exception {
        JSONObject jSONObjectG;
        jSONObjectG = g();
        JSONObject jSONObjectOptJSONObject = jSONObjectG.optJSONObject(str);
        if (jSONObjectOptJSONObject != null) {
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                jSONObjectOptJSONObject.putOpt(next, jSONObject.opt(next));
            }
        } else {
            jSONObjectG.putOpt(str, jSONObject);
        }
        return f(jSONObjectG);
    }
}
