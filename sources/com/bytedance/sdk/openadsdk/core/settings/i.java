package com.bytedance.sdk.openadsdk.core.settings;

import com.bytedance.sdk.openadsdk.core.settings.d;
import org.json.JSONObject;

/* JADX INFO: compiled from: MediationInitSettings.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends n {
    public i() {
        super("tt_set_mediation.prop");
    }

    @Override // com.bytedance.sdk.openadsdk.core.settings.d
    public void a(JSONObject jSONObject) {
        if (jSONObject.has("mediation_init_conf")) {
            d.a aVarA = a();
            aVarA.a("mediation_init_conf", jSONObject.optString("mediation_init_conf"));
            aVarA.a();
        }
    }
}
