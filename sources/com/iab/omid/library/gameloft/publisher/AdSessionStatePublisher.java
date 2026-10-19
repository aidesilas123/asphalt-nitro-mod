package com.iab.omid.library.gameloft.publisher;

import android.webkit.WebView;
import com.iab.omid.library.gameloft.adsession.AdEvents;
import com.iab.omid.library.gameloft.adsession.AdSessionConfiguration;
import com.iab.omid.library.gameloft.adsession.AdSessionContext;
import com.iab.omid.library.gameloft.adsession.ErrorType;
import com.iab.omid.library.gameloft.adsession.VerificationScriptResource;
import com.iab.omid.library.gameloft.adsession.video.VideoEvents;
import com.iab.omid.library.gameloft.b.c;
import com.iab.omid.library.gameloft.b.d;
import com.mbridge.msdk.MBridgeConstans;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AdSessionStatePublisher {
    private com.iab.omid.library.gameloft.e.b a;
    private AdEvents b;
    private VideoEvents c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f4890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f4891e;

    enum a {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_NOTVISIBLE
    }

    public AdSessionStatePublisher() {
        h();
        this.a = new com.iab.omid.library.gameloft.e.b(null);
    }

    public void a() {
    }

    public void a(float f2) {
        d.a().a(getWebView(), f2);
    }

    void a(WebView webView) {
        this.a = new com.iab.omid.library.gameloft.e.b(webView);
    }

    public void a(AdEvents adEvents) {
        this.b = adEvents;
    }

    public void a(AdSessionConfiguration adSessionConfiguration) {
        d.a().a(getWebView(), adSessionConfiguration.toJsonObject());
    }

    public void a(ErrorType errorType, String str) {
        d.a().a(getWebView(), errorType, str);
    }

    public void a(com.iab.omid.library.gameloft.adsession.a aVar, AdSessionContext adSessionContext) {
        String adSessionId = aVar.getAdSessionId();
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.gameloft.d.b.a(jSONObject, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        com.iab.omid.library.gameloft.d.b.a(jSONObject, "adSessionType", adSessionContext.getAdSessionContextType());
        com.iab.omid.library.gameloft.d.b.a(jSONObject, "deviceInfo", com.iab.omid.library.gameloft.d.a.d());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        com.iab.omid.library.gameloft.d.b.a(jSONObject, "supports", jSONArray);
        JSONObject jSONObject2 = new JSONObject();
        com.iab.omid.library.gameloft.d.b.a(jSONObject2, "partnerName", adSessionContext.getPartner().getName());
        com.iab.omid.library.gameloft.d.b.a(jSONObject2, "partnerVersion", adSessionContext.getPartner().getVersion());
        com.iab.omid.library.gameloft.d.b.a(jSONObject, "omidNativeInfo", jSONObject2);
        JSONObject jSONObject3 = new JSONObject();
        com.iab.omid.library.gameloft.d.b.a(jSONObject3, "libraryVersion", "1.2.19-Gameloft");
        com.iab.omid.library.gameloft.d.b.a(jSONObject3, "appId", c.a().b().getApplicationContext().getPackageName());
        com.iab.omid.library.gameloft.d.b.a(jSONObject, MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject3);
        if (adSessionContext.getCustomReferenceData() != null) {
            com.iab.omid.library.gameloft.d.b.a(jSONObject, "customReferenceData", adSessionContext.getCustomReferenceData());
        }
        JSONObject jSONObject4 = new JSONObject();
        for (VerificationScriptResource verificationScriptResource : adSessionContext.getVerificationScriptResources()) {
            com.iab.omid.library.gameloft.d.b.a(jSONObject4, verificationScriptResource.getVendorKey(), verificationScriptResource.getVerificationParameters());
        }
        d.a().a(getWebView(), adSessionId, jSONObject, jSONObject4);
    }

    public void a(VideoEvents videoEvents) {
        this.c = videoEvents;
    }

    public void a(String str) {
        d.a().a(getWebView(), str, (JSONObject) null);
    }

    public void a(String str, long j) {
        if (j >= this.f4891e) {
            this.f4890d = a.AD_STATE_VISIBLE;
            d.a().c(getWebView(), str);
        }
    }

    public void a(String str, JSONObject jSONObject) {
        d.a().a(getWebView(), str, jSONObject);
    }

    public void a(boolean z) {
        if (e()) {
            d.a().d(getWebView(), z ? "foregrounded" : "backgrounded");
        }
    }

    public void b() {
        this.a.clear();
    }

    public void b(String str, long j) {
        if (j >= this.f4891e) {
            a aVar = this.f4890d;
            a aVar2 = a.AD_STATE_NOTVISIBLE;
            if (aVar != aVar2) {
                this.f4890d = aVar2;
                d.a().c(getWebView(), str);
            }
        }
    }

    public AdEvents c() {
        return this.b;
    }

    public VideoEvents d() {
        return this.c;
    }

    public boolean e() {
        return this.a.get() != null;
    }

    public void f() {
        d.a().a(getWebView());
    }

    public void g() {
        d.a().b(getWebView());
    }

    public WebView getWebView() {
        return this.a.get();
    }

    public void h() {
        this.f4891e = com.iab.omid.library.gameloft.d.d.a();
        this.f4890d = a.AD_STATE_IDLE;
    }
}
