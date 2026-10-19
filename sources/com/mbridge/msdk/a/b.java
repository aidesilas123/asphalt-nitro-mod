package com.mbridge.msdk.a;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.iab.omid.library.mmadbridge.Omid;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.AdSessionConfiguration;
import com.iab.omid.library.mmadbridge.adsession.AdSessionContext;
import com.iab.omid.library.mmadbridge.adsession.CreativeType;
import com.iab.omid.library.mmadbridge.adsession.ImpressionType;
import com.iab.omid.library.mmadbridge.adsession.Owner;
import com.iab.omid.library.mmadbridge.adsession.Partner;
import com.iab.omid.library.mmadbridge.adsession.VerificationScriptResource;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.b.c;
import com.mbridge.msdk.foundation.same.b.e;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.out.MBConfiguration;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: OmsdkUtils.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public static final String a = DomainNameUtils.VERIFICATION_URL;

    public static AdSession a(Context context, WebView webView, String str, CampaignEx campaignEx) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT)) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = a();
        }
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_H5_CONTENT)) {
            MBridgeConstans.OMID_JS_H5_CONTENT = b();
        }
        if (!TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT) && !TextUtils.isEmpty(campaignEx.getOmid())) {
            CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
            c(context);
            AdSession adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, ImpressionType.BEGIN_TO_RENDER, Owner.JAVASCRIPT, (creativeType == CreativeType.HTML_DISPLAY || creativeType == creativeType) ? Owner.NONE : Owner.NATIVE, false), AdSessionContext.createHtmlAdSessionContext(Partner.createPartner("Mintegral", MBConfiguration.SDK_VERSION), webView, null, null));
            adSessionCreateAdSession.registerAdView(webView);
            return adSessionCreateAdSession;
        }
        aa.a("OMSDK", "createNativeAdSession: TextUtils.isEmpty(omid) = " + TextUtils.isEmpty(campaignEx.getOmid()) + " TextUtils.isEmpty(MIntegralConstans.OMID_JS_SERVICE_CONTENT) = " + TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT));
        new p(context).a(campaignEx.getRequestId(), campaignEx.getRequestIdNotice(), campaignEx.getId(), campaignEx.getCampaignUnitId(), "failed, OMID_JS_SERVICE_CONTENT null or omid null");
        return null;
    }

    public static AdSession a(Context context, boolean z, String str, String str2, String str3, String str4, String str5, String str6) {
        Partner partnerCreatePartner;
        CreativeType creativeType;
        ImpressionType impressionType;
        Owner owner;
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT)) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = a();
        }
        AdSession adSessionCreateAdSession = null;
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT) || TextUtils.isEmpty(str)) {
            aa.a("OMSDK", "createNativeAdSession: TextUtils.isEmpty(omid) = " + TextUtils.isEmpty(str) + " TextUtils.isEmpty(MIntegralConstans.OMID_JS_SERVICE_CONTENT) = " + TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_CONTENT));
            new p(context).a(str2, str6, str3, str4, "failed, OMID_JS_SERVICE_CONTENT null or omid null");
            return null;
        }
        try {
            c(context);
            partnerCreatePartner = Partner.createPartner("Mintegral", MBConfiguration.SDK_VERSION);
            creativeType = CreativeType.NATIVE_DISPLAY;
            impressionType = ImpressionType.LOADED;
            owner = Owner.NATIVE;
        } catch (IllegalArgumentException e2) {
            e = e2;
        } catch (Exception e3) {
            e = e3;
        }
        try {
            adSessionCreateAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(creativeType, impressionType, owner, z ? Owner.NONE : owner, false), AdSessionContext.createNativeAdSessionContext(partnerCreatePartner, MBridgeConstans.OMID_JS_SERVICE_CONTENT, a(str, context, str2, str3, str4, str6), str5, str2));
            aa.a("OMSDK", "adSession create success");
            return adSessionCreateAdSession;
        } catch (IllegalArgumentException e4) {
            e = e4;
            aa.d("OMSDK", e.getMessage());
            new p(context).a(str2, str6, str3, str4, "failed, exception " + e.getMessage());
            return adSessionCreateAdSession;
        } catch (Exception e5) {
            e = e5;
            aa.d("OMSDK", e.getMessage());
            new p(context).a(str2, str6, str3, str4, "failed, exception " + e.getMessage());
            return adSessionCreateAdSession;
        }
    }

    private static String a() {
        try {
            return y.a(new File(e.b(c.MBRIDGE_OTHER), "/omsdk/om_js_content.txt"));
        } catch (Exception e2) {
            aa.a("OMSDK", e2.getMessage());
            return "";
        }
    }

    private static List<VerificationScriptResource> a(String str, Context context, String str2, String str3, String str4, String str5) {
        ArrayList arrayList = new ArrayList();
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (str != null) {
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                    String strOptString = jSONObjectOptJSONObject.optString("vkey", "");
                    URL url = new URL(jSONObjectOptJSONObject.optString("et_url", ""));
                    String strOptString2 = jSONObjectOptJSONObject.optString("verification_p", "");
                    arrayList.add(TextUtils.isEmpty(strOptString2) ? TextUtils.isEmpty(strOptString) ? VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url) : VerificationScriptResource.createVerificationScriptResourceWithoutParameters(url) : VerificationScriptResource.createVerificationScriptResourceWithParameters(strOptString, url, strOptString2));
                }
            }
        } catch (IllegalArgumentException e2) {
            aa.d("OMSDK", e2.getMessage());
            new p(context).a(str2, str5, str3, str4, "failed, exception " + e2.getMessage());
        } catch (MalformedURLException e3) {
            aa.d("OMSDK", e3.getMessage());
            new p(context).a(str2, str5, str3, str4, "failed, exception " + e3.getMessage());
        } catch (JSONException e4) {
            aa.d("OMSDK", e4.getMessage());
            new p(context).a(str2, str5, str3, str4, "failed, exception " + e4.getMessage());
        }
        return arrayList;
    }

    public static void a(final Context context) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_SERVICE_URL)) {
            MBridgeConstans.OMID_JS_SERVICE_CONTENT = "";
            new p(context).a("", "", "", "", "fetch OM failed, OMID_JS_SERVICE_URL null");
        } else {
            if (context == null) {
                return;
            }
            try {
                new a(context.getApplicationContext()).get(0, MBridgeConstans.OMID_JS_SERVICE_URL, null, new com.mbridge.msdk.foundation.same.net.c.a() { // from class: com.mbridge.msdk.a.b.1
                    @Override // com.mbridge.msdk.foundation.same.net.c.a
                    public final void a(String str) {
                        MBridgeConstans.OMID_JS_SERVICE_CONTENT = str;
                        aa.a("OMSDK", "fetch OMJSContent success, content = " + str);
                        b.a(str);
                    }

                    @Override // com.mbridge.msdk.foundation.same.net.c.a
                    public final void b(String str) {
                        aa.a("OMSDK", "fetch OMJSContent failed, errorCode = " + str);
                        new p(context).a("", "", "", "", "fetch OM failed, request failed");
                    }
                });
            } catch (Exception e2) {
                aa.d("OMSDK", e2.getMessage());
            }
        }
    }

    public static void a(final String str) {
        new Thread(new Runnable() { // from class: com.mbridge.msdk.a.b.3
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                try {
                    File file = new File(e.b(c.MBRIDGE_OTHER), "/omsdk/om_js_content.txt");
                    if (file.exists()) {
                        file.delete();
                    }
                    y.a(str.getBytes(), file);
                } catch (Exception e2) {
                    aa.a("OMSDK", e2.getMessage());
                }
            }
        }).start();
    }

    private static String b() {
        try {
            File file = new File(e.b(c.MBRIDGE_OTHER), "/omsdk/om_js_h5_content.txt");
            return file.exists() ? y.a(file) : "";
        } catch (Exception e2) {
            aa.a("OMSDK", e2.getMessage());
            return "";
        }
    }

    public static void b(final Context context) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_H5_URL)) {
            MBridgeConstans.OMID_JS_H5_CONTENT = "";
            new p(context).a("", "", "", "", "fetch OM failed, OMID_JS_H5_URL null");
        } else {
            if (context == null) {
                return;
            }
            try {
                new a(context.getApplicationContext()).get(0, MBridgeConstans.OMID_JS_H5_URL, null, new com.mbridge.msdk.foundation.same.net.c.a() { // from class: com.mbridge.msdk.a.b.2
                    @Override // com.mbridge.msdk.foundation.same.net.c.a
                    public final void a(String str) {
                        MBridgeConstans.OMID_JS_H5_CONTENT = str;
                        aa.a("OMSDK", "fetch OMJSH5Content success, content = " + str);
                        b.b(str);
                    }

                    @Override // com.mbridge.msdk.foundation.same.net.c.a
                    public final void b(String str) {
                        aa.a("OMSDK", "fetch OMJSH5Content failed, errorCode = " + str);
                        new p(context).a("", "", "", "", "fetch OM H5 failed, request failed");
                    }
                });
            } catch (Exception e2) {
                aa.d("OMSDK", e2.getMessage());
            }
        }
    }

    public static void b(final String str) {
        new Thread(new Runnable() { // from class: com.mbridge.msdk.a.b.4
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                try {
                    File file = new File(e.b(c.MBRIDGE_OTHER), "/omsdk/om_js_h5_content.txt");
                    if (file.exists()) {
                        file.delete();
                    }
                    y.a(str.getBytes(), file);
                } catch (Exception e2) {
                    aa.a("OMSDK", e2.getMessage());
                }
            }
        }).start();
    }

    public static String c(String str) {
        if (TextUtils.isEmpty(MBridgeConstans.OMID_JS_H5_CONTENT)) {
            MBridgeConstans.OMID_JS_H5_CONTENT = b();
        }
        return TextUtils.isEmpty(str) ? str : str.replace("/*OMSDK_INSERT_HERE*/", MBridgeConstans.OMID_JS_H5_CONTENT).replace("[INSERT RESOURCE URL]", a);
    }

    private static void c(Context context) {
        if (Omid.isActive()) {
            return;
        }
        Omid.activate(context);
    }
}
