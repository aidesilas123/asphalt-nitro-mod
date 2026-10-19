package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.json.b4;
import com.json.o2;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.Aa;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.out.MBConfiguration;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: compiled from: ReportUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public class q extends g {
    public static final String a = "q";

    public static com.mbridge.msdk.foundation.same.net.h.d a(Context context) {
        String str = "1";
        com.mbridge.msdk.foundation.same.net.h.d dVar = new com.mbridge.msdk.foundation.same.net.h.d();
        try {
            dVar.a("platform", "1");
            dVar.a("package_name", URLEncoder.encode(w.o(context)));
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                dVar.a("os_version", Build.VERSION.RELEASE);
                dVar.a("brand", URLEncoder.encode(w.k()));
                dVar.a("model", URLEncoder.encode(w.i()));
                dVar.a(v4.w0, com.mbridge.msdk.foundation.tools.g.a());
                dVar.a("mnc", w.e(context));
                dVar.a("mcc", w.d(context));
                int iR = w.r(context);
                dVar.a(KidozParams.NETWORK_TYPE, iR + "");
                dVar.a("network_str", w.a(context, iR));
                dVar.a("language", URLEncoder.encode(w.g(context)));
                dVar.a("timezone", URLEncoder.encode(w.m()));
                dVar.a(v4.R, URLEncoder.encode(w.l()));
                dVar.a("adid_limit", com.mbridge.msdk.foundation.tools.g.b() + "");
                if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.h()) {
                    str = "0";
                }
                dVar.a("adid_limit_dev", str);
            }
            dVar.a("sdk_version", MBConfiguration.SDK_VERSION);
            dVar.a("app_version_name", URLEncoder.encode(w.j(context)));
            dVar.a("orientation", URLEncoder.encode(w.h(context) + ""));
            dVar.a("screen_size", w.l(context) + "x" + w.m(context));
            com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
            if (eVarB == null) {
                eVarB = com.mbridge.msdk.c.f.a().b();
            }
            if (eVarB != null) {
                JSONObject jSONObjectA = a(context, eVarB);
                if (!TextUtils.isEmpty(jSONObjectA.toString())) {
                    String strA = com.mbridge.msdk.foundation.tools.u.a(jSONObjectA.toString());
                    if (!TextUtils.isEmpty(strA)) {
                        dVar.a("dvi", strA);
                    }
                }
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
        return dVar;
    }

    public static com.mbridge.msdk.foundation.same.net.h.d a(Context context, String str) {
        com.mbridge.msdk.foundation.same.net.h.d dVarA = a(context);
        dVarA.a("app_id", com.mbridge.msdk.foundation.controller.b.d().h() + "");
        if (!TextUtils.isEmpty(str)) {
            try {
                dVarA.a("data", URLEncoder.encode(str, b4.L));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        return dVarA;
    }

    public static com.mbridge.msdk.foundation.same.net.h.d a(String str, Context context) {
        com.mbridge.msdk.foundation.same.net.h.d dVarA = a(context);
        dVarA.a("app_id", com.mbridge.msdk.foundation.controller.b.d().h() + "");
        if (!TextUtils.isEmpty(str)) {
            try {
                dVarA.a("data", URLEncoder.encode(str, b4.L));
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }
        dVarA.a("m_sdk", "msdk");
        return dVarA;
    }

    public static com.mbridge.msdk.foundation.same.net.h.d a(String str, Context context, String str2) {
        com.mbridge.msdk.foundation.same.net.h.d dVarA = a(context);
        StringBuilder sb = new StringBuilder();
        sb.append(com.mbridge.msdk.foundation.controller.b.d().h());
        sb.append("");
        dVarA.a("app_id", sb.toString());
        dVarA.a(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
        try {
            if (!TextUtils.isEmpty(str2)) {
                String str3 = com.mbridge.msdk.foundation.controller.b.c.get(str2);
                if (TextUtils.isEmpty(str)) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append("u_stid=");
                    sb2.append(str3 != null ? str3 : "");
                    str = sb2.toString();
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(str);
                    sb3.append(o2.i.c);
                    sb3.append("u_stid");
                    sb3.append(o2.i.b);
                    sb3.append(str3 != null ? str3 : "");
                    str = sb3.toString();
                }
            }
            dVarA.a("data", URLEncoder.encode(str, b4.L));
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
        }
        dVarA.a("m_sdk", "msdk");
        return dVarA;
    }

    public static com.mbridge.msdk.foundation.same.net.h.d a(String str, String str2, Context context, String str3) {
        String string;
        if (context != null) {
            context = context.getApplicationContext();
        }
        com.mbridge.msdk.foundation.same.net.h.d dVar = new com.mbridge.msdk.foundation.same.net.h.d();
        dVar.a("m_device_info", c(context, str3));
        dVar.a("m_action", str);
        try {
            if (TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject();
                String str4 = com.mbridge.msdk.foundation.controller.b.c.get(str3);
                if (!TextUtils.isEmpty(str4)) {
                    jSONObject.put("u_stid", str4);
                }
                string = jSONObject.toString();
            } else {
                String strA = Aa.a();
                if (strA == null) {
                    strA = "";
                }
                JSONObject jSONObject2 = new JSONObject(str2);
                jSONObject2.put("channel", strA);
                String str5 = com.mbridge.msdk.foundation.controller.b.c.get(str3);
                if (!TextUtils.isEmpty(str5)) {
                    jSONObject2.put("u_stid", str5 != null ? str5 : "");
                }
                string = jSONObject2.toString();
            }
            str2 = string;
        } catch (Throwable th) {
            th.printStackTrace();
        }
        dVar.a("m_data", str2);
        dVar.a("m_sdk", "msdk");
        return dVar;
    }

    public static String a(Campaign campaign, int i, String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("category", "adtrack");
            jSONObject.put("action", str);
            jSONObject.put("label", i);
            if (campaign != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("id", campaign.getId());
                jSONObject2.put("title", campaign.getAppName());
                jSONObject.put("value", jSONObject2);
            } else {
                jSONObject.put("value", "");
            }
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
        return jSONObject.toString();
    }

    public static String a(String str, Map<String, Object> map) {
        StringBuilder sb = new StringBuilder();
        sb.append("key=" + str);
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                sb.append(o2.i.c + entry.getKey() + o2.i.b + entry.getValue());
            }
        }
        sb.append("\n");
        return sb.toString();
    }

    public static JSONObject a(Context context, com.mbridge.msdk.c.e eVar) throws Exception {
        JSONObject jSONObject = new JSONObject();
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            String strQ = w.q();
            if (!TextUtils.isEmpty(strQ)) {
                jSONObject.put("manufacturer", strQ);
            }
            int iP = w.p();
            if (iP != -1) {
                jSONObject.put("sdkint", iP);
            }
            String strT = w.t(context);
            if (!TextUtils.isEmpty(strT)) {
                jSONObject.put("is24H", strT);
            }
            String strR = w.r();
            if (!TextUtils.isEmpty(strR)) {
                jSONObject.put("totalram", strR);
            }
            String strU = w.u(context);
            if (!TextUtils.isEmpty(strU)) {
                jSONObject.put("totalmemory", strU);
            }
            jSONObject.put("adid_limit", com.mbridge.msdk.foundation.tools.g.b() + "");
            jSONObject.put("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.a.h() ? "1" : "0");
        }
        if (eVar.I() == 1 && !TextUtils.isEmpty(com.mbridge.msdk.foundation.tools.g.e()) && com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            jSONObject.put("az_aid_info", com.mbridge.msdk.foundation.tools.g.e());
        }
        return jSONObject;
    }

    public static void a(int i, String str, String str2) {
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g()).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a("key=2000080" + o2.i.c + "reason=" + str2 + o2.i.c + "ad_type=" + i + o2.i.c + "url=" + URLEncoder.encode(str, b4.L), com.mbridge.msdk.foundation.controller.b.d().g(), ""), null);
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    public static void a(Context context, CampaignEx campaignEx, int i, String str, String str2) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000114&");
            stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
            StringBuilder sb = new StringBuilder();
            sb.append("gh_id=");
            String strEncode = "";
            sb.append(TextUtils.isEmpty(campaignEx.getGhId()) ? "" : URLEncoder.encode(campaignEx.getGhId(), b4.L));
            sb.append(o2.i.c);
            stringBuffer.append(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("gh_path=");
            sb2.append(TextUtils.isEmpty(campaignEx.getGhPath()) ? "" : URLEncoder.encode(campaignEx.getGhPath(), b4.L));
            sb2.append(o2.i.c);
            stringBuffer.append(sb2.toString());
            stringBuffer.append("unit_id=" + str2 + o2.i.c);
            stringBuffer.append("rid=");
            stringBuffer.append(campaignEx.getRequestId());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
            stringBuffer.append("result=" + i + o2.i.c);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("reason=");
            if (!TextUtils.isEmpty(str)) {
                strEncode = URLEncoder.encode(str, b4.L);
            }
            sb3.append(strEncode);
            sb3.append(o2.i.c);
            stringBuffer.append(sb3.toString());
            stringBuffer.append("cid=" + campaignEx.getId());
            if (k.a().c()) {
                k.a().a(stringBuffer.toString());
            } else {
                a(context, stringBuffer.toString(), str2);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000054&");
            stringBuffer.append("network_type=");
            stringBuffer.append(w.r(context));
            stringBuffer.append(o2.i.c);
            stringBuffer.append("unit_id=");
            stringBuffer.append(str);
            stringBuffer.append(o2.i.c);
            stringBuffer.append("cid=");
            stringBuffer.append(campaignEx.getId());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("reason=&");
            stringBuffer.append("result=2&");
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append(str2);
            }
            if (campaignEx.getAdType() == 287) {
                stringBuffer.append("creative=");
                stringBuffer.append(URLEncoder.encode(campaignEx.getendcard_url()));
                stringBuffer.append(o2.i.c);
                stringBuffer.append("ad_type=3&");
            } else if (campaignEx.getAdType() == 94) {
                stringBuffer.append("creative=");
                stringBuffer.append(URLEncoder.encode(campaignEx.getendcard_url()));
                stringBuffer.append(o2.i.c);
                stringBuffer.append("ad_type=1&");
            } else if (campaignEx.getAdType() == 296) {
                stringBuffer.append("ad_type=5&");
                stringBuffer.append("creative=");
                stringBuffer.append(campaignEx.getCreativeId());
                stringBuffer.append(o2.i.c);
            } else if (campaignEx.getAdType() == 297) {
                stringBuffer.append("ad_type=6&");
                stringBuffer.append("creative=");
                stringBuffer.append(campaignEx.getCreativeId());
                stringBuffer.append(o2.i.c);
            } else if (campaignEx.getAdType() == 298) {
                stringBuffer.append("ad_type=7&");
                stringBuffer.append("creative=");
                stringBuffer.append(campaignEx.getCreativeId());
                stringBuffer.append(o2.i.c);
            } else {
                stringBuffer.append("creative=");
                stringBuffer.append(URLEncoder.encode(campaignEx.getendcard_url()));
                stringBuffer.append(o2.i.c);
                stringBuffer.append("ad_type=1&");
            }
            stringBuffer.append("devid=");
            stringBuffer.append(com.mbridge.msdk.foundation.tools.g.a());
            stringBuffer.append(o2.i.c);
            if (campaignEx.isBidCampaign()) {
                stringBuffer.append("hb=1&");
            }
            stringBuffer.append("rid=");
            stringBuffer.append(campaignEx.getRequestId());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("rid_n=");
            stringBuffer.append(campaignEx.getRequestIdNotice());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("adspace_t=");
            stringBuffer.append(campaignEx.getAdSpaceT());
            if (k.a().c()) {
                k.a().a(stringBuffer.toString());
            } else {
                a(context, stringBuffer.toString(), str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, int i) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000074&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str2 + o2.i.c);
                stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                stringBuffer.append("type=" + i + o2.i.c);
                stringBuffer.append("rid=");
                stringBuffer.append(campaignEx.getRequestId());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("url=");
                sb.append(URLEncoder.encode(str, b4.L));
                stringBuffer.append(sb.toString());
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    a(context, stringBuffer.toString(), str2);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, int i, int i2) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000075&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str2 + o2.i.c);
                stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                stringBuffer.append("type=" + i + o2.i.c);
                stringBuffer.append("rid=");
                stringBuffer.append(campaignEx.getRequestId());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
                stringBuffer.append("statue=" + i2 + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("url=");
                sb.append(URLEncoder.encode(str, b4.L));
                stringBuffer.append(sb.toString());
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    a(context, stringBuffer.toString(), str2);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, CampaignEx campaignEx, String str, String str2, int i, String str3) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (!TextUtils.isEmpty(str2)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000073&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str2 + o2.i.c);
                stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                stringBuffer.append("reason=" + str3 + o2.i.c);
                stringBuffer.append("result=" + i + o2.i.c);
                stringBuffer.append("rid=");
                stringBuffer.append(campaignEx.getRequestId());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
                StringBuilder sb = new StringBuilder();
                sb.append("url=");
                sb.append(URLEncoder.encode(str, b4.L));
                stringBuffer.append(sb.toString());
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    a(context, stringBuffer.toString(), str2);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, com.mbridge.msdk.foundation.entity.e eVar, String str, boolean z, CampaignEx campaignEx) {
        String strE;
        if (eVar != null) {
            try {
                strE = eVar.e();
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        } else {
            strE = "";
        }
        if (context == null || TextUtils.isEmpty(strE) || TextUtils.isEmpty(str)) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=2000047&");
        if (!TextUtils.isEmpty(str)) {
            String str2 = com.mbridge.msdk.foundation.controller.b.c.get(str);
            StringBuilder sb = new StringBuilder();
            sb.append("u_stid=");
            sb.append(str2 != null ? str2 : "");
            sb.append(o2.i.c);
            stringBuffer.append(sb.toString());
        }
        if (campaignEx != null) {
            stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
            stringBuffer.append("adtp=" + campaignEx.getAdType() + o2.i.c);
            stringBuffer.append("rid=" + campaignEx.getRequestId());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
        }
        stringBuffer.append("st=" + System.currentTimeMillis() + o2.i.c);
        stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
        stringBuffer.append("unit_id=" + str + o2.i.c);
        stringBuffer.append("hb=");
        stringBuffer.append(z ? 1 : 0);
        stringBuffer.append(o2.i.c);
        stringBuffer.append("reason=" + strE);
        if (k.a().c()) {
            k.a().a(stringBuffer.toString());
        } else {
            d(context, stringBuffer.toString());
        }
    }

    public static void a(Context context, com.mbridge.msdk.foundation.entity.e eVar, String str, boolean z, CampaignUnit campaignUnit) {
        String strE;
        CampaignEx campaignEx;
        if (eVar != null) {
            try {
                strE = eVar.e();
            } catch (Throwable th) {
                th.printStackTrace();
                return;
            }
        } else {
            strE = "";
        }
        if (context == null || TextUtils.isEmpty(strE) || TextUtils.isEmpty(str)) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=m_campaign_filtered&");
        if (!TextUtils.isEmpty(str)) {
            String str2 = com.mbridge.msdk.foundation.controller.b.c.get(str);
            StringBuilder sb = new StringBuilder();
            sb.append("u_stid=");
            sb.append(str2 != null ? str2 : "");
            sb.append(o2.i.c);
            stringBuffer.append(sb.toString());
        }
        if (campaignUnit != null && campaignUnit.getAds() != null && campaignUnit.getAds().size() > 0 && (campaignEx = campaignUnit.getAds().get(0)) != null) {
            z = campaignEx.isBidCampaign();
            stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
            stringBuffer.append("adtp=" + campaignEx.getAdType() + o2.i.c);
            stringBuffer.append("rid=" + campaignEx.getRequestId());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
        }
        stringBuffer.append("st=" + System.currentTimeMillis() + o2.i.c);
        stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
        stringBuffer.append("unit_id=" + str + o2.i.c);
        stringBuffer.append("hb=");
        stringBuffer.append(z ? 1 : 0);
        stringBuffer.append(o2.i.c);
        stringBuffer.append("reason=" + strE);
        aa.d("CommonReport", stringBuffer.toString());
        if (k.a().c()) {
            k.a().a(stringBuffer.toString());
        } else {
            d(context, stringBuffer.toString());
        }
    }

    public static void a(Context context, String str, int i, String str2, String str3, CampaignEx campaignEx) {
        if (campaignEx == null || context == null) {
            return;
        }
        try {
            String campaignUnitId = campaignEx.getCampaignUnitId();
            boolean zIsBidCampaign = campaignEx.isBidCampaign();
            String requestId = campaignEx.getRequestId();
            String id = campaignEx.getId();
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(campaignUnitId)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000108&");
            if (!TextUtils.isEmpty(campaignUnitId)) {
                String str4 = com.mbridge.msdk.foundation.controller.b.c.get(campaignUnitId);
                StringBuilder sb = new StringBuilder();
                sb.append("u_stid=");
                if (str4 == null) {
                    str4 = "";
                }
                sb.append(str4);
                sb.append(o2.i.c);
                stringBuffer.append(sb.toString());
            }
            if (!TextUtils.isEmpty(requestId)) {
                stringBuffer.append("rid=" + requestId + o2.i.c);
            }
            if (!TextUtils.isEmpty(id)) {
                stringBuffer.append("cid=" + id + o2.i.c);
            }
            stringBuffer.append("template_id=" + i + o2.i.c);
            if (!TextUtils.isEmpty(str)) {
                stringBuffer.append("ad_type=" + str + o2.i.c);
            }
            if (!TextUtils.isEmpty(str3)) {
                stringBuffer.append("process=" + str3 + o2.i.c);
            }
            stringBuffer.append("unit_id=" + campaignUnitId + o2.i.c);
            stringBuffer.append("hb=");
            stringBuffer.append(zIsBidCampaign ? 1 : 0);
            stringBuffer.append(o2.i.c);
            stringBuffer.append("reason=" + str2);
            if (k.a().c()) {
                k.a().a(stringBuffer.toString());
            } else {
                d(context, stringBuffer.toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private static void a(final Context context, final String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a(str, context, str2), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.q.1
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str3) {
                    com.mbridge.msdk.foundation.entity.l lVar = new com.mbridge.msdk.foundation.entity.l();
                    lVar.c(str);
                    lVar.a(System.currentTimeMillis());
                    lVar.a(0);
                    lVar.b("POST");
                    lVar.a(com.mbridge.msdk.foundation.same.net.g.d.a().a);
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(context)).a(lVar);
                    aa.d(q.a, str3);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str3) {
                    aa.d(q.a, str3);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }

    public static void a(Context context, String str, String str2, int i, String str3) {
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(str2)) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("key=2000076&");
                    stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                    stringBuffer.append("unit_id=" + str2 + o2.i.c);
                    stringBuffer.append("reason=" + str3 + o2.i.c);
                    stringBuffer.append("result=" + i + o2.i.c);
                    StringBuilder sb = new StringBuilder();
                    sb.append("url=");
                    sb.append(URLEncoder.encode(str, b4.L));
                    stringBuffer.append(sb.toString());
                    if (k.a().c()) {
                        k.a().a(stringBuffer.toString());
                    } else {
                        a(context, stringBuffer.toString(), str2);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(Context context, String str, String str2, boolean z, String str3, String str4, String str5, String str6) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000104&");
                if (!TextUtils.isEmpty(str2)) {
                    String str7 = com.mbridge.msdk.foundation.controller.b.c.get(str2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("u_stid=");
                    if (str7 == null) {
                        str7 = "";
                    }
                    sb.append(str7);
                    sb.append(o2.i.c);
                    stringBuffer.append(sb.toString());
                }
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append("rid=" + str3 + o2.i.c);
                }
                if (!TextUtils.isEmpty(str4)) {
                    stringBuffer.append("rid_n=" + str4 + o2.i.c);
                }
                if (!TextUtils.isEmpty(str5)) {
                    stringBuffer.append("cid=" + str5 + o2.i.c);
                }
                if (!TextUtils.isEmpty(str6)) {
                    stringBuffer.append("template_id=" + str6 + o2.i.c);
                }
                stringBuffer.append("unit_id=" + str2 + o2.i.c);
                stringBuffer.append("hb=");
                stringBuffer.append(z ? 1 : 0);
                stringBuffer.append(o2.i.c);
                stringBuffer.append("reason=" + str);
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    d(context, stringBuffer.toString());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(Context context, List<CampaignEx> list, String str, boolean z) {
        if (context == null || list == null) {
            return;
        }
        try {
            if (list.size() <= 0 || TextUtils.isEmpty(str)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000048&");
            stringBuffer.append("st=" + System.currentTimeMillis() + o2.i.c);
            stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
            stringBuffer.append("unit_id=" + str + o2.i.c);
            CampaignEx campaignEx = list.get(0);
            stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
            if (z) {
                stringBuffer.append("hb=");
                stringBuffer.append(1);
                stringBuffer.append(o2.i.c);
            }
            String requestId = campaignEx.getRequestId();
            if (!TextUtils.isEmpty(requestId)) {
                stringBuffer.append("rid=");
                stringBuffer.append(requestId);
                stringBuffer.append(o2.i.c);
            }
            String requestIdNotice = campaignEx.getRequestIdNotice();
            if (!TextUtils.isEmpty(requestIdNotice)) {
                stringBuffer.append("rid_n=");
                stringBuffer.append(requestIdNotice);
                stringBuffer.append(o2.i.c);
            }
            StringBuilder sb = new StringBuilder("rtins_type=");
            for (int i = 0; i < list.size(); i++) {
                CampaignEx campaignEx2 = list.get(i);
                if (i < list.size() - 1) {
                    sb.append(campaignEx2.getRtinsType());
                    sb.append(",");
                } else {
                    sb.append(campaignEx2.getRtinsType());
                }
            }
            stringBuffer.append((CharSequence) sb);
            if (k.a().c()) {
                k.a().a(stringBuffer.toString());
            } else {
                a(context, stringBuffer.toString(), str);
            }
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i, int i2, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g());
            StringBuilder sb = new StringBuilder();
            sb.append("key");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("2000121", b4.L));
            sb.append(o2.i.c);
            sb.append("rid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(campaignEx.getRequestId(), b4.L));
            sb.append(o2.i.c);
            sb.append("rid_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(campaignEx.getRequestIdNotice(), b4.L));
            sb.append(o2.i.c);
            sb.append(BidResponsedEx.KEY_CID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(campaignEx.getId(), b4.L));
            sb.append(o2.i.c);
            sb.append(MBridgeConstans.PROPERTIES_UNIT_ID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str, b4.L));
            sb.append(o2.i.c);
            sb.append("type");
            sb.append(o2.i.b);
            sb.append(i);
            sb.append(o2.i.c);
            sb.append("result");
            sb.append(o2.i.b);
            sb.append(i2);
            sb.append(o2.i.c);
            sb.append("reason");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str2, b4.L));
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a(sb.toString(), com.mbridge.msdk.foundation.controller.b.d().g(), str), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.q.3
                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onFailed(String str3) {
                    }

                    @Override // com.mbridge.msdk.foundation.same.report.d.b
                    public final void onSuccess(String str3) {
                    }
                });
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(CampaignEx campaignEx, String str, int i, int i2, String str2, int i3, int i4, int i5, String str3) {
        try {
            HashMap map = new HashMap();
            map.put("key", URLEncoder.encode("2000094", b4.L));
            if (campaignEx != null) {
                map.put("rid", URLEncoder.encode(campaignEx.getRequestId(), b4.L));
                map.put("rid_n", URLEncoder.encode(campaignEx.getRequestIdNotice(), b4.L));
                map.put(BidResponsedEx.KEY_CID, URLEncoder.encode(campaignEx.getId(), b4.L));
                map.put("lrid", campaignEx.getCurrentLRid());
                ArrayList arrayList = new ArrayList();
                arrayList.add(campaignEx);
                map.putAll(m.a().a(arrayList));
            }
            map.put(MBridgeConstans.PROPERTIES_UNIT_ID, URLEncoder.encode(str, b4.L));
            if (i == 0) {
                if (TextUtils.isEmpty(str3)) {
                    str3 = "0";
                }
                map.put("video_prg", str3 + "");
            } else {
                map.put("video_prg", i + "");
            }
            map.put(TypedValues.CycleType.S_WAVE_PHASE, i2 + "");
            map.put("feedback_content", URLEncoder.encode(str2, b4.L));
            map.put("feedback_close", i3 + "");
            map.put("type", i5 + "");
            map.put("ad_type", i4 + "");
            map.put(KidozParams.NETWORK_TYPE, URLEncoder.encode(String.valueOf(w.r(com.mbridge.msdk.foundation.controller.b.d().g())), b4.L));
            m.a().a("2000094", "", str, i4 + "", map);
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(String str) {
        com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g());
        String str2 = "key=2000088&state=" + str;
        aa.d(a, str2);
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB == null || g.a(eVarB, str2)) {
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a(str2, com.mbridge.msdk.foundation.controller.b.d().g(), ""), null);
        }
    }

    public static void a(String str, int i, int i2, String str2, int i3, String str3) {
        try {
            HashMap map = new HashMap();
            map.put("key", URLEncoder.encode("m_water_mark_result", b4.L));
            map.put("water_mark_result", i2 + "");
            map.put("water_mark_error_msg", URLEncoder.encode(str2, b4.L));
            map.put("render_result", i3 + "");
            map.put("water_mark_str", URLEncoder.encode(str3, b4.L));
            m.a().a("m_water_mark_result", "", str, i + "", map);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static boolean a() {
        try {
            return System.currentTimeMillis() - 86400000 > ((Long) ai.b(com.mbridge.msdk.foundation.controller.b.d().g(), "privateAuthorityTimesTamp", 0L)).longValue();
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    public static void b() {
        try {
            ai.a(com.mbridge.msdk.foundation.controller.b.d().g(), "privateAuthorityTimesTamp", Long.valueOf(System.currentTimeMillis()));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void b(Context context, CampaignEx campaignEx, String str, String str2) {
        if (context != null) {
            try {
                if ((!TextUtils.isEmpty(str)) && (true ^ TextUtils.isEmpty(str2))) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("key=2000054&");
                    stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                    stringBuffer.append("unit_id=" + str + o2.i.c);
                    stringBuffer.append("reason=" + str2 + o2.i.c);
                    stringBuffer.append("result=1&");
                    stringBuffer.append("devid=" + com.mbridge.msdk.foundation.tools.g.a() + o2.i.c);
                    if (campaignEx != null) {
                        stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                        if (campaignEx.getAdType() == 287) {
                            stringBuffer.append("creative=" + URLEncoder.encode(campaignEx.getendcard_url()) + o2.i.c);
                            stringBuffer.append("ad_type=3&");
                        } else if (campaignEx.getAdType() == 94) {
                            stringBuffer.append("creative=" + URLEncoder.encode(campaignEx.getendcard_url()) + o2.i.c);
                            stringBuffer.append("ad_type=1&");
                        } else if (campaignEx.getAdType() == 296) {
                            stringBuffer.append("ad_type=5&");
                            stringBuffer.append("creative=" + campaignEx.getCreativeId() + o2.i.c);
                        } else if (campaignEx.getAdType() == 297) {
                            stringBuffer.append("ad_type=6&");
                            stringBuffer.append("ad_html=" + campaignEx.getAdHtml() + o2.i.c);
                            stringBuffer.append("ad_tpl_url=" + URLEncoder.encode(campaignEx.getAdZip()) + o2.i.c);
                        } else if (campaignEx.getAdType() == 298) {
                            stringBuffer.append("ad_type=7&");
                            stringBuffer.append("ad_html=" + campaignEx.getAdHtml() + o2.i.c);
                            stringBuffer.append("ad_tpl_url=" + URLEncoder.encode(campaignEx.getAdZip()) + o2.i.c);
                        } else {
                            stringBuffer.append("creative=" + URLEncoder.encode(campaignEx.getendcard_url()) + o2.i.c);
                            stringBuffer.append("ad_type=1&");
                        }
                        stringBuffer.append("rid=");
                        stringBuffer.append(campaignEx.getRequestId());
                        stringBuffer.append(o2.i.c);
                        stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice());
                    }
                    if (k.a().c()) {
                        k.a().a(stringBuffer.toString());
                    } else {
                        a(context, stringBuffer.toString(), str);
                    }
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a(str, context), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.q.4
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str2) {
                    aa.d(q.a, str2);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str2) {
                    aa.d(q.a, str2);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }

    public static void b(String str) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(com.mbridge.msdk.foundation.controller.b.d().g());
            StringBuilder sb = new StringBuilder();
            sb.append("key=");
            sb.append("2000090");
            sb.append(o2.i.c);
            sb.append("reason=");
            sb.append(TextUtils.isEmpty(str) ? "" : str);
            sb.append(o2.i.c);
            sb.append("result=");
            sb.append(!TextUtils.isEmpty(str));
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a(sb.toString(), com.mbridge.msdk.foundation.controller.b.d().g(), ""), null);
        } catch (Exception e2) {
            aa.d(a, e2.getMessage());
        }
    }

    private static String c(Context context, String str) {
        String str2 = "1";
        if (context == null) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("pf", "1");
            jSONObject.put("ov", w.n());
            jSONObject.put("pn", w.o(context));
            jSONObject.put("vn", w.j(context));
            jSONObject.put("vc", w.i(context));
            jSONObject.put("ot", w.h(context));
            jSONObject.put("dm", w.i());
            jSONObject.put("bd", w.k());
            jSONObject.put(v4.w0, com.mbridge.msdk.foundation.tools.g.a());
            jSONObject.put("mnc", w.e(context));
            jSONObject.put("mcc", w.d(context));
            int iR = w.r(context);
            jSONObject.put("nt", iR);
            jSONObject.put("nts", w.a(context, iR));
            jSONObject.put("l", w.g(context));
            jSONObject.put("tz", w.m());
            jSONObject.put(v4.R, w.l());
            jSONObject.put("app_id", com.mbridge.msdk.foundation.controller.b.d().h());
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject.put("sv", MBConfiguration.SDK_VERSION);
            jSONObject.put("ss", w.l(context) + "x" + w.m(context));
            jSONObject.put("adid_limit", com.mbridge.msdk.foundation.tools.g.b());
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.h()) {
                str2 = "0";
            }
            jSONObject.put("adid_limit_dev", str2);
            if (com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h()) != null) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        String strQ = w.q();
                        if (!TextUtils.isEmpty(strQ)) {
                            jSONObject2.put("manufacturer", strQ);
                        }
                        int iP = w.p();
                        if (iP != -1) {
                            jSONObject2.put("sdkint", iP);
                        }
                        String strT = w.t(context);
                        if (!TextUtils.isEmpty(strT)) {
                            jSONObject2.put("is24H", strT);
                        }
                        String strR = w.r();
                        if (!TextUtils.isEmpty(strR)) {
                            jSONObject2.put("totalram", strR);
                        }
                        String strU = w.u(context);
                        if (!TextUtils.isEmpty(strU)) {
                            jSONObject2.put("totalmemory", strU);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    } catch (Throwable th) {
                        th.printStackTrace();
                    }
                    if (!TextUtils.isEmpty(jSONObject2.toString())) {
                        String strA = com.mbridge.msdk.foundation.tools.u.a(jSONObject2.toString());
                        if (!TextUtils.isEmpty(strA)) {
                            jSONObject.put("dvi", URLEncoder.encode(strA, b4.L));
                        }
                    }
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            return jSONObject.toString();
        } catch (Exception e4) {
            e4.printStackTrace();
            return "";
        }
    }

    private static void d(final Context context, final String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, a(str, context), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.foundation.same.report.q.2
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str2) {
                    com.mbridge.msdk.foundation.entity.l lVar = new com.mbridge.msdk.foundation.entity.l();
                    lVar.c(str);
                    lVar.a(System.currentTimeMillis());
                    lVar.a(0);
                    lVar.b("POST");
                    lVar.a(com.mbridge.msdk.foundation.same.net.g.d.a().a);
                    com.mbridge.msdk.foundation.db.n.a(com.mbridge.msdk.foundation.db.h.a(context)).a(lVar);
                    aa.d(q.a, str2);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str2) {
                    aa.d(q.a, str2);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }
}
