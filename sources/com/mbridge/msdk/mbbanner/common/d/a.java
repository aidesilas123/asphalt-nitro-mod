package com.mbridge.msdk.mbbanner.common.d;

import com.json.b4;
import com.json.o2;
import com.kidoz.sdk.api.general.utils.KidozParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.net.g.d;
import com.mbridge.msdk.foundation.same.report.k;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.n;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.net.URLEncoder;
import java.util.HashMap;

/* JADX INFO: compiled from: BannerReport.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    public static void a(com.mbridge.msdk.mbbanner.common.a.a aVar, String str) {
        if (aVar != null) {
            aVar.a("2000068");
            if (k.a().c()) {
                k.a().a(aVar.b());
            } else {
                n.a(aVar.b(), b.d().g(), str);
            }
        }
    }

    public static void a(String str, CampaignEx campaignEx, String str2) {
        try {
            com.mbridge.msdk.foundation.same.report.d.a aVar = new com.mbridge.msdk.foundation.same.report.d.a(b.d().g());
            StringBuilder sb = new StringBuilder();
            if (campaignEx.isBidCampaign()) {
                sb.append("hb=");
                sb.append(1);
                sb.append(o2.i.c);
            }
            sb.append("key");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode("2000070", b4.L));
            sb.append(o2.i.c);
            sb.append("rid_n");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(campaignEx.getRequestIdNotice(), b4.L));
            sb.append(o2.i.c);
            sb.append("rid");
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(campaignEx.getRequestId(), b4.L));
            sb.append(o2.i.c);
            sb.append(BidResponsedEx.KEY_CID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(campaignEx.getId(), b4.L));
            sb.append(o2.i.c);
            sb.append(MBridgeConstans.PROPERTIES_UNIT_ID);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str, b4.L));
            sb.append(o2.i.c);
            sb.append(CampaignEx.JSON_KEY_CLICK_URL);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(str2, b4.L));
            sb.append(o2.i.c);
            sb.append(KidozParams.NETWORK_TYPE);
            sb.append(o2.i.b);
            sb.append(URLEncoder.encode(String.valueOf(w.r(b.d().g())), b4.L));
            if (k.a().c()) {
                k.a().a(sb.toString());
            } else {
                aVar.post(0, d.a().a, q.a(sb.toString(), b.d().g(), str), new com.mbridge.msdk.foundation.same.report.d.b() { // from class: com.mbridge.msdk.mbbanner.common.d.a.1
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

    public static void a(String str, String str2, String str3, String str4, int i) {
        m.a().a(str, str3, str4, str2, i + "", new HashMap());
    }
}
