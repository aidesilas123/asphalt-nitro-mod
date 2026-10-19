package com.mbridge.msdk.video.bt.module.b;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.foundation.db.n;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.l;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: RewardReport.java */
/* JADX INFO: loaded from: classes4.dex */
public class f {
    private static final String a = "com.mbridge.msdk.video.bt.module.b.f";

    public static void a(Context context, CampaignEx campaignEx, String str, int i) {
        if (context == null || campaignEx == null) {
            return;
        }
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000054&");
            stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
            stringBuffer.append("unit_id=" + str + o2.i.c);
            stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
            stringBuffer.append("reason=&");
            stringBuffer.append("templateshowtype=" + i + " offer show success&");
            stringBuffer.append("result=2&");
            if (campaignEx.getAdType() == 287) {
                stringBuffer.append("ad_type=3&");
            } else if (campaignEx.getAdType() == 94) {
                stringBuffer.append("ad_type=1&");
            } else {
                stringBuffer.append("ad_type=1&");
            }
            String str2 = campaignEx.getendcard_url();
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("creative=" + URLEncoder.encode(str2) + o2.i.c);
            }
            stringBuffer.append("devid=" + com.mbridge.msdk.foundation.tools.g.a() + o2.i.c);
            stringBuffer.append("rid=");
            stringBuffer.append(campaignEx.getRequestId());
            stringBuffer.append(o2.i.c);
            stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice());
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
            if ((!TextUtils.isEmpty(str)) && (true ^ TextUtils.isEmpty(str2))) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000054&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str + o2.i.c);
                stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                stringBuffer.append("reason=" + str2 + o2.i.c);
                stringBuffer.append("templateshowtype=" + i + o2.i.c);
                stringBuffer.append("reason=" + str2 + o2.i.c);
                stringBuffer.append("result=1&");
                if (!TextUtils.isEmpty(campaignEx.getendcard_url())) {
                    stringBuffer.append("creative=" + URLEncoder.encode(campaignEx.getendcard_url()) + o2.i.c);
                }
                stringBuffer.append("devid=" + com.mbridge.msdk.foundation.tools.g.a() + o2.i.c);
                if (campaignEx.getAdType() == 287) {
                    stringBuffer.append("ad_type=3&");
                } else if (campaignEx.getAdType() == 94) {
                    stringBuffer.append("ad_type=1&");
                } else {
                    stringBuffer.append("ad_type=1&");
                }
                stringBuffer.append("rid=");
                stringBuffer.append(campaignEx.getRequestId());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("adspace_t=" + campaignEx.getAdSpaceT());
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

    private static void a(final Context context, final String str, String str2) {
        if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
            context = com.mbridge.msdk.foundation.controller.b.d().g();
        }
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(context);
            com.mbridge.msdk.foundation.same.net.h.d dVarA = q.a(str, context, str2);
            dVarA.a("r_stid", com.mbridge.msdk.videocommon.d.b.a().b().b());
            aVar.post(0, com.mbridge.msdk.foundation.same.net.g.d.a().a, dVarA, new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.video.bt.module.b.f.1
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(final String str3) {
                    com.mbridge.msdk.foundation.same.f.b.b().execute(new Runnable() { // from class: com.mbridge.msdk.video.bt.module.b.f.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            l lVar = new l();
                            lVar.c(str);
                            lVar.a(System.currentTimeMillis());
                            lVar.a(0);
                            lVar.b("POST");
                            lVar.a(com.mbridge.msdk.foundation.same.net.g.d.a().a);
                            n.a(com.mbridge.msdk.foundation.db.h.a(context)).a(lVar);
                            aa.d(f.a, str3);
                        }
                    });
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str3) {
                    aa.d(f.a, str3);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }

    public static void a(Context context, List<CampaignEx> list, String str) {
        if (context == null || list == null) {
            return;
        }
        try {
            if (list.size() <= 0 || TextUtils.isEmpty(str)) {
                return;
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("key=2000054&");
            stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
            stringBuffer.append("unit_id=" + str + o2.i.c);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                arrayList.add(list.get(i).getId());
            }
            stringBuffer.append("cid=" + arrayList.toString() + o2.i.c);
            stringBuffer.append("result=2&");
            if (list.get(0) != null) {
                CampaignEx campaignEx = list.get(0);
                stringBuffer.append("reason=&");
                stringBuffer.append("templateshowtype=two offer ec show success&");
                stringBuffer.append("ad_type=" + campaignEx.getAdType() + o2.i.c);
                stringBuffer.append("devid=" + com.mbridge.msdk.foundation.tools.g.a() + o2.i.c);
                stringBuffer.append("rid=");
                stringBuffer.append(campaignEx.getRequestId());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("&adspace_t=");
                stringBuffer.append(campaignEx.getAdSpaceT());
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

    public static void a(Context context, List<CampaignEx> list, String str, String str2) {
        if (context == null || list == null) {
            return;
        }
        try {
            if ((!TextUtils.isEmpty(str)) && (true ^ TextUtils.isEmpty(str2))) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000054&");
                stringBuffer.append("network_type=" + w.r(context) + o2.i.c);
                stringBuffer.append("unit_id=" + str + o2.i.c);
                String[] strArr = new String[list.size()];
                for (int i = 0; i < list.size(); i++) {
                    strArr[i] = list.get(i).getId();
                }
                stringBuffer.append("cid=" + strArr + o2.i.c);
                stringBuffer.append("reason=" + str2 + o2.i.c);
                stringBuffer.append("result=1&");
                stringBuffer.append("devid=" + com.mbridge.msdk.foundation.tools.g.a() + o2.i.c);
                if (list.get(0) != null) {
                    CampaignEx campaignEx = list.get(0);
                    stringBuffer.append("ad_type=" + campaignEx.getAdType() + o2.i.c);
                    stringBuffer.append("rid=");
                    stringBuffer.append(campaignEx.getRequestId());
                    stringBuffer.append(o2.i.c);
                    stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice());
                    stringBuffer.append(o2.i.c);
                    stringBuffer.append("templateshowtype=" + campaignEx.getMof_tplid());
                    stringBuffer.append(o2.i.c);
                    stringBuffer.append("adspace_t=" + campaignEx.getAdSpaceT());
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

    public static void a(CampaignEx campaignEx, String str, int i) {
        try {
            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
            if (contextG != null && campaignEx != null && !TextUtils.isEmpty(str)) {
                StringBuffer stringBuffer = new StringBuffer();
                stringBuffer.append("key=2000115&");
                stringBuffer.append("network_type=" + w.r(contextG) + o2.i.c);
                stringBuffer.append("unit_id=" + str + o2.i.c);
                stringBuffer.append("cid=" + campaignEx.getId() + o2.i.c);
                stringBuffer.append("play_cur_time=" + i + o2.i.c);
                stringBuffer.append("reason=close ad in advance " + campaignEx.getMof_tplid() + o2.i.c);
                stringBuffer.append("result=1&");
                stringBuffer.append("devid=" + com.mbridge.msdk.foundation.tools.g.a() + o2.i.c);
                stringBuffer.append("ad_type=" + campaignEx.getAdType() + o2.i.c);
                stringBuffer.append("rid=");
                stringBuffer.append(campaignEx.getRequestId());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("rid_n=" + campaignEx.getRequestIdNotice());
                stringBuffer.append(o2.i.c);
                stringBuffer.append("adspace_t=" + campaignEx.getAdSpaceT());
                if (k.a().c()) {
                    k.a().a(stringBuffer.toString());
                } else {
                    a(contextG, stringBuffer.toString(), str);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
