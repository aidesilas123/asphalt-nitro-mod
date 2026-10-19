package com.mbridge.msdk.reward.c;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.h;
import com.mbridge.msdk.foundation.db.q;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.e;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.entity.n;
import com.mbridge.msdk.foundation.same.c;
import com.mbridge.msdk.foundation.same.net.h.d;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.videocommon.d.b;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: compiled from: RewardReport.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final String a = "com.mbridge.msdk.reward.c.a";
    private static String b = "";

    public static void a(Context context, CampaignEx campaignEx, String str) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000048&");
            stringBuffer.append("st=" + System.currentTimeMillis() + o2.i.c);
            stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
            stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
            stringBuffer.append("unit_id=" + str + o2.i.c);
            if (af.b(campaignEx)) {
                stringBuffer.append("rtins_type=");
                stringBuffer.append(campaignEx.getRtinsType());
                stringBuffer.append(o2.i.c);
            }
            if (campaignEx.isBidCampaign()) {
                stringBuffer.append("hb=1&");
            } else {
                stringBuffer.append("hb=0&");
            }
            stringBuffer.append("rid=" + campaignEx.getRequestId() + o2.i.c);
            stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice() + o2.i.c);
            StringBuilder sb = new StringBuilder();
            sb.append("adspace_t=");
            sb.append(campaignEx.getAdSpaceT());
            stringBuffer.append(sb.toString());
            if (campaignEx.getRewardTemplateMode() != null) {
                try {
                    int iA = c.a(campaignEx, campaignEx.getRewardTemplateMode().e());
                    if (iA != -1) {
                        stringBuffer.append("&dyview=");
                        stringBuffer.append(iA);
                    }
                } catch (Exception unused) {
                }
            }
            if (k.a().c()) {
                k.a().a(stringBuffer.toString());
            } else {
                a(context, stringBuffer.toString(), str);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(Context context, String str) {
        if (context != null) {
            try {
                q qVarA = q.a(h.a(context));
                if (TextUtils.isEmpty(str) || qVarA == null || qVarA.a() <= 0) {
                    return;
                }
                List<n> listA = qVarA.a("2000022");
                List<n> listA2 = qVarA.a("2000021");
                List<n> listA3 = qVarA.a("2000039");
                List<n> listA4 = qVarA.a("2000043");
                List<n> listA5 = qVarA.a("2000045");
                List<n> listA6 = qVarA.a("2000044");
                String strA = n.a(listA2);
                String strB = n.b(listA);
                String strF = n.f(listA3);
                String strC = n.c(listA4);
                String strD = n.d(listA5);
                String strE = n.e(listA6);
                StringBuilder sb = new StringBuilder();
                if (!TextUtils.isEmpty(strA)) {
                    sb.append(strA);
                }
                if (!TextUtils.isEmpty(strB)) {
                    sb.append(strB);
                }
                if (!TextUtils.isEmpty(strF)) {
                    sb.append(strF);
                }
                if (!TextUtils.isEmpty(strC)) {
                    sb.append(strC);
                }
                if (!TextUtils.isEmpty(strD)) {
                    sb.append(strD);
                }
                if (!TextUtils.isEmpty(strE)) {
                    sb.append(strE);
                }
                if (TextUtils.isEmpty(sb.toString())) {
                    return;
                }
                String string = sb.toString();
                if (TextUtils.isEmpty(string) || TextUtils.isEmpty(str)) {
                    return;
                }
                try {
                    com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(context);
                    d dVarA = com.mbridge.msdk.foundation.same.report.q.a(string, context, str);
                    dVarA.a("r_stid", b.a().b().b());
                    aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.reward.c.a.1
                        @Override // com.mbridge.msdk.foundation.same.report.d.b
                        public final void onFailed(String str2) {
                            aa.d(a.a, str2);
                        }

                        @Override // com.mbridge.msdk.foundation.same.report.d.b
                        public final void onSuccess(String str2) {
                            aa.d(a.a, str2);
                        }
                    });
                } catch (Exception e2) {
                    e2.printStackTrace();
                    aa.d(a, e2.getMessage());
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    private static void a(final Context context, final String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(context);
            d dVarA = com.mbridge.msdk.foundation.same.report.q.a(str, context, str2);
            dVarA.a("r_stid", b.a().b().b());
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.reward.c.a.2
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(final String str3) {
                    com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.reward.c.a.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            l lVar = new l();
                            lVar.c(str);
                            lVar.a(System.currentTimeMillis());
                            lVar.a(0);
                            lVar.b("POST");
                            lVar.a(com.mbridge.msdk.foundation.same.net.g.d.a().a);
                            com.mbridge.msdk.foundation.db.n.a(h.a(context)).a(lVar);
                            aa.d(a.a, str3);
                        }
                    });
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str3) {
                    aa.d(a.a, str3);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }

    public static void a(Context context, List<CampaignEx> list, String str, long j) {
        int iA;
        aa.a("test_load_time", "time: " + j);
        if (context == null || list == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            if (list.size() > 0) {
                String requestId = list.get(0).getRequestId();
                if (!TextUtils.isEmpty(b) && requestId.equals(b)) {
                    return;
                } else {
                    b = requestId;
                }
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=");
            stringBuffer.append("2000048");
            stringBuffer.append(o2.i.c);
            stringBuffer.append("st=" + System.currentTimeMillis() + o2.i.c);
            stringBuffer.append("network_type=");
            stringBuffer.append(w.r(context));
            stringBuffer.append(o2.i.c);
            stringBuffer.append("unit_id=");
            stringBuffer.append(str);
            stringBuffer.append(o2.i.c);
            stringBuffer.append("load_time=");
            stringBuffer.append(j);
            stringBuffer.append(o2.i.c);
            if (list.size() > 0) {
                stringBuffer.append("cid=");
                StringBuilder sb = new StringBuilder("rtins_type=");
                for (int i = 0; i < list.size(); i++) {
                    CampaignEx campaignEx = list.get(i);
                    if (i < list.size() - 1) {
                        stringBuffer.append(campaignEx.getId());
                        stringBuffer.append(",");
                        sb.append(campaignEx.getRtinsType());
                        sb.append(",");
                    } else {
                        stringBuffer.append(campaignEx.getId());
                        stringBuffer.append(o2.i.c);
                        sb.append(campaignEx.getRtinsType());
                        sb.append(o2.i.c);
                        if (campaignEx.isBidCampaign()) {
                            stringBuffer.append("hb=1&");
                        } else {
                            stringBuffer.append("hb=0&");
                        }
                    }
                }
                stringBuffer.append((CharSequence) sb);
                CampaignEx campaignEx2 = list.get(0);
                if (campaignEx2 != null) {
                    stringBuffer.append("rid=");
                    stringBuffer.append(campaignEx2.getRequestId());
                    stringBuffer.append(o2.i.c);
                    if (campaignEx2.getRewardTemplateMode() != null && (iA = c.a(campaignEx2, campaignEx2.getRewardTemplateMode().e())) != -1) {
                        stringBuffer.append("dyview=");
                        stringBuffer.append(iA);
                        stringBuffer.append(o2.i.c);
                    }
                }
                String str2 = "";
                String str3 = "";
                for (int i2 = 0; i2 < list.size(); i2++) {
                    str2 = str2 + list.get(i2).getRequestIdNotice();
                    str3 = str3 + list.get(i2).getAdSpaceT();
                    if (i2 < list.size() - 1) {
                        str2 = str2 + ",";
                        str3 = str3 + ",";
                    }
                }
                stringBuffer.append("rid_n=");
                stringBuffer.append(str2);
                stringBuffer.append(o2.i.c);
                stringBuffer.append("adspace_t=");
                stringBuffer.append(str3);
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    a(context, stringBuffer.toString(), str);
                }
            }
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public static void a(CampaignEx campaignEx, Context context, e eVar, String str, boolean z, String str2, String str3) {
        int iA;
        try {
            if (ac.a().a("r_l_b_m_t_r_i", true)) {
                m.a().a(str, eVar);
                return;
            }
            String strE = eVar != null ? eVar.e() : "";
            if (context == null || TextUtils.isEmpty(strE) || TextUtils.isEmpty(str)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000047&");
            try {
                stringBuffer.append("network_available=" + String.valueOf(af.d(context)) + o2.i.c);
            } catch (Exception unused) {
            }
            stringBuffer.append("st=" + System.currentTimeMillis() + o2.i.c);
            if (campaignEx != null) {
                stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                stringBuffer.append("adtp=" + campaignEx.getAdType() + o2.i.c);
            }
            stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
            stringBuffer.append("unit_id=" + str + o2.i.c);
            if (!TextUtils.isEmpty(str)) {
                String str4 = com.mbridge.msdk.foundation.controller.b.c.get(str);
                StringBuilder sb = new StringBuilder();
                sb.append("u_stid=");
                sb.append(str4 != null ? str4 : "");
                sb.append(o2.i.c);
                stringBuffer.append(sb.toString());
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l)) {
                stringBuffer.append("b=" + com.mbridge.msdk.foundation.same.a.l + o2.i.c);
            }
            if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                stringBuffer.append("c=" + com.mbridge.msdk.foundation.same.a.m + o2.i.c);
            }
            if (z) {
                stringBuffer.append("hb=1&");
            } else {
                stringBuffer.append("hb=0&");
            }
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("rid=");
                stringBuffer.append(str2);
                stringBuffer.append(o2.i.c);
            }
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("rid_n=");
                stringBuffer.append(str3);
                stringBuffer.append(o2.i.c);
            }
            stringBuffer.append("reason=" + strE);
            if (campaignEx != null && campaignEx.getRewardTemplateMode() != null && (iA = c.a(campaignEx, campaignEx.getRewardTemplateMode().e())) != -1) {
                stringBuffer.append("&dyview=");
                stringBuffer.append(iA);
            }
            if (campaignEx != null) {
                stringBuffer.append("&adspace_t=");
                stringBuffer.append(campaignEx.getAdSpaceT());
            }
            if (k.a().c()) {
                k.a().a(stringBuffer.toString());
            } else {
                b(context, stringBuffer.toString());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public static void a(CampaignEx campaignEx, Context context, String str, String str2, boolean z, String str3, String str4, long j) {
        if (ac.a().a("metrics", "e_t_l", ac.a().a("e_t_l", 0)) == 1) {
            com.mbridge.msdk.videocommon.d.a aVarB = b.a().b();
            m.a().a(campaignEx, context, str, str2, z, str3, str4, j, aVarB != null ? aVarB.b() : null);
            return;
        }
        if (context != null) {
            try {
                if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
                    return;
                }
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000078&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str2 + o2.i.c);
                if (campaignEx != null) {
                    stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                    stringBuffer.append("adtp=" + campaignEx.getAdType() + o2.i.c);
                }
                if (!TextUtils.isEmpty(str2)) {
                    String str5 = com.mbridge.msdk.foundation.controller.b.c.get(str2);
                    StringBuilder sb = new StringBuilder();
                    sb.append("u_stid=");
                    if (str5 == null) {
                        str5 = "";
                    }
                    sb.append(str5);
                    sb.append(o2.i.c);
                    stringBuffer.append(sb.toString());
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.l)) {
                    stringBuffer.append("b=" + com.mbridge.msdk.foundation.same.a.l + o2.i.c);
                }
                if (!TextUtils.isEmpty(com.mbridge.msdk.foundation.same.a.m)) {
                    stringBuffer.append("c=" + com.mbridge.msdk.foundation.same.a.m + o2.i.c);
                }
                if (z) {
                    stringBuffer.append("hb=1&");
                } else {
                    stringBuffer.append("hb=0&");
                }
                if (!TextUtils.isEmpty(str3)) {
                    stringBuffer.append("rid=");
                    stringBuffer.append(str3);
                    stringBuffer.append(o2.i.c);
                } else if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getRequestId())) {
                    stringBuffer.append("rid=");
                    stringBuffer.append(campaignEx.getRequestId());
                    stringBuffer.append(o2.i.c);
                }
                if (!TextUtils.isEmpty(str4)) {
                    stringBuffer.append("rid_n=");
                    stringBuffer.append(str4);
                    stringBuffer.append(o2.i.c);
                } else if (campaignEx != null && !TextUtils.isEmpty(campaignEx.getRequestIdNotice())) {
                    stringBuffer.append("rid_n=");
                    stringBuffer.append(campaignEx.getRequestIdNotice());
                    stringBuffer.append(o2.i.c);
                }
                stringBuffer.append("during=");
                stringBuffer.append(j);
                stringBuffer.append("&reason=" + str);
                if (campaignEx != null && campaignEx.getRewardTemplateMode() != null) {
                    try {
                        int iA = c.a(campaignEx, campaignEx.getRewardTemplateMode().e());
                        if (iA != -1) {
                            stringBuffer.append("&dyview=");
                            stringBuffer.append(iA);
                        }
                    } catch (Exception unused) {
                    }
                }
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    b(context, stringBuffer.toString());
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    public static void a(String str, String str2, String str3, String str4, int i, boolean z) {
        if (TextUtils.isEmpty(str3)) {
            str3 = SameMD5.getMD5(af.c());
        }
        String str5 = str3;
        HashMap map = new HashMap();
        if (z) {
            map.put("auto_load", MBridgeConstans.API_REUQEST_CATEGORY_APP);
        } else {
            map.put("auto_load", "1");
        }
        m.a().a(str, str5, str4, str2, i + "", map);
    }

    private static void b(final Context context, final String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(context);
            d dVarA = com.mbridge.msdk.foundation.same.report.q.a(str, context);
            dVarA.a("r_stid", b.a().b().b());
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.reward.c.a.3
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(final String str2) {
                    com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.reward.c.a.3.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            l lVar = new l();
                            lVar.c(str);
                            lVar.a(System.currentTimeMillis());
                            lVar.a(0);
                            lVar.b("POST");
                            lVar.a(com.mbridge.msdk.foundation.same.net.g.d.a().a);
                            com.mbridge.msdk.foundation.db.n.a(h.a(context)).a(lVar);
                            aa.d(a.a, str2);
                        }
                    });
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str2) {
                    aa.d(a.a, str2);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }
}
