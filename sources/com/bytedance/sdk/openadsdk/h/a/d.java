package com.bytedance.sdk.openadsdk.h.a;

import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.x;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: InteractiveFinishMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends com.bytedance.sdk.component.a.e<JSONObject, JSONObject> {
    private final WeakReference<x> a;

    public d(x xVar) {
        this.a = new WeakReference<>(xVar);
    }

    public static void a(r rVar, x xVar) {
        rVar.a("interactiveFinish", new d(xVar));
    }

    @Override // com.bytedance.sdk.component.a.e
    public JSONObject a(JSONObject jSONObject, com.bytedance.sdk.component.a.f fVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        WeakReference<x> weakReference = this.a;
        if (weakReference != null && weakReference.get() != null) {
            x xVar = this.a.get();
            q qVarC = xVar.c();
            try {
                boolean z = true;
                int i = 0;
                if (jSONObject.optInt("finish", 1) != 1) {
                    z = false;
                }
                int iOptInt = jSONObject.optInt("reduce_duration", -1);
                int iAx = qVarC != null ? qVarC.ax() : 0;
                if (iOptInt >= 0 && iAx >= 0) {
                    iOptInt = Math.min(iOptInt, iAx);
                } else if (iOptInt < 0) {
                    iOptInt = iAx >= 0 ? iAx : 0;
                }
                if (z) {
                    xVar.c(iOptInt);
                } else {
                    i = -1;
                }
                jSONObject2.put("code", i);
                jSONObject2.put("reduce_duration", iOptInt);
            } catch (JSONException e2) {
                l.e("InteractiveFinishMethod", e2.getMessage());
            }
        }
        return jSONObject2;
    }
}
