package com.bytedance.sdk.openadsdk.core.g;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.g.c.a;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: VastIcon.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends c {
    private long j;
    private long k;

    public b(int i, int i2, long j, long j2, a.EnumC0136a enumC0136a, a.b bVar, String str, List<com.bytedance.sdk.openadsdk.core.g.b.c> list, List<com.bytedance.sdk.openadsdk.core.g.b.c> list2, String str2) {
        super(i, i2, enumC0136a, bVar, str, list, list2, str2);
        this.j = j;
        this.k = j2;
        this.i = "icon_click";
    }

    public static b a(JSONObject jSONObject) {
        c cVarB = c.b(jSONObject);
        if (cVarB == null) {
            return null;
        }
        return new b(cVarB.a, cVarB.b, jSONObject.optLong(TypedValues.CycleType.S_WAVE_OFFSET, -1L), jSONObject.optLong("duration", -1L), cVarB.c, cVarB.f1520d, cVarB.f1521e, cVarB.f1522f, cVarB.f1523g, cVarB.h);
    }

    @Override // com.bytedance.sdk.openadsdk.core.g.c
    public JSONObject a() throws JSONException {
        JSONObject jSONObjectA = super.a();
        if (jSONObjectA != null) {
            jSONObjectA.put(TypedValues.CycleType.S_WAVE_OFFSET, this.j);
            jSONObjectA.put("duration", this.k);
        }
        return jSONObjectA;
    }
}
