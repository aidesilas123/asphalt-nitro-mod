package com.bytedance.sdk.openadsdk.h.a;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.component.a.r;
import com.bytedance.sdk.openadsdk.core.x;
import com.json.o2;
import org.json.JSONObject;

/* JADX INFO: compiled from: OldBridgeSyncMethod.java */
/* JADX INFO: loaded from: classes2.dex */
public class e extends com.bytedance.sdk.component.a.e<JSONObject, JSONObject> {
    private final String a;
    private final x b;

    public e(String str, x xVar) {
        this.b = xVar;
        this.a = str;
    }

    public static void a(r rVar, x xVar) {
        rVar.a("appInfo", new e("appInfo", xVar));
        rVar.a("adInfo", new e("adInfo", xVar));
        rVar.a("sendLog", new e("sendLog", xVar));
        rVar.a("playable_style", new e("playable_style", xVar));
        rVar.a("getTemplateInfo", new e("getTemplateInfo", xVar));
        rVar.a("getTeMaiAds", new e("getTeMaiAds", xVar));
        rVar.a(o2.h.o, new e(o2.h.o, xVar));
        rVar.a("getScreenSize", new e("getScreenSize", xVar));
        rVar.a("getCloseButtonInfo", new e("getCloseButtonInfo", xVar));
        rVar.a("getVolume", new e("getVolume", xVar));
        rVar.a("removeLoading", new e("removeLoading", xVar));
        rVar.a("sendReward", new e("sendReward", xVar));
        rVar.a("subscribe_app_ad", new e("subscribe_app_ad", xVar));
        rVar.a("download_app_ad", new e("download_app_ad", xVar));
        rVar.a("cancel_download_app_ad", new e("cancel_download_app_ad", xVar));
        rVar.a("unsubscribe_app_ad", new e("unsubscribe_app_ad", xVar));
        rVar.a("landscape_click", new e("landscape_click", xVar));
        rVar.a("clickEvent", new e("clickEvent", xVar));
        rVar.a("renderDidFinish", new e("renderDidFinish", xVar));
        rVar.a("dynamicTrack", new e("dynamicTrack", xVar));
        rVar.a("skipVideo", new e("skipVideo", xVar));
        rVar.a("muteVideo", new e("muteVideo", xVar));
        rVar.a("changeVideoState", new e("changeVideoState", xVar));
        rVar.a("getCurrentVideoState", new e("getCurrentVideoState", xVar));
        rVar.a("send_temai_product_ids", new e("send_temai_product_ids", xVar));
        rVar.a("getMaterialMeta", new e("getMaterialMeta", xVar));
        rVar.a("endcard_load", new e("endcard_load", xVar));
        rVar.a("pauseWebView", new e("pauseWebView", xVar));
        rVar.a("pauseWebViewTimers", new e("pauseWebViewTimers", xVar));
        rVar.a("webview_time_track", new e("webview_time_track", xVar));
        rVar.a("openPrivacy", new e("openPrivacy", xVar));
        rVar.a("openAdLandPageLinks", new e("openAdLandPageLinks", xVar));
        rVar.a("getNativeSiteCustomData", new e("getNativeSiteCustomData", xVar));
        rVar.a("close", new e("close", xVar));
    }

    @Override // com.bytedance.sdk.component.a.e
    @Nullable
    public JSONObject a(@NonNull JSONObject jSONObject, @NonNull com.bytedance.sdk.component.a.f fVar) throws Exception {
        x.b bVar = new x.b();
        bVar.a = NotificationCompat.CATEGORY_CALL;
        bVar.c = this.a;
        bVar.f1773d = jSONObject;
        return this.b.a(bVar, 3);
    }
}
