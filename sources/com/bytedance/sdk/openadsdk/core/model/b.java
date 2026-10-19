package com.bytedance.sdk.openadsdk.core.model;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.AdSlot;
import java.util.ArrayList;
import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: AdLogInfoModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class b {
    public String a;
    public int b;
    public int c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList<Integer> f1553d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public AdSlot f1554e;

    public static void a(b bVar) {
        int iB;
        if (bVar == null || bVar.d() == null || (iB = bVar.b()) >= 0 || iB == -8) {
            return;
        }
        com.bytedance.sdk.openadsdk.j.b.a();
        com.bytedance.sdk.openadsdk.j.b.a("rd_client_custom_error", false, new com.bytedance.sdk.openadsdk.j.a() { // from class: com.bytedance.sdk.openadsdk.core.model.b.1
            @Override // com.bytedance.sdk.openadsdk.j.a
            public com.bytedance.sdk.openadsdk.j.a.a getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(TypedValues.TransitionType.S_FROM, b.this.c());
                jSONObject.put("err_code", b.this.b());
                jSONObject.put("server_res_str", b.this.a());
                if (b.this.e() != null && b.this.e().size() > 0) {
                    jSONObject.put("mate_unavailable_code_list", new JSONArray((Collection) b.this.e()).toString());
                }
                com.bytedance.sdk.component.utils.l.b("AdLogInfoModel", "rd_client_custom_error = ", jSONObject);
                return com.bytedance.sdk.openadsdk.j.a.b.b().a("rd_client_custom_error").a(b.this.d().getDurationSlotType()).b(jSONObject.toString());
            }
        });
    }

    public String a() {
        return this.a;
    }

    public void a(int i) {
        this.b = i;
    }

    public void a(AdSlot adSlot) {
        this.f1554e = adSlot;
    }

    public void a(String str) {
        this.a = str;
    }

    public void a(ArrayList<Integer> arrayList) {
        this.f1553d = arrayList;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.c = i;
    }

    public int c() {
        return this.c;
    }

    public AdSlot d() {
        return this.f1554e;
    }

    public ArrayList<Integer> e() {
        return this.f1553d;
    }
}
