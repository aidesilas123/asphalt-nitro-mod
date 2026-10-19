package com.json.sdk.controller;

import android.content.Context;
import com.json.hb;
import com.json.k0;
import com.json.o2;
import com.json.p8;
import com.json.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class o {
    private static final String a = "o";
    private Context b;

    private static class b {
        String a;
        JSONObject b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6593d;

        private b() {
        }
    }

    public o(Context context) {
        this.b = context;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString(o2.f.b);
        bVar.b = jSONObject.optJSONObject(o2.f.c);
        bVar.c = jSONObject.optString("success");
        bVar.f6593d = jSONObject.optString(o2.f.f6481e);
        return bVar;
    }

    public void a(JSONObject jSONObject, b bVar, p8 p8Var) {
        hb hbVar = new hb();
        try {
            hbVar.a("permissions", k0.a(this.b, jSONObject.getJSONArray("permissions")));
            p8Var.a(true, bVar.c, hbVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            Logger.i(a, "PermissionsJSAdapter getPermissions JSON Exception when getting permissions parameter " + e2.getMessage());
            hbVar.b("errMsg", e2.getMessage());
            p8Var.a(false, bVar.f6593d, hbVar);
        }
    }

    void b(String str, p8 p8Var) throws Exception {
        b bVarA = a(str);
        if ("getPermissions".equals(bVarA.a)) {
            a(bVarA.b, bVarA, p8Var);
            return;
        }
        if ("isPermissionGranted".equals(bVarA.a)) {
            b(bVarA.b, bVarA, p8Var);
            return;
        }
        Logger.i(a, "PermissionsJSAdapter unhandled API request " + str);
    }

    public void b(JSONObject jSONObject, b bVar, p8 p8Var) {
        String str;
        boolean z;
        hb hbVar = new hb();
        try {
            String string = jSONObject.getString("permission");
            hbVar.b("permission", string);
            if (k0.d(this.b, string)) {
                hbVar.b("status", String.valueOf(k0.c(this.b, string)));
                z = true;
                str = bVar.c;
            } else {
                hbVar.b("status", "unhandledPermission");
                str = bVar.f6593d;
                z = false;
            }
            p8Var.a(z, str, hbVar);
        } catch (Exception e2) {
            e2.printStackTrace();
            hbVar.b("errMsg", e2.getMessage());
            p8Var.a(false, bVar.f6593d, hbVar);
        }
    }
}
