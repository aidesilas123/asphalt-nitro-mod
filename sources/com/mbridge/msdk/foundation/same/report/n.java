package com.mbridge.msdk.foundation.same.report;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.w;

/* JADX INFO: compiled from: PlayableReportUtils.java */
/* JADX INFO: loaded from: classes4.dex */
public final class n {
    private static Handler a = new Handler(Looper.getMainLooper());

    public static void a(CampaignEx campaignEx, String str, String str2, String str3) {
        if (campaignEx == null || !campaignEx.isMraid()) {
            return;
        }
        com.mbridge.msdk.foundation.entity.n nVar = new com.mbridge.msdk.foundation.entity.n("2000043", TextUtils.isEmpty(campaignEx.getMraid()) ^ true ? 1 : 3, "0", "", campaignEx.getId(), str2, str, String.valueOf(campaignEx.getKeyIaRst()));
        nVar.r(campaignEx.getId());
        nVar.n(campaignEx.getRequestId());
        nVar.o(campaignEx.getCurrentLRid());
        nVar.p(campaignEx.getRequestIdNotice());
        nVar.c(campaignEx.getAdSpaceT());
        nVar.h(str3);
        nVar.d(w.r(com.mbridge.msdk.foundation.controller.b.d().g()));
        nVar.b(campaignEx.isMraid() ? com.mbridge.msdk.foundation.entity.n.a : com.mbridge.msdk.foundation.entity.n.b);
        a(nVar, str2, campaignEx);
    }

    public static void a(com.mbridge.msdk.foundation.entity.n nVar, Context context, String str) {
        if (nVar != null) {
            nVar.s("2000060");
            nVar.q(str);
            nVar.d(w.r(context));
            String strB = com.mbridge.msdk.foundation.entity.n.b(nVar);
            if (k.a().c()) {
                k.a().a(strB);
            } else {
                a(strB, context, str);
            }
        }
    }

    public static void a(com.mbridge.msdk.foundation.entity.n nVar, String str, CampaignEx campaignEx) {
        int adType;
        if (nVar != null) {
            nVar.b(com.mbridge.msdk.foundation.tools.g.a());
            if (campaignEx != null && (((adType = campaignEx.getAdType()) == 94 || adType == 287) && ac.a().a("r_l_b_m_t_r_i", true))) {
                m.a().a(nVar, campaignEx);
                return;
            }
            String strD = com.mbridge.msdk.foundation.entity.n.d(nVar);
            if (k.a().c()) {
                k.a().a(strD);
            } else {
                a(strD, com.mbridge.msdk.foundation.controller.b.d().g(), str);
            }
        }
    }

    private static void a(Runnable runnable) {
        Handler handler = a;
        if (handler != null) {
            handler.post(runnable);
        }
    }

    public static void a(String str, Context context, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        a(new com.mbridge.msdk.foundation.same.f.a(str, str2));
    }

    public static void b(com.mbridge.msdk.foundation.entity.n nVar, Context context, String str) {
        String strG = com.mbridge.msdk.foundation.entity.n.g(nVar);
        if (k.a().c()) {
            k.a().a(strG);
        } else {
            a(strG, context, str);
        }
    }

    public static void b(com.mbridge.msdk.foundation.entity.n nVar, String str, CampaignEx campaignEx) {
        if (nVar != null) {
            nVar.s("2000059");
            nVar.q(str);
            nVar.d(w.r(com.mbridge.msdk.foundation.controller.b.d().g()));
            nVar.b(com.mbridge.msdk.foundation.tools.g.a());
            String strC = com.mbridge.msdk.foundation.entity.n.c(nVar);
            if (k.a().c()) {
                k.a().a(strC);
            } else {
                a(strC, com.mbridge.msdk.foundation.controller.b.d().g(), str);
            }
        }
    }

    public static void c(com.mbridge.msdk.foundation.entity.n nVar, Context context, String str) {
        String strH = com.mbridge.msdk.foundation.entity.n.h(nVar);
        if (k.a().c()) {
            k.a().a(strH);
        } else {
            a(strH, context, str);
        }
    }

    public static void d(com.mbridge.msdk.foundation.entity.n nVar, Context context, String str) {
        if (nVar != null) {
            nVar.s("2000063");
            nVar.q(str);
            nVar.d(w.r(context));
            String strA = com.mbridge.msdk.foundation.entity.n.a(nVar);
            if (k.a().c()) {
                k.a().a(strA);
            } else {
                a(strA, context, str);
            }
        }
    }
}
