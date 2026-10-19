package com.json.sdk.controller;

import android.content.Context;
import com.json.environment.StringUtils;
import com.json.hb;
import com.json.o2;
import com.json.p8;
import com.json.r9;
import com.json.sc;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import com.json.uc;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class s {
    private static final String a = "s";
    private uc c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f6595e;
    private final String b = "oneToken";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private r9 f6594d = new r9();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private sc f6596f = new sc();

    private static class b {
        String a;
        JSONObject b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6597d;

        private b() {
        }
    }

    public s(Context context, uc ucVar) {
        this.c = ucVar;
        this.f6595e = context;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString(o2.f.b);
        bVar.b = jSONObject.optJSONObject(o2.f.c);
        bVar.c = jSONObject.optString("success");
        bVar.f6597d = jSONObject.optString(o2.f.f6481e);
        return bVar;
    }

    private JSONObject b() throws JSONException {
        JSONObject jSONObjectA = this.f6596f.a();
        Iterator<String> itKeys = jSONObjectA.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            Object obj = jSONObjectA.get(next);
            if (obj instanceof String) {
                jSONObjectA.put(next, StringUtils.encodeURI((String) obj));
            }
        }
        return jSONObjectA;
    }

    private void c(b bVar, p8 p8Var) {
        try {
            p8Var.a(true, bVar.c, SDKUtils.getControllerConfigAsJSONObject().optBoolean("oneToken") ? b() : this.c.c(this.f6595e));
        } catch (Exception e2) {
            p8Var.a(false, bVar.f6597d, e2.getMessage());
        }
    }

    public void a(JSONObject jSONObject, b bVar, p8 p8Var) {
        hb hbVar = new hb();
        try {
            this.f6594d.a(jSONObject);
            this.c.a(jSONObject);
            p8Var.a(true, bVar.c, hbVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            Logger.i(a, "updateToken exception " + e2.getMessage());
            p8Var.a(false, bVar.f6597d, hbVar);
        }
    }

    void d(String str, p8 p8Var) throws Exception {
        b bVarA = a(str);
        if ("updateToken".equals(bVarA.a)) {
            a(bVarA.b, bVarA, p8Var);
            return;
        }
        if ("getToken".equals(bVarA.a)) {
            c(bVarA, p8Var);
            return;
        }
        Logger.i(a, "unhandled API request " + str);
    }
}
