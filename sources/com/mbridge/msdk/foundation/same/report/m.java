package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import com.json.b4;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.e.w;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.b;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.out.MBridgeIds;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import org.json.JSONObject;

/* JADX INFO: compiled from: MetricsReportUtil.java */
/* JADX INFO: loaded from: classes4.dex */
public class m {
    private static volatile m a;
    private String b = "";
    private ConcurrentHashMap<String, Map<String, String>> c = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ConcurrentHashMap<String, c> f7196d = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ConcurrentHashMap<String, Map<String, String>> f7197e = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ConcurrentHashMap<String, Map<String, Map<String, String>>> f7198f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ConcurrentHashMap<String, Map<String, String>> f7199g = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, Map<String, com.mbridge.msdk.foundation.entity.e>> h = new ConcurrentHashMap<>();
    private ConcurrentHashMap<String, String> i = new ConcurrentHashMap<>();
    private Executor j = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: com.mbridge.msdk.foundation.same.report.m.1
        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("mb-common-report-thread");
            return threadNewThread;
        }
    });
    private volatile com.mbridge.msdk.e.m k;

    public static m a() {
        if (a == null) {
            synchronized (m.class) {
                if (a == null) {
                    a = new m();
                }
            }
        }
        return a;
    }

    private void a(String str, b bVar) {
        if (!this.f7196d.containsKey(str)) {
            c cVar = new c();
            cVar.a(bVar);
            this.f7196d.put(str, cVar);
        } else {
            c cVar2 = this.f7196d.get(str);
            if (cVar2 != null) {
                cVar2.a(bVar);
            }
        }
    }

    private void a(String str, String str2, Map<String, String> map, boolean z) {
        a(str, str2, map, z, 0);
    }

    private void a(String str, String str2, Map<String, String> map, boolean z, int i) {
        Map<String, String> map2;
        Map<String, Map<String, String>> map3;
        Map<String, String> map4;
        if (TextUtils.isEmpty(str2)) {
            b(str, map);
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        Map<String, String> map5 = null;
        try {
            if (i != 1) {
                ConcurrentHashMap<String, Map<String, String>> concurrentHashMap = this.f7199g;
                if (concurrentHashMap != null && concurrentHashMap.containsKey(str2)) {
                    map5 = this.f7199g.get(str2);
                }
            } else {
                ConcurrentHashMap<String, Map<String, String>> concurrentHashMap2 = this.f7197e;
                if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(str2)) {
                    map5 = this.f7197e.get(str2);
                }
            }
            if (map5 != null && !str.equals("2000125")) {
                map.putAll(map5);
            }
            if (str.equals("2000126")) {
                try {
                    String strA = com.mbridge.msdk.foundation.same.net.g.a(map.containsKey("bid_tk") ? map.get("bid_tk") : "");
                    map.put("dns_ty", com.mbridge.msdk.c.c.a().e(strA) + "");
                    map.put("dns_hs", strA);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (this.f7198f.containsKey(str2) && (map3 = this.f7198f.get(str2)) != null) {
                if ((map3.containsKey("2000127") || map3.containsKey("2000048") || map3.containsKey("2000152")) && (map4 = map3.get(str)) != null) {
                    map.putAll(map4);
                }
                Map<String, String> map6 = map3.get("0");
                if (map6 != null && !map6.isEmpty()) {
                    map.putAll(map6);
                }
            }
            b.a aVarC = c(str, str2);
            if (aVarC == null) {
                return;
            }
            aVarC.a(map);
            if ((str.equals("2000127") || str.equals("2000128") || str.equals("2000129") || str.equals("2000130") || str.equals("2000137")) && this.f7197e.containsKey(str2) && (map2 = this.f7197e.get(str2)) != null) {
                aVarC.a(map2);
            }
            aVarC.b(z);
            if (str.equals("2000047") || str.equals("2000048")) {
                aVarC.a(true);
            }
            b bVarA = aVarC.a();
            if (bVarA == null) {
                return;
            }
            if (str.equals("2000127")) {
                a(str2, bVarA);
            }
            ConcurrentHashMap<String, c> concurrentHashMap3 = this.f7196d;
            if (concurrentHashMap3 == null || !concurrentHashMap3.containsKey(str2)) {
                bVarA.b();
            } else {
                c cVar = this.f7196d.get(str2);
                if (cVar != null) {
                    if (str.equals("2000125")) {
                        cVar.a(bVarA, "2000123", false, false).b();
                    } else if (str.equals("2000126")) {
                        cVar.a(bVarA, "2000125", false, true).b();
                    } else if (str.equals("2000127")) {
                        cVar.a(bVarA, "2000123", false, false).b();
                    } else if (str.equals("2000133")) {
                        cVar.a(bVarA, "2000154", false, true).b();
                    } else if (str.equals("2000047") || str.equals("2000048")) {
                        cVar.a(bVarA, "2000123", false, true).b();
                    } else if (str.equals("2000154")) {
                        cVar.a(bVarA, "2000127", false, false).b();
                    } else if (str.equals("2000155")) {
                        cVar.a(bVarA, "2000154", false, true).b();
                    } else {
                        bVarA.b();
                    }
                }
            }
            if ("2000151".equals(str)) {
                b(str2);
            }
        } catch (Exception e3) {
            aa.a("MetricsReportUtil", e3.getMessage());
        }
    }

    private boolean a(String str) {
        ConcurrentHashMap<String, Map<String, String>> concurrentHashMap;
        try {
            concurrentHashMap = this.c;
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
        }
        if (concurrentHashMap != null && concurrentHashMap.containsKey(str)) {
            Map<String, String> map = this.c.get(str);
            String str2 = map != null ? map.get("adtp") : "";
            return d(str2, "");
        }
        return false;
    }

    private b.a b(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        ConcurrentHashMap<String, Map<String, String>> concurrentHashMap;
        b.a aVarA;
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        b.a aVar = null;
        if (!TextUtils.isEmpty(str) && contextG != null) {
            try {
                String strH = com.mbridge.msdk.foundation.controller.b.d().h();
                HashMap map2 = new HashMap();
                long jCurrentTimeMillis = System.currentTimeMillis();
                map2.put("ts", String.valueOf(jCurrentTimeMillis));
                Map<String, String> map3 = new HashMap<>();
                ConcurrentHashMap<String, Map<String, String>> concurrentHashMap2 = this.f7197e;
                if (concurrentHashMap2 != null) {
                    map3 = concurrentHashMap2.get(str2);
                }
                if ((map3 == null || map3.size() == 0) && (concurrentHashMap = this.f7199g) != null) {
                    map3 = concurrentHashMap.get(str2);
                }
                String str6 = "";
                if (map3 != null && map3.size() > 0 && map3.containsKey("lrid")) {
                    str6 = map3.get("lrid");
                }
                if (TextUtils.isEmpty(str6) || str.equals("2000125") || str.equals("2000126")) {
                    map2.put("lrid", str2);
                } else {
                    map2.put("lrid", str6);
                }
                aVarA = b.a(str, str3).a(contextG).d(str4).b(strH).e(str5).a(str).c(this.b).b(jCurrentTimeMillis).a(this.j).a(map2).a(map);
            } catch (Exception e2) {
                aa.a("MetricsReportUtil", e2.getMessage());
            }
            if (aVarA == null) {
                return null;
            }
            aVar = aVarA;
            if (aVar != null) {
                aVar.a(map);
            }
        }
        return aVar;
    }

    private void b(CampaignEx campaignEx) {
        ConcurrentHashMap<String, Map<String, String>> concurrentHashMap;
        if (campaignEx != null) {
            try {
                if (TextUtils.isEmpty(campaignEx.getCurrentLRid()) || (concurrentHashMap = this.c) == null || concurrentHashMap.containsKey(campaignEx.getCurrentLRid())) {
                    return;
                }
                HashMap map = new HashMap();
                map.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, campaignEx.getCampaignUnitId());
                map.put("adtp", campaignEx.getAdType() + "");
                map.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? "1" : "0");
                if (!TextUtils.isEmpty(campaignEx.getBidToken())) {
                    map.put("bid_tk", campaignEx.getBidToken());
                }
                this.c.put(campaignEx.getCurrentLRid(), map);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            ConcurrentHashMap<String, Map<String, Map<String, String>>> concurrentHashMap = this.f7198f;
            if (concurrentHashMap != null && concurrentHashMap.containsKey(str)) {
                this.f7198f.remove(str);
            }
            ConcurrentHashMap<String, Map<String, String>> concurrentHashMap2 = this.c;
            if (concurrentHashMap2 != null && concurrentHashMap2.containsKey(str)) {
                this.c.remove(str);
            }
            ConcurrentHashMap<String, c> concurrentHashMap3 = this.f7196d;
            if (concurrentHashMap3 != null && concurrentHashMap3.containsKey(str)) {
                this.f7196d.remove(str);
            }
            ConcurrentHashMap<String, Map<String, String>> concurrentHashMap4 = this.f7197e;
            if (concurrentHashMap4 != null && concurrentHashMap4.containsKey(str)) {
                this.f7197e.remove(str);
            }
            ConcurrentHashMap<String, Map<String, String>> concurrentHashMap5 = this.f7199g;
            if (concurrentHashMap5 == null || !concurrentHashMap5.containsKey(str)) {
                return;
            }
            this.f7199g.remove(str);
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
        }
    }

    private void b(String str, Map<String, String> map) {
        ConcurrentHashMap<String, String> concurrentHashMap;
        if (map != null) {
            try {
                if (map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    String str2 = map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                    String str3 = (TextUtils.isEmpty(str2) || (concurrentHashMap = this.i) == null || !concurrentHashMap.containsKey(str2)) ? "" : this.i.get(str2);
                    if (d(str3, "")) {
                        map.remove(MBridgeConstans.PROPERTIES_UNIT_ID);
                        b(str, "", str2, str3, map);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    private b.a c(String str, String str2) {
        String str3;
        String str4;
        HashMap map = new HashMap();
        ConcurrentHashMap<String, Map<String, String>> concurrentHashMap = this.c;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str2)) {
            return null;
        }
        Map<String, String> map2 = this.c.get(str2);
        if (map2 != null) {
            String str5 = map2.get(CampaignEx.JSON_KEY_CAMPAIGN_UNITID);
            String str6 = map2.get("adtp");
            map.putAll(map2);
            str3 = str5;
            str4 = str6;
        } else {
            str3 = null;
            str4 = null;
        }
        return b(str, str2, "", str3, str4, map);
    }

    private boolean d(String str, String str2) {
        try {
            if (!TextUtils.isEmpty(str2) && (str2.equals("bid") || str2.equals("buyer_id") || str2.equals("roas") || str2.equals("InitSDK") || str2.equals("CronetEnv"))) {
                return true;
            }
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            int i = Integer.parseInt(str);
            if (i == 94 || i == 279 || i == 287 || i == 288 || i == 295) {
                return ac.a().a("r_l_b_m_t_r_i", true);
            }
            if (i != 296) {
                return false;
            }
            return ac.a().a("r_l_b_m_t_b", false);
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
            return false;
        }
    }

    private w e() {
        int iA = ac.a().a("metrics", "t_m_e_t", ac.a().a("t_m_e_t", 604800000));
        int iA2 = ac.a().a("metrics", "t_m_e_s", ac.a().a("t_m_e_s", 50));
        int iA3 = ac.a().a("metrics", "t_m_r_c", ac.a().a("t_m_r_c", 50));
        int iA4 = ac.a().a("metrics", "t_m_t", ac.a().a("t_m_t", DefaultLoadControl.DEFAULT_MIN_BUFFER_MS));
        int iA5 = ac.a().a("metrics", "t_m_r_t_s", ac.a().a("t_m_r_t_s", 2));
        int iA6 = ac.a().a("metrics", "t_r_t", ac.a().a("t_r_t", 0));
        if (iA6 != 0 && iA6 != 1) {
            iA6 = 0;
        }
        try {
            w.a aVarA = new w.a().e(iA).a(iA2).d(iA3).b(iA4).c(iA5).a(new i()).a(h.a()).a(new u()).a(iA6, iA6 == 1 ? new com.mbridge.msdk.e.o(new t((byte) 2), com.mbridge.msdk.foundation.same.net.g.d.a().h, com.mbridge.msdk.foundation.same.net.g.d.a().l) : new com.mbridge.msdk.e.o(new com.mbridge.msdk.e.a.a.g(), DomainNameUtils.getInstance().DEFAULT_HOST_ANALYTICS, 0));
            com.mbridge.msdk.e.a.a = MBridgeConstans.DEBUG;
            return aVarA.a();
        } catch (Exception e2) {
            aa.d("EventLibraryReport", "configTrackManager error: " + e2.getMessage());
            return null;
        }
    }

    public final com.mbridge.msdk.foundation.entity.e a(String str, String str2) {
        Map<String, com.mbridge.msdk.foundation.entity.e> map;
        if (TextUtils.isEmpty(str)) {
            str = "unknown_unit_id";
        }
        ConcurrentHashMap<String, Map<String, com.mbridge.msdk.foundation.entity.e>> concurrentHashMap = this.h;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str) || (map = this.h.get(str)) == null || !map.containsKey(str2)) {
            return null;
        }
        return map.get(str2);
    }

    public final Map<String, String> a(List<CampaignEx> list) {
        String str = CampaignEx.JSON_KEY_EC_TEMP_ID;
        String str2 = "endcard_crid";
        String str3 = "video_crid";
        String str4 = "vtid";
        String str5 = "crid";
        HashMap map = new HashMap();
        try {
            for (CampaignEx campaignEx : list) {
                if (campaignEx != null) {
                    map.put("rid", campaignEx.getRequestId() + "");
                    if (campaignEx.getMof_tplid() != 0) {
                        map.put("stid", campaignEx.getMof_tplid() + "");
                    }
                    CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                    if (rewardTemplateMode != null && rewardTemplateMode.b() != 0) {
                        if (map.containsKey(str4)) {
                            map.put(str4, ((String) map.get(str4)) + "," + rewardTemplateMode.b());
                        } else {
                            map.put(str4, rewardTemplateMode.b() + "");
                        }
                    }
                    if (campaignEx.getCreativeId() != 0) {
                        if (map.containsKey(str5)) {
                            map.put(str5, ((String) map.get(str5)) + "," + campaignEx.getCreativeId());
                        } else {
                            map.put(str5, campaignEx.getCreativeId() + "");
                        }
                    }
                    if (campaignEx.getVidCrtvId() != 0) {
                        if (map.containsKey(str3)) {
                            map.put(str3, ((String) map.get(str3)) + "," + campaignEx.getVidCrtvId());
                        } else {
                            map.put(str3, campaignEx.getVidCrtvId() + "");
                        }
                    }
                    if (campaignEx.getEcCrtvId() != 0) {
                        if (map.containsKey(str2)) {
                            map.put(str2, ((String) map.get(str2)) + "," + campaignEx.getEcCrtvId());
                        } else {
                            map.put(str2, campaignEx.getEcCrtvId() + "");
                        }
                    }
                    if (campaignEx.getEcTemplateId() != 0) {
                        if (map.containsKey(str)) {
                            map.put(str, ((String) map.get(str)) + "," + campaignEx.getEcTemplateId());
                        } else {
                            map.put(str, campaignEx.getEcTemplateId() + "");
                        }
                    }
                    String str6 = str;
                    String str7 = str2;
                    String str8 = "1";
                    String str9 = str3;
                    String str10 = str4;
                    String str11 = str5;
                    if (campaignEx.isDynamicView()) {
                        if (!TextUtils.isEmpty(campaignEx.getMof_template_url())) {
                            map.put("sdyv", "1");
                        }
                        if (map.containsKey("vdyv")) {
                            map.put("vdyv", ((String) map.get("vdyv")) + ",1");
                        } else {
                            map.put("vdyv", "1");
                        }
                        boolean zJ = af.j(campaignEx.getendcard_url());
                        if (map.containsKey("edyv")) {
                            if (zJ) {
                                map.put("edyv", ((String) map.get("edyv")) + ",2");
                            } else {
                                map.put("edyv", ((String) map.get("edyv")) + ",1");
                            }
                        } else if (zJ) {
                            map.put("edyv", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        } else {
                            map.put("edyv", "1");
                        }
                    } else {
                        if (!TextUtils.isEmpty(campaignEx.getMof_template_url())) {
                            map.put("sdyv", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        }
                        if (map.containsKey("vdyv")) {
                            map.put("vdyv", ((String) map.get("vdyv")) + ",2");
                        } else {
                            map.put("vdyv", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        }
                        if (map.containsKey("edyv")) {
                            map.put("edyv", ((String) map.get("edyv")) + ",2");
                        } else {
                            map.put("edyv", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        }
                    }
                    if (!TextUtils.isEmpty(campaignEx.getExt_data())) {
                        JSONObject jSONObject = new JSONObject(campaignEx.getExt_data());
                        if (map.containsKey("dspid")) {
                            map.put("dspid", ((String) map.get("dspid")) + "," + jSONObject.optString("par_dspid"));
                        } else {
                            map.put("dspid", jSONObject.optString("par_dspid"));
                        }
                    }
                    if (campaignEx.getPlayable_ads_without_video() == 2) {
                        if (map.containsKey("only_ec")) {
                            map.put("only_ec", ((String) map.get("only_ec")) + ",2");
                        } else {
                            map.put("only_ec", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                        }
                    } else if (map.containsKey("only_ec")) {
                        map.put("only_ec", ((String) map.get("only_ec")) + ",1");
                    } else {
                        map.put("only_ec", "1");
                    }
                    if (!TextUtils.isEmpty(campaignEx.getExpIds())) {
                        map.put(CampaignEx.URL_KEY_EXP_IDS, campaignEx.getExpIds());
                    }
                    if (map.containsKey(BidResponsedEx.KEY_CID)) {
                        map.put(BidResponsedEx.KEY_CID, ((String) map.get(BidResponsedEx.KEY_CID)) + "," + campaignEx.getId());
                    } else {
                        map.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                    }
                    if (map.containsKey("rid_n")) {
                        map.put("rid_n", ((String) map.get("rid_n")) + "," + campaignEx.getRequestIdNotice());
                    } else {
                        map.put("rid_n", campaignEx.getRequestIdNotice());
                    }
                    map.put("bid_tk", campaignEx.getBidToken() + "");
                    if (!campaignEx.isBidCampaign()) {
                        str8 = "0";
                    }
                    map.put(CampaignEx.JSON_KEY_HB, str8);
                    map.put(CampaignEx.JSON_KEY_NEW_INTERSTITIAL_AD_SPACE_T, campaignEx.getAdSpaceT() + "");
                    map.put("n_rid", campaignEx.getNRid());
                    map.put("n_lrid", campaignEx.getNLRid());
                    map.put("lrid", campaignEx.getLocalRequestId());
                    HashMap<String, String> map2 = com.mbridge.msdk.foundation.controller.b.c;
                    if (map2 != null) {
                        String str12 = map2.get(campaignEx.getCampaignUnitId());
                        if (!TextUtils.isEmpty(str12)) {
                            map.put("u_stid", str12);
                        }
                    }
                    str = str6;
                    str2 = str7;
                    str3 = str9;
                    str4 = str10;
                    str5 = str11;
                }
            }
        } catch (Exception e2) {
            aa.a("MetricsReportUtil", e2.getMessage());
        }
        return map;
    }

    public final void a(Context context, String str, String str2, String str3, String str4, int i) {
        com.mbridge.msdk.e.m mVarD = a().d();
        if (mVarD == null) {
            return;
        }
        if (!mVarD.a("2000105")) {
            aa.a("MetricsReportUtil", "reportClickImpException can not track");
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (TextUtils.isEmpty(str2)) {
                jSONObject.put("url", "");
            } else {
                jSONObject.put("url", URLEncoder.encode(str2, b4.L));
            }
            jSONObject.put("type", i);
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("rid", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("rid_n", str4);
            }
            try {
                long[] jArrF = mVarD.f();
                jSONObject.put("track_time", jArrF[0]);
                jSONObject.put("track_count", jArrF[1]);
                jSONObject.put(SDKAnalyticsEvents.PARAMETER_SESSION_ID, mVarD.b());
            } catch (Exception unused) {
            }
            jSONObject.put("reason", URLEncoder.encode(str, b4.L));
            com.mbridge.msdk.e.e eVar = new com.mbridge.msdk.e.e("2000105");
            eVar.a(jSONObject);
            eVar.b(0);
            eVar.a(0);
            eVar.a(h.b());
            mVarD.a(eVar);
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
        }
    }

    public final void a(CampaignEx campaignEx) {
        Map<String, String> map;
        if (campaignEx == null) {
            return;
        }
        try {
            b(campaignEx);
            if (d(campaignEx.getAdType() + "", "")) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(campaignEx);
                Map<String, String> mapA = a(arrayList);
                if (!this.f7199g.containsKey(campaignEx.getCurrentLRid()) || (map = this.f7199g.get(campaignEx.getCurrentLRid())) == null || map.size() <= 0) {
                    this.f7199g.put(campaignEx.getCurrentLRid(), mapA);
                } else {
                    map.putAll(mapA);
                    this.f7199g.put(campaignEx.getCurrentLRid(), map);
                }
            }
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
        }
    }

    public final void a(CampaignEx campaignEx, Context context, String str, String str2, boolean z, String str3, String str4, long j, String str5) {
        int iA;
        com.mbridge.msdk.e.m mVarD = a().d();
        if (mVarD == null) {
            return;
        }
        if (!mVarD.a("2000078")) {
            aa.a("MetricsReportUtil", "report78ByTrackManager can not track");
            return;
        }
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, str2);
            if (campaignEx != null) {
                jSONObject.put(BidResponsedEx.KEY_CID, campaignEx.getId());
                jSONObject.put("adtp", campaignEx.getAdType());
            }
            if (z) {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 1);
            } else {
                jSONObject.put(CampaignEx.JSON_KEY_HB, 0);
            }
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("rid", str3);
            } else if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getRequestId())) {
                jSONObject.put("rid", campaignEx.getRequestId());
            }
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("rid_n", str4);
            } else if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getRequestIdNotice())) {
                jSONObject.put("rid_n", campaignEx.getRequestIdNotice());
            }
            jSONObject.put("during", j);
            jSONObject.put("reason", str);
            jSONObject.put("r_stid", str5);
            try {
                long[] jArrF = mVarD.f();
                jSONObject.put("track_time", jArrF[0]);
                jSONObject.put("track_count", jArrF[1]);
                jSONObject.put(SDKAnalyticsEvents.PARAMETER_SESSION_ID, mVarD.b());
            } catch (Exception unused) {
            }
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && (iA = com.mbridge.msdk.foundation.same.c.a(campaignEx, campaignEx.getRewardTemplateMode().e())) != -1) {
                jSONObject.put(MBridgeConstans.DYNAMIC_VIEW_KEY_DY_VIEW, iA);
            }
            com.mbridge.msdk.e.e eVar = new com.mbridge.msdk.e.e("2000078");
            eVar.a(jSONObject);
            eVar.a(0);
            eVar.b(0);
            eVar.a(h.b());
            mVarD.a(eVar);
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", "reportEntryLoadFailedMessage error:" + e2.getMessage());
        }
    }

    public final void a(com.mbridge.msdk.foundation.entity.n nVar, CampaignEx campaignEx) {
        b bVarA;
        if (nVar == null) {
            return;
        }
        try {
            HashMap map = new HashMap();
            map.put("result", nVar.D() + "");
            if (!TextUtils.isEmpty(nVar.y()) && !nVar.y().equals("0")) {
                map.put("duration", nVar.y() + "");
            }
            if (!TextUtils.isEmpty(nVar.n())) {
                map.put("rus_rid", nVar.n() + "");
            }
            if (!TextUtils.isEmpty(nVar.m())) {
                map.put("rs_rid", nVar.m() + "");
            }
            map.put("reason", nVar.x() + "");
            map.put(CampaignEx.ENDCARD_URL, nVar.g());
            map.put(KidozParams.NETWORK_TYPE, nVar.A() + "");
            map.put("network_str", nVar.B());
            map.put("rid_n", nVar.q());
            map.put(BidResponsedEx.KEY_CID, nVar.s() + "");
            if (nVar.t().equals("2000022")) {
                map.put(CampaignEx.JSON_KEY_IMAGE_URL, nVar.e());
                map.put("template_url", nVar.j());
                map.put(CampaignEx.JSON_KEY_VIDEO_LENGTHL, nVar.v() + "");
                map.put(CampaignEx.JSON_KEY_VIDEO_SIZE, nVar.z() + "");
                map.put("video_url", nVar.f());
            } else if (nVar.t().equals("2000043")) {
                map.put("mraid_type", nVar.k() + "");
                map.put("type", nVar.h() + "");
            } else if (nVar.t().equals("2000045")) {
                map.put("type", nVar.d() + "");
                if (nVar.d() == 1 || nVar.d() == 2) {
                    map.remove("duration");
                }
            }
            if (!TextUtils.isEmpty(nVar.o())) {
                map.put("response_header_info", URLEncoder.encode(nVar.o(), b4.L));
            }
            String strT = nVar.t();
            try {
                String currentLRid = campaignEx.getCurrentLRid();
                String campaignUnitId = campaignEx.getCampaignUnitId();
                int adType = campaignEx.getAdType();
                map.put(CampaignEx.JSON_KEY_HB, campaignEx.isBidCampaign() ? "1" : "0");
                map.put("bid_tk", campaignEx.getBidToken());
                ArrayList arrayList = new ArrayList();
                arrayList.add(campaignEx);
                Map<String, String> mapA = a(arrayList);
                if (mapA != null) {
                    map.putAll(mapA);
                }
                b.a aVarB = b(strT, currentLRid, "", campaignUnitId, adType + "", map);
                if (aVarB == null || (bVarA = aVarB.a()) == null) {
                    return;
                }
                bVarA.b();
            } catch (Exception e2) {
                aa.d("MetricsReportUtil", e2.getMessage());
            }
        } catch (Exception e3) {
            if (MBridgeConstans.DEBUG) {
                e3.printStackTrace();
            }
        }
    }

    public final void a(String str, CampaignEx campaignEx, Map<String, String> map) {
        if (campaignEx == null) {
            return;
        }
        if (d(campaignEx.getAdType() + "", "")) {
            if (map != null) {
                try {
                    if (map.containsKey("update")) {
                        a(campaignEx);
                        map.remove("update");
                    }
                } catch (Exception e2) {
                    aa.a("MetricsReportUtil", e2.getMessage());
                    return;
                }
            }
            if (!TextUtils.isEmpty(campaignEx.getCurrentLRid())) {
                a(str, campaignEx.getCurrentLRid(), map, false);
                return;
            }
            b(str, "", campaignEx.getCampaignUnitId(), campaignEx.getAdType() + "", map);
        }
    }

    public final void a(String str, com.mbridge.msdk.foundation.entity.e eVar) {
        if (eVar == null) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            str = "unknown_unit_id";
        }
        if (this.h == null) {
            this.h = new ConcurrentHashMap<>();
        }
        String strE = eVar.e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        if (!this.h.containsKey(str)) {
            HashMap map = new HashMap();
            map.put(strE, eVar);
            this.h.put(str, map);
        } else {
            Map<String, com.mbridge.msdk.foundation.entity.e> map2 = this.h.get(str);
            if (map2 == null) {
                map2 = new HashMap<>();
            }
            if (map2.size() >= 200) {
                map2.clear();
            }
            map2.put(strE, eVar);
        }
    }

    public final void a(String str, MBridgeIds mBridgeIds, Map<String, String> map) {
        if (mBridgeIds == null || TextUtils.isEmpty(mBridgeIds.getLocalRequestId())) {
            b(str, map);
        } else if (a(mBridgeIds.getLocalRequestId())) {
            a(str, mBridgeIds.getLocalRequestId(), map, false);
        }
    }

    public final void a(String str, String str2, String str3, String str4, String str5) {
        HashMap map = new HashMap();
        map.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, str2);
        map.put("adtp", str3);
        map.put(CampaignEx.JSON_KEY_HB, str4);
        map.put("bid_tk", str5);
        if (this.c == null) {
            this.c = new ConcurrentHashMap<>();
        }
        this.c.put(str, map);
    }

    public final void a(String str, String str2, String str3, String str4, String str5, Map<String, String> map) {
        Map<String, String> map2;
        ConcurrentHashMap<String, String> concurrentHashMap = this.i;
        if (concurrentHashMap != null) {
            concurrentHashMap.put(str4, str5);
        }
        if (TextUtils.isEmpty(str2)) {
            b(str, str3, str4, str5, map);
            return;
        }
        if (d(str5, str3)) {
            Map<String, String> map3 = map == null ? new HashMap() : map;
            if (this.c == null) {
                this.c = new ConcurrentHashMap<>();
            }
            try {
                HashMap map4 = new HashMap();
                map4.put(CampaignEx.JSON_KEY_CAMPAIGN_UNITID, str4);
                map4.put("adtp", str5);
                if (!map3.containsKey(CampaignEx.JSON_KEY_HB) || map3.get(CampaignEx.JSON_KEY_HB) == null) {
                    map4.put(CampaignEx.JSON_KEY_HB, "0");
                } else {
                    map4.put(CampaignEx.JSON_KEY_HB, map3.get(CampaignEx.JSON_KEY_HB));
                }
                if (map3.containsKey("bid_tk") && map3.get("bid_tk") != null) {
                    map4.put("bid_tk", map3.get("bid_tk"));
                }
                this.c.put(str2, map4);
                b.a aVarB = b(str, str2, str3, str4, str5, map3);
                if (aVarB != null && !TextUtils.isEmpty(str2)) {
                    ConcurrentHashMap<String, Map<String, String>> concurrentHashMap2 = this.f7199g;
                    if (concurrentHashMap2 != null && concurrentHashMap2.size() > 0 && this.f7199g.containsKey(str2) && (map2 = this.f7199g.get(str2)) != null) {
                        map3.putAll(map2);
                    }
                    if (map3.size() > 0) {
                        aVarB.a(map3);
                    }
                    if (str.equals("2000123")) {
                        aVarB.a(true);
                    }
                    b bVarA = aVarB.a();
                    if (bVarA == null) {
                        return;
                    }
                    if (str.equals("2000123") && !TextUtils.isEmpty(str3)) {
                        a(str2, bVarA);
                        if (str3.equals("auto_load") || str3.equals("self_load")) {
                            return;
                        }
                    }
                    bVarA.b();
                }
            } catch (Exception e2) {
                aa.a("MetricsReportUtil", e2.getMessage());
            }
        }
    }

    public final void a(String str, String str2, String str3, String str4, Map<String, String> map) {
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        if (TextUtils.isEmpty(str) || contextG == null) {
            return;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Exception e2) {
                aa.a("MetricsReportUtil", e2.getMessage());
                return;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        map.put("ts", String.valueOf(jCurrentTimeMillis));
        b.a aVarA = b.a(str, str2).a(contextG).d(str3).b(com.mbridge.msdk.foundation.controller.b.d().h()).e(str4).a(false).b(jCurrentTimeMillis).a(this.j);
        if (aVarA == null) {
            return;
        }
        aVarA.a(map);
        b bVarA = aVarA.a();
        if (bVarA == null) {
            return;
        }
        bVarA.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03a9 A[Catch: Exception -> 0x04ac, TryCatch #4 {Exception -> 0x04ac, blocks: (B:141:0x03a9, B:143:0x03b3, B:145:0x03bf, B:147:0x03cb, B:149:0x03d7, B:159:0x03f4, B:139:0x03a4, B:165:0x0405, B:168:0x0414, B:194:0x04a4, B:171:0x041c, B:173:0x043d, B:175:0x0448, B:179:0x0457, B:181:0x0460, B:183:0x046a, B:186:0x0481, B:184:0x0473, B:188:0x0494, B:190:0x049b, B:191:0x049f, B:152:0x03e2, B:154:0x03e6, B:156:0x03ec), top: B:211:0x0159, inners: #8, #9 }] */
    /* JADX WARN: Removed duplicated region for block: B:229:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v41 */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r2v43 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r2v9, types: [com.mbridge.msdk.foundation.same.report.m] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(java.lang.String r22, java.lang.String r23, java.util.List<com.mbridge.msdk.foundation.entity.CampaignEx> r24, java.lang.String r25, java.lang.String r26) {
        /*
            Method dump skipped, instruction units count: 1209
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.same.report.m.a(java.lang.String, java.lang.String, java.util.List, java.lang.String, java.lang.String):void");
    }

    public final void a(String str, String str2, Map<String, String> map) {
        if (TextUtils.isEmpty(str2)) {
            b(str, map);
        } else if (a(str2)) {
            a(str, str2, map, false);
        }
    }

    public final void a(String str, List<CampaignEx> list, Map<String, String> map) {
        CampaignEx campaignEx;
        if (list == null || list.size() == 0 || (campaignEx = list.get(0)) == null) {
            return;
        }
        if (d(campaignEx.getAdType() + "", "")) {
            try {
                Map<String, String> mapA = a(list);
                if (list.size() > 1) {
                    this.f7197e.put(campaignEx.getCurrentLRid(), mapA);
                } else {
                    this.f7199g.put(campaignEx.getCurrentLRid(), mapA);
                }
                if (mapA != null) {
                    map.putAll(mapA);
                }
                if (!TextUtils.isEmpty(campaignEx.getCurrentLRid())) {
                    a(str, campaignEx.getCurrentLRid(), map, false, 1);
                    return;
                }
                b(str, "", campaignEx.getCampaignUnitId(), campaignEx.getAdType() + "", map);
            } catch (Exception e2) {
                aa.a("MetricsReportUtil", e2.getMessage());
            }
        }
    }

    public final void a(String str, Map<String, String> map) {
        if (map != null && map.containsKey("r_stid")) {
            this.b = map.get("r_stid");
            map.remove("r_stid");
        }
        c(str, "0", map);
    }

    public final com.mbridge.msdk.foundation.entity.e b(String str, String str2) {
        Map<String, com.mbridge.msdk.foundation.entity.e> map;
        ConcurrentHashMap<String, Map<String, com.mbridge.msdk.foundation.entity.e>> concurrentHashMap = this.h;
        if (concurrentHashMap == null || !concurrentHashMap.containsKey(str) || (map = this.h.get(str)) == null || !map.containsKey(str2)) {
            return null;
        }
        return map.get(str2);
    }

    public final void b() {
        if (this.k != null) {
            this.k.e();
        }
    }

    public final void b(String str, String str2, String str3, String str4, Map<String, String> map) {
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        if (TextUtils.isEmpty(str) || contextG == null || !d(str4, str2)) {
            return;
        }
        if (map == null) {
            try {
                map = new HashMap<>();
            } catch (Exception e2) {
                aa.a("MetricsReportUtil", e2.getMessage());
                return;
            }
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        map.put("ts", String.valueOf(jCurrentTimeMillis));
        b.a aVarA = b.a(str, str2).a(contextG).d(str3).b(com.mbridge.msdk.foundation.controller.b.d().h()).e(str4).a(false).b(jCurrentTimeMillis).a(this.j);
        if (aVarA == null) {
            return;
        }
        aVarA.a(map);
        b bVarA = aVarA.a();
        if (bVarA == null) {
            return;
        }
        bVarA.b();
    }

    public final void b(String str, String str2, Map<String, String> map) {
        try {
            if (TextUtils.isEmpty(str2)) {
                b(str, map);
            } else if (a(str2)) {
                a(str, str2, map, false, 1);
            }
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
        }
    }

    public final void b(List<CampaignEx> list) {
        Map<String, String> map;
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            CampaignEx campaignEx = list.get(0);
            String currentLRid = campaignEx != null ? campaignEx.getCurrentLRid() : "";
            b(campaignEx);
            if (a(currentLRid)) {
                Map<String, String> mapA = a(list);
                if (!this.f7197e.containsKey(currentLRid) || (map = this.f7197e.get(currentLRid)) == null || map.size() <= 0) {
                    this.f7197e.put(currentLRid, mapA);
                } else {
                    map.putAll(mapA);
                    this.f7197e.put(currentLRid, map);
                }
            }
        } catch (Exception e2) {
            aa.d("MetricsReportUtil", e2.getMessage());
        }
    }

    public final void c() {
        if (ac.a().a("metrics", "e_t_l", ac.a().a("e_t_l", 0)) == 1) {
            d().e();
        }
    }

    public final void c(String str, String str2, Map<String, String> map) {
        Map<String, Map<String, String>> map2;
        if (a(str) && !TextUtils.isEmpty(str)) {
            try {
                ConcurrentHashMap<String, Map<String, Map<String, String>>> concurrentHashMap = this.f7198f;
                if (concurrentHashMap != null) {
                    if (!concurrentHashMap.containsKey(str) || (map2 = this.f7198f.get(str)) == null) {
                        map2 = new HashMap<>();
                    }
                    map2.put(str2, map);
                    this.f7198f.put(str, map2);
                }
            } catch (Exception e2) {
                aa.a("MetricsReportUtil", e2.getMessage());
            }
        }
    }

    public final com.mbridge.msdk.e.m d() {
        if (this.k == null) {
            this.k = com.mbridge.msdk.e.m.a("mtg_sdk", com.mbridge.msdk.foundation.controller.b.d().g(), e());
            this.k.a(h.c());
            this.k.a();
        }
        return this.k;
    }
}
