package com.json;

import android.content.Context;
import com.json.o2;
import com.json.sdk.utils.IronSourceStorageUtils;
import com.json.sdk.utils.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g6 implements g0 {
    private static final String a = "g6";
    private static g6 b;
    private final Map<String, y6> c = Collections.synchronizedMap(new HashMap());

    class a implements Runnable {
        final /* synthetic */ f6 a;
        final /* synthetic */ Context b;
        final /* synthetic */ String c;

        a(f6 f6Var, Context context, String str) {
            this.a = f6Var;
            this.b = context;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            g6.this.c.put(this.c, new a6(this.a, this.b));
        }
    }

    public static synchronized g6 a() {
        if (b == null) {
            b = new g6();
        }
        return b;
    }

    private y5 b(JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.getString(o2.h.O));
            String string = jSONObject2.get("height").toString();
            String string2 = jSONObject2.get("width").toString();
            return new y5(Integer.parseInt(string2), Integer.parseInt(string), jSONObject2.get("label").toString());
        } catch (Exception unused) {
            return new y5();
        }
    }

    private y5 d(JSONObject jSONObject) {
        y5 y5Var = new y5();
        try {
            return b(jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
            return y5Var;
        }
    }

    private boolean e(JSONObject jSONObject) {
        try {
            return jSONObject.getBoolean(o2.h.s0);
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.json.g0
    public y6 a(String str) {
        if (str.isEmpty() || !this.c.containsKey(str)) {
            return null;
        }
        return this.c.get(str);
    }

    public void a(b6 b6Var, JSONObject jSONObject, Context context, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(a, "loadWithUrl fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        y5 y5VarD = d(jSONObject);
        if (this.c.containsKey(string)) {
            Logger.i(a, "sendMessageToAd fail - collection already contain adViewId");
            throw new Exception("collection already contain adViewId");
        }
        f6 f6Var = new f6(b6Var, context, string, y5VarD);
        f6Var.e(IronSourceStorageUtils.getNetworkStorageDir(context));
        f6Var.b(jSONObject, str, str2);
        if (e(jSONObject)) {
            q5.a.c(new a(f6Var, context, string));
        } else {
            this.c.put(string, f6Var);
        }
    }

    public void a(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(a, "removeAdView fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.c.containsKey(string)) {
            Logger.i(a, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        y6 y6Var = this.c.get(string);
        if (y6Var != null) {
            y6Var.a(jSONObject, str, str2);
        }
    }

    public void b(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(a, "performWebViewAction fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.c.containsKey(string)) {
            Logger.i(a, "performWebViewAction fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        y6 y6Var = this.c.get(string);
        String string2 = jSONObject.getString(o2.h.v0);
        if (y6Var != null) {
            y6Var.a(string2, str, str2);
        }
    }

    public String c(JSONObject jSONObject) throws JSONException {
        return (jSONObject == null || !jSONObject.has("adViewId")) ? (jSONObject == null || !jSONObject.has("params")) ? "" : new JSONObject(jSONObject.getString("params")).getString("adViewId") : jSONObject.getString("adViewId");
    }

    public void c(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = jSONObject.getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(a, "removeAdView fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.c.containsKey(string)) {
            Logger.i(a, "removeAdView fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        y6 y6Var = this.c.get(string);
        this.c.remove(string);
        if (y6Var != null) {
            y6Var.a(str, str2);
        }
    }

    public void d(JSONObject jSONObject, String str, String str2) throws Exception {
        String string = new JSONObject(jSONObject.getString("params")).getString("adViewId");
        if (string.isEmpty()) {
            Logger.i(a, "sendMessageToAd fail - adViewId is empty");
            throw new Exception("adViewId is empty");
        }
        if (!this.c.containsKey(string)) {
            Logger.i(a, "sendMessageToAd fail - collection does not contain adViewId");
            throw new Exception("collection does not contain adViewId");
        }
        y6 y6Var = this.c.get(string);
        if (y6Var != null) {
            y6Var.c(jSONObject, str, str2);
        }
    }
}
