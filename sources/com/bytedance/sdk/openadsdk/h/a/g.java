package com.bytedance.sdk.openadsdk.h.a;

import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.component.widget.SSWebView;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: PreventTouchEventMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends com.bytedance.sdk.component.a.e<JSONObject, JSONObject> {
    private WeakReference<SSWebView> a;

    public g(SSWebView sSWebView) {
        this.a = new WeakReference<>(sSWebView);
    }

    public static void a(r rVar, SSWebView sSWebView) {
        rVar.a("preventTouchEvent", new g(sSWebView));
    }

    @Override // com.bytedance.sdk.component.a.e
    public JSONObject a(JSONObject jSONObject, com.bytedance.sdk.component.a.f fVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        try {
            boolean zOptBoolean = jSONObject.optBoolean("isPrevent", false);
            SSWebView sSWebView = this.a.get();
            if (sSWebView != null) {
                sSWebView.setIsPreventTouchEvent(zOptBoolean);
                jSONObject2.put("success", true);
            } else {
                jSONObject2.put("success", false);
            }
        } catch (Throwable unused) {
            jSONObject2.put("success", false);
        }
        return jSONObject2;
    }
}
