package com.fyber.inneractive.sdk.config.remote;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public UnitDisplayType a;
    public Boolean b;
    public Integer c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Integer f1970d;

    public static b a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        b bVar = new b();
        Integer numValueOf = Integer.valueOf(jSONObject.optInt("hide", Integer.MIN_VALUE));
        Integer numValueOf2 = Integer.valueOf(jSONObject.optInt("refresh", Integer.MIN_VALUE));
        bVar.a = UnitDisplayType.fromValue(jSONObject.optString("unitDisplayType"));
        bVar.b = jSONObject.has("close") ? Boolean.valueOf(jSONObject.optBoolean("close", true)) : null;
        if (numValueOf.intValue() == Integer.MIN_VALUE) {
            numValueOf = null;
        }
        bVar.f1970d = numValueOf;
        bVar.c = numValueOf2.intValue() != Integer.MIN_VALUE ? numValueOf2 : null;
        return bVar;
    }
}
