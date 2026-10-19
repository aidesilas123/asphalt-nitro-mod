package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class WebGLCheckSignal extends AbsFeedBackForH5 {
    public void webglState(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            b.d().c(jSONObject.optInt("webgl"));
            b.d().a(jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }
}
