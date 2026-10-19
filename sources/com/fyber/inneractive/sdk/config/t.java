package com.fyber.inneractive.sdk.config;

import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.util.h0;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class t implements h0.a {
    public Integer a = null;
    public UnitDisplayType b;
    public Boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Integer f1987d;

    @Override // com.fyber.inneractive.sdk.util.h0.a
    public JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        h0.a(jSONObject, "refresh", this.a);
        h0.a(jSONObject, "unitDisplayType", this.b);
        h0.a(jSONObject, "close", this.c);
        h0.a(jSONObject, "hideDelay", this.f1987d);
        return jSONObject;
    }
}
