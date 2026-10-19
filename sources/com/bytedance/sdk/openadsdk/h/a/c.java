package com.bytedance.sdk.openadsdk.h.a;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.a.d;
import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.openadsdk.core.x;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: DoNewClickEventMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends com.bytedance.sdk.component.a.d<JSONObject, JSONObject> {
    private final WeakReference<x> a;

    public c(x xVar) {
        this.a = new WeakReference<>(xVar);
    }

    public static void a(r rVar, final x xVar) {
        rVar.a("newClickEvent", new d.b() { // from class: com.bytedance.sdk.openadsdk.h.a.c.1
            @Override // com.bytedance.sdk.component.a.d.b
            public com.bytedance.sdk.component.a.d a() {
                return new c(xVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.a.d
    public void a(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.a.f fVar) throws Exception {
        x xVar = this.a.get();
        if (xVar == null) {
            c();
        } else {
            xVar.c(jSONObject);
        }
    }

    @Override // com.bytedance.sdk.component.a.d
    protected void d() {
    }
}
