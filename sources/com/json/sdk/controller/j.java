package com.json.sdk.controller;

import android.webkit.JavascriptInterface;
import com.json.o2;
import com.json.sdk.utils.Logger;
import com.json.sdk.utils.SDKUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
final class j {
    private static final String a = "com.ironsource.sdk.controller.g";
    private final c b;
    private final u c;

    j(c cVar, u uVar) {
        this.b = cVar;
        this.c = uVar;
    }

    private String a(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(o2.f.b, SDKUtils.encodeString(str));
            jSONObject.put("params", SDKUtils.encodeString(str2));
            jSONObject.put("hash", SDKUtils.encodeString(str3));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    private void b(Exception exc) {
        exc.printStackTrace();
        Logger.i(a, "messageHandler failed with exception " + exc.getMessage());
    }

    private void c(String str, String str2) throws Exception {
        this.b.b(str, str2);
    }

    private void d(String str, String str2, String str3) {
        this.b.a(a(str, str2, str3));
    }

    @JavascriptInterface
    public void messageHandler(String str, String str2, String str3) {
        try {
            Logger.i(a, "messageHandler(" + str + " " + str3 + ")");
            if (this.c.d(str, str2, str3)) {
                c(str, str2);
            } else {
                d(str, str2, str3);
            }
        } catch (Exception e2) {
            b(e2);
        }
    }
}
