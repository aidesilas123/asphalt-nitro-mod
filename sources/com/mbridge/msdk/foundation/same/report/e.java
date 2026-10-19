package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.json.b4;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.w;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;

/* JADX INFO: compiled from: DefaultDecorate.java */
/* JADX INFO: loaded from: classes4.dex */
public final class e implements d {
    private String a(Map<String, String> map) {
        if (map != null && map.size() != 0) {
            if (map.containsKey(CampaignEx.JSON_KEY_CAMPAIGN_UNITID) && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                map.remove(CampaignEx.JSON_KEY_CAMPAIGN_UNITID);
            }
            StringBuilder sb = new StringBuilder();
            int i = 0;
            try {
                for (String str : map.keySet()) {
                    if (!TextUtils.isEmpty(str)) {
                        String str2 = map.get(str);
                        if (i == 0) {
                            sb.append(str);
                            sb.append(o2.i.b);
                            if (str2 == null) {
                                str2 = "";
                            }
                            sb.append(str2);
                        } else {
                            sb.append(o2.i.c);
                            sb.append(str);
                            sb.append(o2.i.b);
                            if (str2 == null) {
                                str2 = "";
                            }
                            sb.append(str2);
                        }
                        i++;
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("CommonReport", e2.getMessage());
                }
                sb = null;
            }
            if (sb != null && sb.length() > 0) {
                return sb.toString();
            }
        }
        return null;
    }

    private Map<String, String> a(b bVar, Context context, String str, String str2) {
        if (bVar == null) {
            return null;
        }
        Map<String, String> mapM = bVar.m();
        if (mapM == null) {
            mapM = new HashMap<>();
        }
        if (!TextUtils.isEmpty(bVar.h())) {
            mapM.put("adtp", bVar.h());
        }
        if (!TextUtils.isEmpty(str2)) {
            mapM.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            String str3 = com.mbridge.msdk.foundation.controller.b.c.get(str2);
            if (TextUtils.isEmpty(str)) {
                str = com.mbridge.msdk.foundation.controller.b.d().h();
            }
            com.mbridge.msdk.c.h hVarE = com.mbridge.msdk.c.f.a().e(str, str2);
            if (hVarE != null && !TextUtils.isEmpty(hVarE.b())) {
                mapM.put("us_rid", hVarE.b());
            }
            if (TextUtils.isEmpty(str3)) {
                str3 = "";
            }
            mapM.put("u_stid", str3);
        }
        com.mbridge.msdk.c.e eVarB = com.mbridge.msdk.c.f.a().b(str);
        if (eVarB == null) {
            eVarB = com.mbridge.msdk.c.f.a().b();
        }
        if (!TextUtils.isEmpty(eVarB.k())) {
            mapM.put("as_rid", eVarB.k());
        }
        try {
            String strI = bVar.i();
            String strL = eVarB.l();
            JSONArray jSONArrayW = eVarB.w();
            if (jSONArrayW != null) {
                int i = 0;
                while (true) {
                    if (i >= jSONArrayW.length()) {
                        break;
                    }
                    if (strI.equals(jSONArrayW.getString(i))) {
                        strL = "1.0";
                        break;
                    }
                    i++;
                }
            }
            if (TextUtils.isEmpty(strL)) {
                mapM.put("log_rate", UniquePlacementId.NO_ID);
            } else {
                mapM.put("log_rate", strL);
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
        String strI2 = bVar.i();
        if (!TextUtils.isEmpty(strI2)) {
            mapM.put("key", strI2);
        }
        if (context != null) {
            mapM.put(KidozParams.NETWORK_TYPE, String.valueOf(w.r(context)));
            mapM.put("network_available", String.valueOf(af.d(context)));
        }
        if (bVar.o()) {
            mapM.put("duration", String.valueOf(bVar.n()));
        }
        return mapM;
    }

    @Override // com.mbridge.msdk.foundation.same.report.d
    public final com.mbridge.msdk.foundation.same.net.h.d a(b bVar) throws Exception {
        if (bVar == null) {
            return null;
        }
        Context contextG = bVar.d() == null ? com.mbridge.msdk.foundation.controller.b.d().g() : bVar.d();
        String strG = bVar.g();
        String strE = bVar.e();
        String strF = bVar.f();
        try {
            String strA = a(a(bVar, contextG, strE, strG));
            bVar.a(strA);
            if (TextUtils.isEmpty(strA)) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("CommonReport", "decorate report data is null");
                }
                return null;
            }
            com.mbridge.msdk.foundation.same.net.h.d dVarA = q.a(contextG);
            dVarA.a("data", URLEncoder.encode(strA, b4.L));
            if (TextUtils.isEmpty(strE)) {
                strE = com.mbridge.msdk.foundation.controller.b.d().h();
            }
            dVarA.a("app_id", strE);
            dVarA.a("m_sdk", "msdk");
            dVarA.a("r_stid", strF);
            if (!TextUtils.isEmpty(strG)) {
                dVarA.a(MBridgeConstans.PROPERTIES_UNIT_ID, strG);
            }
            return dVarA;
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                aa.d("CommonReport", "decorate report data error: " + e2.getMessage());
            }
            return null;
        }
    }
}
