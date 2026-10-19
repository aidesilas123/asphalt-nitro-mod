package com.mbridge.msdk.mbbid.common.c;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.d.b;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.w;
import java.util.HashMap;

/* JADX INFO: compiled from: BidReport.java */
/* JADX INFO: loaded from: classes4.dex */
public class a {
    private static final String a = "com.mbridge.msdk.mbbid.common.c.a";

    public static void a(Context context, String str, String str2, String str3) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (ac.a().a("r_l_b_m_t_b_l", true)) {
            try {
                HashMap map = new HashMap();
                map.put("result", MBridgeConstans.API_REUQEST_CATEGORY_APP);
                map.put(KidozParams.NETWORK_TYPE, w.r(context) + "");
                map.put("reason", str2);
                m.a().a("2000064", str3, "bid", str, "", map);
                return;
            } catch (Exception unused) {
            }
        }
        try {
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, d.a().a, q.a("key=2000064" + o2.i.c + "result=" + MBridgeConstans.API_REUQEST_CATEGORY_APP + o2.i.c + "network_type=" + w.r(context) + o2.i.c + "reason=" + str2 + o2.i.c + "ts=" + System.currentTimeMillis() + o2.i.c + "lrid=" + str3 + o2.i.c + "unit_id=" + str, context, str), new b() { // from class: com.mbridge.msdk.mbbid.common.c.a.2
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str4) {
                    aa.d(a.a, str4);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str4) {
                    aa.d(a.a, str4);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }

    public static void a(Context context, String str, String str2, String str3, String str4) {
        if (context == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (ac.a().a("r_l_b_m_t_b_l", true)) {
            try {
                HashMap map = new HashMap();
                map.put("result", "1");
                map.put(KidozParams.NETWORK_TYPE, w.r(context) + "");
                map.put("bidid", str2);
                map.put("bid_tk", str4);
                m.a().a("2000064", str3, "bid", str, "", map);
                return;
            } catch (Exception unused) {
            }
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("key=");
            sb.append("2000064");
            sb.append(o2.i.c);
            sb.append("result=");
            sb.append("1");
            sb.append(o2.i.c);
            sb.append("network_type=");
            sb.append(w.r(context));
            sb.append(o2.i.c);
            sb.append("bidid=");
            sb.append(str2);
            sb.append(o2.i.c);
            sb.append("ts=");
            sb.append(System.currentTimeMillis());
            sb.append(o2.i.c);
            sb.append("lrid=");
            sb.append(str3);
            sb.append(o2.i.c);
            sb.append("bid_tk=");
            sb.append(str4);
            sb.append(o2.i.c);
            sb.append("unit_id=");
            sb.append(str);
            if (k.a().c()) {
                k.a().a(sb.toString());
                return;
            }
            new com.mbridge.msdk.foundation.same.report.d.a(context).post(0, d.a().a, q.a(sb.toString(), context, str), new b() { // from class: com.mbridge.msdk.mbbid.common.c.a.1
                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onFailed(String str5) {
                    aa.d(a.a, str5);
                }

                @Override // com.mbridge.msdk.foundation.same.report.d.b
                public final void onSuccess(String str5) {
                    aa.d(a.a, str5);
                }
            });
        } catch (Exception e2) {
            e2.printStackTrace();
            aa.d(a, e2.getMessage());
        }
    }
}
