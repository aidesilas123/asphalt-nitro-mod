package com.iab.omid.library.jungroup.publisher;

import android.webkit.WebView;
import com.iab.omid.library.jungroup.adsession.d;
import com.iab.omid.library.jungroup.adsession.k;
import com.iab.omid.library.jungroup.adsession.l;
import com.iab.omid.library.jungroup.b.f;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import java.util.Collections;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a {
    public com.iab.omid.library.jungroup.e.b a;
    public com.iab.omid.library.jungroup.adsession.a b;
    public com.iab.omid.library.jungroup.adsession.media.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f4965d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f4966e;

    public a() {
        d();
        this.a = new com.iab.omid.library.jungroup.e.b(null);
    }

    public void a() {
    }

    public final void a(WebView webView) {
        this.a = new com.iab.omid.library.jungroup.e.b(webView);
    }

    public final void a(com.iab.omid.library.jungroup.adsession.c cVar) {
        WebView webViewC = c();
        JSONObject jSONObject = new JSONObject();
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "impressionOwner", cVar.a);
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "mediaEventsOwner", cVar.b);
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "creativeType", cVar.f4942d);
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "impressionType", cVar.f4943e);
        com.iab.omid.library.jungroup.d.b.a(jSONObject, "isolateVerificationScripts", Boolean.valueOf(cVar.c));
        f.a(webViewC, o2.a.f6463e, jSONObject);
    }

    public void a(l lVar, d dVar) {
        a(lVar, dVar, null);
    }

    public final void a(l lVar, d dVar, JSONObject jSONObject) {
        String str = lVar.h;
        JSONObject jSONObject2 = new JSONObject();
        com.iab.omid.library.jungroup.d.b.a(jSONObject2, "environment", MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        com.iab.omid.library.jungroup.d.b.a(jSONObject2, "adSessionType", dVar.h);
        com.iab.omid.library.jungroup.d.b.a(jSONObject2, "deviceInfo", com.iab.omid.library.jungroup.d.a.a());
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("clid");
        jSONArray.put("vlid");
        com.iab.omid.library.jungroup.d.b.a(jSONObject2, "supports", jSONArray);
        JSONObject jSONObject3 = new JSONObject();
        com.iab.omid.library.jungroup.d.b.a(jSONObject3, "partnerName", dVar.a.a);
        com.iab.omid.library.jungroup.d.b.a(jSONObject3, "partnerVersion", dVar.a.b);
        com.iab.omid.library.jungroup.d.b.a(jSONObject2, "omidNativeInfo", jSONObject3);
        JSONObject jSONObject4 = new JSONObject();
        com.iab.omid.library.jungroup.d.b.a(jSONObject4, "libraryVersion", "1.3.25-Jungroup");
        com.iab.omid.library.jungroup.d.b.a(jSONObject4, "appId", com.iab.omid.library.jungroup.b.d.b.a.getApplicationContext().getPackageName());
        com.iab.omid.library.jungroup.d.b.a(jSONObject2, MBridgeConstans.DYNAMIC_VIEW_WX_APP, jSONObject4);
        String str2 = dVar.f4947g;
        if (str2 != null) {
            com.iab.omid.library.jungroup.d.b.a(jSONObject2, "contentUrl", str2);
        }
        String str3 = dVar.f4946f;
        if (str3 != null) {
            com.iab.omid.library.jungroup.d.b.a(jSONObject2, "customReferenceData", str3);
        }
        JSONObject jSONObject5 = new JSONObject();
        for (k kVar : Collections.unmodifiableList(dVar.c)) {
            com.iab.omid.library.jungroup.d.b.a(jSONObject5, kVar.a, kVar.c);
        }
        f.a(c(), "startSession", str, jSONObject2, jSONObject5, jSONObject);
    }

    public final void a(String str) {
        f.a(c(), "publishMediaEvent", str);
    }

    public void b() {
        this.a.clear();
    }

    public final WebView c() {
        return this.a.get();
    }

    public final void d() {
        this.f4966e = System.nanoTime();
        this.f4965d = 1;
    }
}
