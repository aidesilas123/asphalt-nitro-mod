package com.mbridge.msdk.reward.a;

import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.b.a;
import com.mbridge.msdk.foundation.b.c;
import com.mbridge.msdk.foundation.b.d;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.u;
import com.mbridge.msdk.videocommon.d.b;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardCandidateController.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static String a = "RewardCandidateController";
    private d b;

    public a(String str, boolean z) {
        try {
            this.b = com.mbridge.msdk.foundation.controller.a.a().a(str, b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), str, z).H());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private c a(double d2, String str, com.mbridge.msdk.reward.adapter.c cVar, String str2, String str3, int i) {
        c cVarA = this.b.a();
        try {
        } catch (Exception unused) {
            cVarA.e("getHighestCampaigns exception");
            cVarA.a(c.f7012d);
        }
        if (cVarA.e() > 0) {
            return cVarA;
        }
        JSONObject jSONObjectE = this.b.e(str);
        if (jSONObjectE != null) {
            int iOptInt = jSONObjectE.optInt("max_usage_limit", 10);
            int iOptInt2 = jSONObjectE.optInt("max_cache_num", 20);
            if (iOptInt2 > 0) {
                List<com.mbridge.msdk.foundation.b.b> listA = this.b.a(iOptInt);
                if (listA != null && listA.size() > 0) {
                    return a(listA, jSONObjectE, iOptInt2, d2, cVar, str2, str3, true, i);
                }
                cVarA.e("no cache");
                cVarA.a(c.f7012d);
                a(str2, str3, cVarA, (List<a.C0398a>) null, jSONObjectE, 2);
            } else {
                cVarA.e("max cache num error");
                cVarA.a(c.f7012d);
            }
        } else {
            cVarA.e("setting config not mapping");
            cVarA.a(c.f7012d);
        }
        return cVarA;
    }

    private c a(List<com.mbridge.msdk.foundation.b.b> list, JSONObject jSONObject, int i, double d2, com.mbridge.msdk.reward.adapter.c cVar, String str, String str2, boolean z, int i2) {
        ArrayList arrayList;
        int i3;
        c cVar2;
        a aVar = this;
        List<com.mbridge.msdk.foundation.b.b> listB = list;
        c cVar3 = new c();
        if (jSONObject == null) {
            cVar3.e("config is null");
            cVar3.a(c.f7012d);
            return cVar3;
        }
        if (listB == null || list.size() == 0) {
            cVar3.e("candidate is null");
            cVar3.a(c.f7012d);
            return cVar3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < list.size(); i5++) {
            com.mbridge.msdk.foundation.b.b bVar = listB.get(i5);
            if (bVar != null) {
                cVar3.a(bVar.b());
            }
        }
        if (list.size() > 0 && ((listB = aVar.a(listB, cVar3)) == null || listB.size() == 0)) {
            cVar3.e("existed");
            cVar3.a(c.f7012d);
        }
        if (listB.size() > 0 && ((listB = aVar.a(listB, cVar, cVar3)) == null || listB.size() == 0)) {
            cVar3.e("not ready");
            cVar3.a(c.f7012d);
        }
        if (listB.size() > 0 && ((listB = aVar.b(listB, cVar, cVar3)) == null || listB.size() == 0)) {
            cVar3.e("had in cache");
            cVar3.a(c.f7012d);
        }
        com.mbridge.msdk.foundation.b.b bVar2 = null;
        if (listB == null || listB.size() <= 0) {
            arrayList = null;
        } else {
            ArrayList arrayList2 = new ArrayList();
            double dOptDouble = jSONObject.optDouble("t_disc", 0.8d);
            double dOptDouble2 = jSONObject.optDouble("u_disc", 0.95d);
            double d3 = 0.0d;
            double dOptDouble3 = jSONObject.optDouble("max_ecppv_diff", 0.0d);
            int iOptInt = jSONObject.optInt(SDKConstants.PARAM_A2U_TIME_INTERVAL, 1800);
            int size = listB.size();
            while (i4 < size) {
                List<com.mbridge.msdk.foundation.b.b> list2 = listB;
                com.mbridge.msdk.foundation.b.b bVar3 = listB.get(i4);
                if (bVar3 != null) {
                    i3 = size;
                    cVar2 = cVar3;
                    double dPow = Math.pow(dOptDouble2, bVar3.h()) * bVar3.g() * Math.pow(dOptDouble, (System.currentTimeMillis() - bVar3.f()) / (((double) iOptInt) * 1000.0d));
                    arrayList2.add(new a.C0398a(dPow, bVar3));
                    if (dPow >= d2 - dOptDouble3 && dPow > d3) {
                        bVar2 = bVar3;
                        d3 = dPow;
                    }
                } else {
                    i3 = size;
                    cVar2 = cVar3;
                }
                i4++;
                aVar = this;
                listB = list2;
                size = i3;
                cVar3 = cVar2;
            }
            c cVar4 = cVar3;
            d dVar = aVar.b;
            if (dVar != null) {
                dVar.a(arrayList2, i);
            }
            if (bVar2 != null) {
                cVar3 = cVar4;
                cVar3.a(bVar2.e());
                cVar3.a(c.c);
            } else {
                cVar3 = cVar4;
                cVar3.e("no match campaign");
                cVar3.a(c.f7012d);
            }
            arrayList = arrayList2;
        }
        if (z) {
            a(str, str2, cVar3, arrayList, jSONObject, i2);
        }
        return cVar3;
    }

    private List<com.mbridge.msdk.foundation.b.b> a(List<com.mbridge.msdk.foundation.b.b> list, c cVar) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListE;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.mbridge.msdk.foundation.b.b bVar = list.get(i);
            if (bVar != null && (copyOnWriteArrayListE = bVar.e()) != null && copyOnWriteArrayListE.size() != 0) {
                int i2 = 0;
                boolean z = false;
                while (true) {
                    if (i2 >= copyOnWriteArrayListE.size()) {
                        break;
                    }
                    CampaignEx campaignEx = copyOnWriteArrayListE.get(i2);
                    boolean zC = af.c(com.mbridge.msdk.foundation.controller.b.d().g(), campaignEx.getPackageName());
                    if (zC) {
                        cVar.c(bVar.b());
                        d dVar = this.b;
                        if (dVar != null) {
                            dVar.a(bVar.c(), bVar.b(), 2, campaignEx.getEcppv());
                        }
                        z = zC;
                    } else {
                        i2++;
                        z = zC;
                    }
                }
                if (!z) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    private List<com.mbridge.msdk.foundation.b.b> a(List<com.mbridge.msdk.foundation.b.b> list, com.mbridge.msdk.reward.adapter.c cVar, c cVar2) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListE;
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.mbridge.msdk.foundation.b.b bVar = list.get(i);
            if (bVar != null && (copyOnWriteArrayListE = bVar.e()) != null && copyOnWriteArrayListE.size() != 0) {
                int i2 = 0;
                boolean zA = false;
                while (true) {
                    if (i2 >= copyOnWriteArrayListE.size()) {
                        break;
                    }
                    CampaignEx campaignEx = copyOnWriteArrayListE.get(i2);
                    if (cVar == null || (zA = cVar.a(copyOnWriteArrayListE, !TextUtils.isEmpty(campaignEx.getCMPTEntryUrl())))) {
                        i2++;
                    } else {
                        cVar2.b(bVar.b());
                        d dVar = this.b;
                        if (dVar != null) {
                            dVar.a(bVar.c(), bVar.b(), 2, campaignEx.getEcppv());
                        }
                    }
                }
                if (zA) {
                    arrayList.add(bVar);
                }
            }
        }
        return arrayList;
    }

    private List<com.mbridge.msdk.foundation.b.b> b(List<com.mbridge.msdk.foundation.b.b> list, com.mbridge.msdk.reward.adapter.c cVar, c cVar2) {
        CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayListE;
        if (list == null || list.size() == 0) {
            return list;
        }
        List<String> listC = com.mbridge.msdk.videocommon.a.a.a().c(list.get(0).d());
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.mbridge.msdk.foundation.b.b bVar = list.get(i);
            if (bVar != null && (copyOnWriteArrayListE = bVar.e()) != null && copyOnWriteArrayListE.size() != 0) {
                if (listC == null || listC.size() <= 0 || !listC.contains(bVar.b())) {
                    arrayList.add(bVar);
                } else {
                    cVar2.d(bVar.b());
                }
            }
        }
        return arrayList;
    }

    public final c a(String str, String str2, CampaignEx campaignEx, e eVar, int i, com.mbridge.msdk.reward.adapter.c cVar) {
        String requestId;
        String strE;
        int iD;
        c cVarA;
        c cVar2 = new c();
        if (campaignEx == null) {
            requestId = "";
        } else {
            try {
                try {
                    requestId = campaignEx.getRequestId();
                } catch (Exception unused) {
                    cVar2.e("getRewardCandidateCampaignList result exception");
                    cVar2.a(c.f7012d);
                    return cVar2;
                }
            } catch (Exception unused2) {
                cVar2.e("getCandidateCampaignList result exception");
                cVar2.a(c.f7012d);
                return cVar2;
            }
        }
        if (eVar != null) {
            iD = eVar.d();
            strE = eVar.e();
        } else {
            strE = null;
            iD = 0;
        }
        d dVar = this.b;
        if (dVar == null) {
            cVarA = new c();
            cVarA.e("can not get manager");
            cVarA.a(c.f7012d);
        } else {
            c cVarD = dVar.d(str);
            if (cVarD.e() > c.a) {
                cVarA = cVarD;
            } else {
                String[] strArrSplit = u.b(str.split("_")[3]).split("\\|");
                double d2 = Double.parseDouble(strArrSplit[0]);
                cVarA = a(d2, strArrSplit.length > 1 ? strArrSplit[1] : "", cVar, str2, str, i);
                this.b.a(cVarA.g(), str2, requestId, iD, strE, i, d2);
            }
        }
        return cVarA;
    }

    public final void a(String str, String str2, int i, String str3) {
        d dVar = this.b;
        if (dVar != null) {
            dVar.a(str, str2, i, str3);
        }
    }

    public final void a(String str, String str2, c cVar, List<a.C0398a> list, JSONObject jSONObject, int i) {
        try {
            if (TextUtils.isEmpty(str)) {
                aa.d(a, "report lrid is null");
                return;
            }
            HashMap map = new HashMap();
            map.put("scene", (i != 1 ? i != 2 ? i != 3 ? "unknown" : "track" : "candidate" : "cb") + "");
            d dVar = this.b;
            if (dVar != null) {
                double dC = dVar.c(str2);
                if (dC >= 0.0d) {
                    map.put("bp", u.a(dC + ""));
                }
                map.put("cb_state", a(str2) ? MRAIDPresenter.OPEN : "close");
                try {
                    d dVar2 = this.b;
                    JSONObject jSONObjectE = dVar2.e(dVar2.b(str2));
                    if (jSONObjectE != null) {
                        map.put("config", jSONObjectE.toString());
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            if (cVar != null) {
                if (cVar.e() == c.c) {
                    map.put("result", "1");
                } else {
                    map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                    map.put("reason", cVar.f());
                }
                map.put("acr", cVar.a());
                map.put("her", cVar.c());
                map.put("nrr", cVar.b());
                map.put("cer", cVar.d());
            } else {
                map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                map.put("reason", "candidate result is null");
            }
            if (list != null && list.size() > 0) {
                JSONArray jSONArray = new JSONArray();
                for (int i2 = 0; i2 < list.size(); i2++) {
                    com.mbridge.msdk.foundation.b.b bVarA = list.get(i2).a();
                    if (bVarA != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("ecppv", u.a(bVarA.g() + ""));
                        jSONObject2.put("showCount", bVarA.h());
                        jSONObject2.put("intervalTime", System.currentTimeMillis() - bVarA.f());
                        jSONArray.put(jSONObject2);
                    }
                }
                map.put("data", jSONArray.toString());
            }
            m.a().a("m_candidate_data", str, map);
        } catch (Exception e3) {
            e3.printStackTrace();
        }
    }

    public final void a(List<CampaignEx> list, String str, com.mbridge.msdk.reward.adapter.c cVar, String str2) {
        try {
            if (this.b == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.b.a(com.mbridge.msdk.foundation.b.a.b, 2, list, this.b.a(list, str) > 0, "", "", -1, str2);
            d dVar = this.b;
            JSONObject jSONObjectE = dVar.e(dVar.b(str));
            if (jSONObjectE == null || this.b.c(str) <= 0.0d) {
                return;
            }
            a(this.b.a(jSONObjectE.optInt("max_usage_limit", 10)), jSONObjectE, jSONObjectE.optInt("max_cache_num", 20), -1.0d, cVar, "", str, false, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public final boolean a(String str) {
        JSONObject jSONObjectE;
        try {
            d dVar = this.b;
            if (dVar != null && (jSONObjectE = dVar.e(dVar.b(str))) != null) {
                return jSONObjectE.optInt("c_cb", 0) == 1;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return false;
    }
}
