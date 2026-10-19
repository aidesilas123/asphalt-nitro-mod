package com.mbridge.msdk.out.reveue;

import android.content.Context;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.same.report.l;
import com.mbridge.msdk.foundation.same.report.m;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeRevenueManager {
    public static void track(Context context, MBridgeRevenueParamsEntity mBridgeRevenueParamsEntity) {
        if (b.d().g() == null) {
            b.d().b(context);
        }
        try {
            HashMap map = new HashMap();
            map.put("name", mBridgeRevenueParamsEntity.getMediationName());
            m.a().b("m_start_ad_rev", "roas", "", "", map);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        l.a().a(mBridgeRevenueParamsEntity.getReportData());
    }
}
