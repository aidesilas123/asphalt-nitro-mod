package com.bytedance.sdk.openadsdk.h.a;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.a.d;
import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.openadsdk.core.x;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: DoGetAdsFromNetworkAsyncMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends com.bytedance.sdk.component.a.d<JSONObject, JSONObject> {
    private final WeakReference<x> a;

    public a(x xVar) {
        this.a = new WeakReference<>(xVar);
    }

    public static void a(r rVar, final x xVar) {
        rVar.a("getNetworkData", new d.b() { // from class: com.bytedance.sdk.openadsdk.h.a.a.1
            @Override // com.bytedance.sdk.component.a.d.b
            public com.bytedance.sdk.component.a.d a() {
                return new a(xVar);
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
            xVar.a(jSONObject, new com.bytedance.sdk.openadsdk.i.c() { // from class: com.bytedance.sdk.openadsdk.h.a.a.2
            });
        }
    }

    @Override // com.bytedance.sdk.component.a.d
    protected void d() {
    }
}
