package com.bytedance.sdk.component.adexpress.dynamic.c;

import com.bytedance.sdk.component.adexpress.b.m;
import com.bytedance.sdk.component.utils.l;
import org.json.JSONObject;

/* JADX INFO: compiled from: DynamicNativeParser.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements g {
    private com.bytedance.sdk.component.adexpress.dynamic.d.b a;

    /* JADX INFO: Access modifiers changed from: private */
    public void b(m mVar) {
        try {
            JSONObject jSONObjectC = mVar.c();
            JSONObject jSONObject = new JSONObject(jSONObjectC.optString("template_Plugin"));
            JSONObject jSONObjectOptJSONObject = jSONObjectC.optJSONObject("creative");
            com.bytedance.sdk.component.adexpress.dynamic.b.h hVarA = new e(jSONObject, jSONObjectOptJSONObject, jSONObjectC.optJSONObject("AdSize"), new JSONObject(jSONObjectC.optString("diff_template_Plugin"))).a(mVar.b(), mVar.j(), jSONObjectOptJSONObject.optDouble("score_exact_i18n"), jSONObjectOptJSONObject.optString("comment_num_i18n"), mVar);
            try {
                JSONObject jSONObject2 = new JSONObject(jSONObjectOptJSONObject.optString("dynamic_creative"));
                hVarA.a(jSONObject2.optString("color"));
                hVarA.a(jSONObject2.optJSONArray("material_center"));
            } catch (Throwable unused) {
            }
            this.a.a(hVarA);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.c.g
    public void a(final m mVar) {
        if (mVar.l() != 1) {
            com.bytedance.sdk.component.g.f.c().execute(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.c.f.1
                @Override // java.lang.Runnable
                public void run() {
                    l.b("DynamicNativeParser", "parse on non ui thread");
                    f.this.b(mVar);
                }
            });
        } else {
            l.b("DynamicNativeParser", "parse on ui thread");
            b(mVar);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.c.g
    public void a(com.bytedance.sdk.component.adexpress.dynamic.d.b bVar) {
        this.a = bVar;
    }
}
