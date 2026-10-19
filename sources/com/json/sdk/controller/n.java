package com.json.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.json.hb;
import com.json.o2;
import com.json.p8;
import com.json.sdk.utils.Logger;
import com.json.t9;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class n {
    private static final String a = "n";
    private final Context b;
    private final t9 c = new t9();

    private static class b {
        String a;
        JSONObject b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6592d;

        private b() {
        }
    }

    public n(Context context) {
        this.b = context;
    }

    private b a(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString("omidFunction");
        bVar.b = jSONObject.optJSONObject("omidParams");
        bVar.c = jSONObject.optString("success");
        bVar.f6592d = jSONObject.optString(o2.f.f6481e);
        return bVar;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    void b(String str, p8 p8Var) throws Exception {
        b bVarA = a(str);
        hb hbVar = new hb();
        JSONObject jSONObject = bVarA.b;
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("adViewId", "");
            if (!TextUtils.isEmpty(strOptString)) {
                hbVar.b("adViewId", strOptString);
            }
        }
        try {
            String str2 = bVarA.a;
            byte b2 = -1;
            switch (str2.hashCode()) {
                case -1655974669:
                    if (str2.equals("activate")) {
                        b2 = 0;
                    }
                    break;
                case -984459207:
                    if (str2.equals("getOmidData")) {
                        b2 = 4;
                    }
                    break;
                case 70701699:
                    if (str2.equals("finishSession")) {
                        b2 = 2;
                    }
                    break;
                case 1208109646:
                    if (str2.equals("impressionOccurred")) {
                        b2 = 3;
                    }
                    break;
                case 1850541012:
                    if (str2.equals("startSession")) {
                        b2 = 1;
                    }
                    break;
            }
            if (b2 != 0) {
                if (b2 == 1) {
                    this.c.d(bVarA.b);
                } else if (b2 == 2) {
                    this.c.b(bVarA.b);
                } else if (b2 == 3) {
                    this.c.c(bVarA.b);
                } else if (b2 != 4) {
                    throw new IllegalArgumentException(String.format("%s | unsupported OMID API", bVarA.a));
                }
                p8Var.a(true, bVarA.c, hbVar);
            }
            this.c.a(this.b);
            hbVar = this.c.a();
            p8Var.a(true, bVarA.c, hbVar);
        } catch (Exception e2) {
            hbVar.b("errMsg", e2.getMessage());
            Logger.i(a, "OMIDJSAdapter " + bVarA.a + " Exception: " + e2.getMessage());
            p8Var.a(false, bVarA.f6592d, hbVar);
        }
    }
}
