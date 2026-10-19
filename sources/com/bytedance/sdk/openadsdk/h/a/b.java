package com.bytedance.sdk.openadsdk.h.a;

import androidx.annotation.NonNull;
import com.bytedance.sdk.component.a.d;
import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.core.x;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: DoInterstitialWebViewCloseMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class b extends com.bytedance.sdk.component.a.d<JSONObject, JSONObject> {
    private final WeakReference<x> a;

    public b(x xVar) {
        this.a = new WeakReference<>(xVar);
    }

    public static void a(r rVar, final x xVar) {
        rVar.a("interstitial_webview_close", new d.b() { // from class: com.bytedance.sdk.openadsdk.h.a.b.1
            @Override // com.bytedance.sdk.component.a.d.b
            public com.bytedance.sdk.component.a.d a() {
                return new b(xVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.a.d
    public void a(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.a.f fVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.h.b().q();
        x xVar = this.a.get();
        if (xVar != null) {
            xVar.g();
        } else {
            l.e("DoInterstitialWebViewCloseMethod", "invoke error");
            c();
        }
    }

    @Override // com.bytedance.sdk.component.a.d
    protected void d() {
    }
}
