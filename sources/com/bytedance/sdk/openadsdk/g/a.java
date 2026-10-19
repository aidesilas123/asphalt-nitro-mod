package com.bytedance.sdk.openadsdk.g;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.utils.ac;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JsAppAdDownloadManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class a implements c {
    private final q a;
    private final b b;
    private final Map<String, com.com.bytedance.overseas.sdk.a.c> c = new HashMap();

    private a(b bVar, q qVar) {
        this.b = bVar;
        this.a = qVar;
    }

    private q a(JSONObject jSONObject, String str) {
        String strA;
        if (jSONObject == null) {
            return null;
        }
        q qVarB = q.b();
        qVarB.c(jSONObject);
        if (!TextUtils.isEmpty(str)) {
            qVarB.s(str);
        }
        if (this.a == null) {
            return qVarB;
        }
        String strA2 = qVarB.aa() != null ? qVarB.aa().a() : null;
        if (TextUtils.isEmpty(strA2)) {
            return this.a;
        }
        com.bytedance.sdk.openadsdk.core.model.c cVarAa = this.a.aa();
        if (cVarAa != null && strA2.equals(cVarAa.a())) {
            return this.a;
        }
        JSONObject jSONObject2 = new JSONObject();
        if (cVarAa != null) {
            try {
                strA = cVarAa.a();
            } catch (JSONException unused) {
            }
        } else {
            strA = "null";
        }
        jSONObject2.put("lu", strA);
        jSONObject2.put("ju", strA2);
        q qVar = this.a;
        com.bytedance.sdk.openadsdk.core.d.a(qVar, ac.a(qVar), -5, jSONObject2);
        if (cVarAa != null && strA2.contains("play.google.com/store") && !strA2.contains("referrer")) {
            qVarB.aa().a(cVarAa.a());
        }
        return qVarB;
    }

    public static a a(b bVar, q qVar) {
        return new a(bVar, qVar);
    }

    private com.com.bytedance.overseas.sdk.a.c a(@NonNull Context context, @NonNull q qVar, @NonNull JSONObject jSONObject, @NonNull String str, boolean z) {
        com.com.bytedance.overseas.sdk.a.c cVarA = com.com.bytedance.overseas.sdk.a.d.a(context, qVar, str);
        cVarA.a(true);
        return cVarA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void a(Context context, q qVar, String str) {
        if (context == 0 || qVar == null) {
            return;
        }
        com.com.bytedance.overseas.sdk.a.d.a(context, qVar, str).d();
        if (context instanceof com.bytedance.sdk.openadsdk.core.video.c.b) {
            ((com.bytedance.sdk.openadsdk.core.video.c.b) context).r();
        }
    }

    private void a(Context context, q qVar, JSONObject jSONObject, int i, boolean z) {
        if (context == null || qVar == null || qVar.aa() == null || jSONObject == null || this.b == null || this.c.get(qVar.aa().a()) != null) {
            return;
        }
        String strB = ac.b(i);
        if (TextUtils.isEmpty(strB)) {
            return;
        }
        this.c.put(qVar.aa().a(), a(context, qVar, jSONObject, strB, z));
    }

    private void a(q qVar, JSONObject jSONObject) {
        if (this.b == null || qVar == null || qVar.aa() == null) {
            return;
        }
        String strA = qVar.aa().a();
        if (this.c.containsKey(strA)) {
            this.c.remove(strA);
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("message", "success");
                jSONObject2.put("status", "unsubscribed");
                jSONObject2.put("appad", jSONObject);
                this.b.a("app_ad_event", jSONObject2);
            } catch (JSONException e2) {
                l.e("JsAppAdDownloadManager", e2.getMessage());
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void a(Context context, JSONObject jSONObject, String str) {
        a(context, this.a, str);
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void a(Context context, JSONObject jSONObject, String str, int i, boolean z) {
        JSONObject jSONObjectOptJSONObject;
        if (context == null || jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        a(context, a(jSONObjectOptJSONObject, str), jSONObjectOptJSONObject, i, z);
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void a(JSONObject jSONObject) {
        JSONObject jSONObjectOptJSONObject;
        if (jSONObject == null || (jSONObjectOptJSONObject = jSONObject.optJSONObject("data")) == null) {
            return;
        }
        a(a(jSONObjectOptJSONObject, (String) null), jSONObjectOptJSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void b() {
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void b(JSONObject jSONObject) {
    }

    @Override // com.bytedance.sdk.openadsdk.g.c
    public void c() {
        this.c.clear();
    }
}
