package com.mbridge.msdk.foundation.same.net.h;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.json.v4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ad;
import com.mbridge.msdk.foundation.tools.g;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.foundation.tools.w;
import org.json.JSONObject;

/* JADX INFO: compiled from: CommonRequestParamsForAdd.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e {
    private static String a = "";
    private static String b = "";

    public static void a(d dVar) {
        dVar.a("api_version", com.mbridge.msdk.foundation.same.a.a);
    }

    public static void a(d dVar, Context context) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            dVar.a("withGP", w.x() + "");
            dVar.a("has_wx", w.f(context) + "");
            dVar.a("integrated_wx", w.g() + "");
            dVar.a("opensdk_ver", w.h() + "");
            dVar.a("wx_api_ver", w.c(com.mbridge.msdk.foundation.controller.b.d().i()) + "");
            dVar.a("mnc", w.e(com.mbridge.msdk.foundation.controller.b.d().g()));
            dVar.a("mcc", w.d(com.mbridge.msdk.foundation.controller.b.d().g()));
            String strU = w.u();
            if (!TextUtils.isEmpty(strU)) {
                dVar.a("hardware", strU);
            }
            com.mbridge.msdk.foundation.controller.authoritycontroller.a.a();
            if (com.mbridge.msdk.foundation.a.a.a.a().b(MBridgeConstans.AUTHORITY_DNT, 0) == 1) {
                dVar.a("dnt", "1");
            }
            dVar.a(d.h, com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().e() + "");
            dVar.a("adid_limit", g.b() + "");
            dVar.a("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.a.h() ? "1" : "0");
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_OTHER)) {
            dVar.a(d.f7153f, ad.b() + "");
            dVar.a(d.f7154g, ad.a() + "");
            dVar.a(d.f7151d, w.s());
        }
        dVar.a("pkg_source", w.a(w.o(context), context));
        if (com.mbridge.msdk.foundation.controller.b.d().l() != null) {
            dVar.a("web_env", com.mbridge.msdk.foundation.controller.b.d().l().toString());
        }
        if (Build.VERSION.SDK_INT > 18) {
            dVar.a("http_req", MBridgeConstans.API_REUQEST_CATEGORY_APP);
        }
        a(dVar, true);
        g(dVar);
        f(dVar);
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB == null) {
            eVarB = com.mbridge.msdk.c.f.a().b();
        }
        if (eVarB.aG() == 1) {
            dVar.a("gdpr_consent", com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().f() + "");
        } else if (eVarB.aB()) {
            dVar.a("gdpr_consent", com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().f() + "");
        }
        String strI = com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().i();
        if (!TextUtils.isEmpty(strI)) {
            dVar.a("tc_string", strI);
        }
        h(dVar);
        i(dVar);
    }

    private static void a(d dVar, boolean z) {
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(com.mbridge.msdk.foundation.controller.b.d().h());
        if (eVarB != null) {
            if (!TextUtils.isEmpty(eVarB.c()) && z) {
                dVar.a("a_stid", eVarB.c());
            }
            JSONObject jSONObject = new JSONObject();
            try {
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("dmt", w.v() + "");
                    jSONObject.put("dmf", w.t());
                    jSONObject.put("adid_limit", g.b() + "");
                    jSONObject.put("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.a.h() ? "1" : "0");
                }
                if (eVarB.I() == 1 && !TextUtils.isEmpty(g.e()) && com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                    jSONObject.put("az_aid_info", g.e());
                }
                if (TextUtils.isEmpty(jSONObject.toString())) {
                    return;
                }
                if (!jSONObject.equals(a)) {
                    b = u.a(jSONObject.toString());
                }
                if (TextUtils.isEmpty(b)) {
                    return;
                }
                dVar.a("dvi", b);
            } catch (Exception e2) {
                aa.d("CommonRequestParamsForAdd", e2.getMessage());
            }
        }
    }

    public static void b(d dVar) {
        dVar.a("dyview_type", com.mbridge.msdk.foundation.same.a.b);
    }

    public static void c(d dVar) {
        if (w.y() == 0) {
            return;
        }
        dVar.a("tun", w.y() + "");
    }

    public static void d(d dVar) {
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            dVar.a("withGP", w.x() + "");
            dVar.a("has_wx", w.f(com.mbridge.msdk.foundation.controller.b.d().g()) + "");
            dVar.a("integrated_wx", w.g() + "");
            dVar.a("opensdk_ver", w.h() + "");
            dVar.a("wx_api_ver", w.c(com.mbridge.msdk.foundation.controller.b.d().i()) + "");
            dVar.a("mnc", w.e(com.mbridge.msdk.foundation.controller.b.d().g()));
            dVar.a("mcc", w.d(com.mbridge.msdk.foundation.controller.b.d().g()));
            String strU = w.u();
            if (!TextUtils.isEmpty(strU)) {
                dVar.a("hardware", strU);
            }
            dVar.a("adid_limit", g.b() + "");
            dVar.a("adid_limit_dev", com.mbridge.msdk.foundation.controller.authoritycontroller.a.h() ? "1" : "0");
        }
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_OTHER)) {
            dVar.a(d.f7151d, w.s());
        }
        a(dVar, false);
        g(dVar);
        f(dVar);
        h(dVar);
        i(dVar);
    }

    public static void e(d dVar) {
        if (dVar != null) {
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                dVar.a("model");
                dVar.a("brand");
                dVar.a("screen_size");
                dVar.a("sub_ip");
                dVar.a(KidozParams.NETWORK_TYPE);
                dVar.a("useragent");
                dVar.a(v4.R);
                dVar.a("language");
                dVar.a("network_str");
                dVar.a("os_version");
                dVar.a("country_code");
                dVar.a("cronet_env");
                dVar.a("adid_limit");
                dVar.a("adid_limit_dev");
            }
            if (!com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_OTHER)) {
                dVar.a(d.f7153f);
                dVar.a(d.f7154g);
                dVar.a("power_rate");
                dVar.a("charging");
                dVar.a("timezone");
            }
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.a.a().a(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                return;
            }
            dVar.a(v4.w0);
            dVar.a("gaid2");
            dVar.a("az_aid_info");
        }
    }

    private static void f(d dVar) {
        try {
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l)) {
                com.mbridge.msdk.foundation.same.a.l = com.mbridge.msdk.foundation.a.a.a.a().b(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B);
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l)) {
                dVar.a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, com.mbridge.msdk.foundation.same.a.l);
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                com.mbridge.msdk.foundation.same.a.m = com.mbridge.msdk.foundation.a.a.a.a().b("c");
            }
            if (TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                return;
            }
            dVar.a("c", com.mbridge.msdk.foundation.same.a.m);
        } catch (Exception e2) {
            aa.d("CommonRequestParamsForAdd", e2.getMessage());
        }
    }

    private static void g(d dVar) {
        int iW = w.w();
        if (iW != -1) {
            dVar.a("unknown_source", iW + "");
        }
    }

    private static void h(d dVar) {
        String strD = g.d();
        if (TextUtils.isEmpty(strD)) {
            return;
        }
        dVar.a("az_aid_info", strD);
    }

    private static void i(d dVar) {
        String str = com.mbridge.msdk.f.b.a;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        dVar.a("cronet_env", str);
    }
}
