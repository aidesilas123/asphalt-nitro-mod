package com.fyber.inneractive.sdk.config.remote;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class g {
    public UnitDisplayType a;

    public static g a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        g gVar = new g();
        UnitDisplayType unitDisplayTypeFromValue = UnitDisplayType.fromValue(jSONObject.optString("unitDisplayType"));
        if (unitDisplayTypeFromValue == null) {
            return null;
        }
        gVar.a = unitDisplayTypeFromValue;
        return gVar;
    }
}
