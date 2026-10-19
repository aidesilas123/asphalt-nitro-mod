package com.hyprmx.android.sdk.om;

import android.view.View;
import android.webkit.WebView;
import com.hyprmx.android.sdk.om.f;
import com.hyprmx.android.sdk.utility.HyprMXLog;
import com.hyprmx.android.sdk.utility.i0;
import com.iab.omid.library.jungroup.adsession.l;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public final class h implements f {
    public final com.iab.omid.library.jungroup.adsession.j a;
    public final String b;
    public com.iab.omid.library.jungroup.adsession.b c;

    public h(com.iab.omid.library.jungroup.adsession.j omPartner, String sessionData) {
        Intrinsics.checkNotNullParameter(omPartner, "omPartner");
        Intrinsics.checkNotNullParameter(sessionData, "sessionData");
        this.a = omPartner;
        this.b = sessionData;
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ com.hyprmx.android.sdk.tracking.a a(float f2) {
        return f.CC.a(this, f2);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void a() {
        f.CC.b(this);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void a(View view) {
        f.CC.c(this, view);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void a(View view, com.iab.omid.library.jungroup.adsession.g gVar) {
        f.CC.d(this, view, gVar);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void b() {
        f.CC.e(this);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final void b(View adView) throws JSONException {
        com.iab.omid.library.jungroup.adsession.d dVar;
        com.iab.omid.library.jungroup.adsession.c cVarA;
        Intrinsics.checkNotNullParameter(adView, "adView");
        String jsonString = this.b;
        Intrinsics.checkNotNullParameter(jsonString, "jsonString");
        JSONObject jSONObject = new JSONObject(jsonString);
        boolean z = jSONObject.getBoolean("forVideo");
        String strA = i0.a("customData", jSONObject);
        com.iab.omid.library.jungroup.adsession.i iVar = com.iab.omid.library.jungroup.adsession.i.NONE;
        if (z) {
            iVar = com.iab.omid.library.jungroup.adsession.i.JAVASCRIPT;
        }
        WebView webView = (WebView) adView;
        try {
            com.iab.omid.library.jungroup.adsession.j jVar = this.a;
            com.iab.omid.library.jungroup.d.d.a("Partner is null", jVar);
            com.iab.omid.library.jungroup.d.d.a("WebView is null", webView);
            if (strA != null && strA.length() > 256) {
                throw new IllegalArgumentException("CustomReferenceData is greater than 256 characters");
            }
            dVar = new com.iab.omid.library.jungroup.adsession.d(jVar, webView, null, null, strA, com.iab.omid.library.jungroup.adsession.e.HTML);
            cVarA = com.iab.omid.library.jungroup.adsession.c.a(com.iab.omid.library.jungroup.adsession.f.DEFINED_BY_JAVASCRIPT, com.iab.omid.library.jungroup.adsession.h.DEFINED_BY_JAVASCRIPT, com.iab.omid.library.jungroup.adsession.i.JAVASCRIPT, iVar);
        } catch (IllegalArgumentException e2) {
            HyprMXLog.e("Error creating or configuring open measurement ad session: " + e2.getLocalizedMessage());
        }
        if (!com.iab.omid.library.jungroup.a.a.a) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
        this.c = new l(cVarA, dVar);
        c(adView);
        com.iab.omid.library.jungroup.adsession.b bVarD = d();
        if (bVarD != null) {
            bVarD.a();
        }
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final void c() {
        this.c = null;
    }

    @Override // com.hyprmx.android.sdk.om.f
    public /* synthetic */ void c(View view) {
        f.CC.f(this, view);
    }

    @Override // com.hyprmx.android.sdk.om.f
    public final com.iab.omid.library.jungroup.adsession.b d() {
        return this.c;
    }
}
