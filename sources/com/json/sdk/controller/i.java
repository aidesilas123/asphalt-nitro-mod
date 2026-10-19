package com.json.sdk.controller;

import android.content.Context;
import com.json.e5;
import com.json.e9;
import com.json.hb;
import com.json.o2;
import com.json.p8;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class i {
    private static final String a = "i";
    private Context b;
    private final e5 c = e9.h().c();

    private static class b {
        String a;
        JSONObject b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f6590d;

        private b() {
        }
    }

    public i(Context context) {
        this.b = context;
    }

    private hb a() {
        hb hbVar = new hb();
        hbVar.b(SDKUtils.encodeString("sdCardAvailable"), SDKUtils.encodeString(String.valueOf(this.c.c())));
        hbVar.b(SDKUtils.encodeString("totalDeviceRAM"), SDKUtils.encodeString(String.valueOf(this.c.h(this.b))));
        hbVar.b(SDKUtils.encodeString("isCharging"), SDKUtils.encodeString(String.valueOf(this.c.G(this.b))));
        hbVar.b(SDKUtils.encodeString("chargingType"), SDKUtils.encodeString(String.valueOf(this.c.l(this.b))));
        hbVar.b(SDKUtils.encodeString("airplaneMode"), SDKUtils.encodeString(String.valueOf(this.c.c(this.b))));
        hbVar.b(SDKUtils.encodeString("stayOnWhenPluggedIn"), SDKUtils.encodeString(String.valueOf(this.c.d(this.b))));
        return hbVar;
    }

    private b b(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        b bVar = new b();
        bVar.a = jSONObject.optString("deviceDataFunction");
        bVar.b = jSONObject.optJSONObject("deviceDataParams");
        bVar.c = jSONObject.optString("success");
        bVar.f6590d = jSONObject.optString(o2.f.f6481e);
        return bVar;
    }

    void c(String str, p8 p8Var) throws Exception {
        b bVarB = b(str);
        if ("getDeviceData".equals(bVarB.a)) {
            p8Var.a(true, bVarB.c, a());
            return;
        }
        Logger.i(a, "unhandled API request " + str);
    }
}
