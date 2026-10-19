package com.mbridge.msdk.reward.d;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.f;
import com.mbridge.msdk.foundation.same.net.l;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.out.Frame;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: RewardResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class c extends f<JSONObject> {
    private static final String a = "c";
    private int b;
    private String c;

    private void a(List<com.mbridge.msdk.foundation.same.net.d.b> list, JSONObject jSONObject, int i) {
        String strB = "";
        if (list != null && list.size() > 0) {
            for (com.mbridge.msdk.foundation.same.net.d.b bVar : list) {
                if (bVar != null) {
                    String strA = bVar.a();
                    if (!TextUtils.isEmpty(strA) && strA.equals("data_res_type")) {
                        strB = bVar.b();
                    }
                }
            }
        }
        if (TextUtils.isEmpty(strB) || !strB.equals("1")) {
            b(i, jSONObject.optString("msg"), 2);
        } else {
            b(i, jSONObject.optString("msg"), 3);
        }
    }

    public final void a(String str) {
        this.c = str;
    }

    public abstract void a(List<Frame> list);

    public abstract void a(List<com.mbridge.msdk.foundation.same.net.d.b> list, CampaignUnit campaignUnit);

    public abstract void b(int i, String str, int i2);

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        aa.d(a, "errorCode = " + aVar.a);
        b(aVar.a, com.mbridge.msdk.foundation.same.net.g.a.a(aVar), 1);
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<JSONObject> lVar) {
        com.mbridge.msdk.foundation.same.net.f.c cVar;
        super.onSuccess(lVar);
        if (lVar == null || (cVar = lVar.c) == null) {
            return;
        }
        int i = this.b;
        if (i == 0) {
            final List<com.mbridge.msdk.foundation.same.net.d.b> list = cVar.f7145d;
            final JSONObject jSONObject = lVar.a;
            final int iOptInt = jSONObject.optInt("status");
            if (1 != iOptInt) {
                a(list, jSONObject, iOptInt);
                return;
            }
            calcRequestTime(System.currentTimeMillis());
            final String strOptString = jSONObject.optString("version");
            com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.reward.d.c.1
                @Override // java.lang.Runnable
                public final void run() {
                    final CampaignUnit v5CampaignUnit = "v5".equals(strOptString) ? CampaignUnit.parseV5CampaignUnit(jSONObject.optJSONObject("data"), c.this.c) : CampaignUnit.parseCampaignUnit(jSONObject.optJSONObject("data"), c.this.c);
                    com.mbridge.msdk.foundation.same.f.b.h().post(new Runnable() { // from class: com.mbridge.msdk.reward.d.c.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            CampaignUnit campaignUnit = v5CampaignUnit;
                            if (campaignUnit != null && campaignUnit.getAds() != null && v5CampaignUnit.getAds().size() > 0) {
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                c.this.a(list, v5CampaignUnit);
                                c.this.saveRequestTime(v5CampaignUnit.getAds().size());
                            } else {
                                CampaignUnit campaignUnit2 = v5CampaignUnit;
                                String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                                if (TextUtils.isEmpty(msg)) {
                                    msg = jSONObject.optString("msg");
                                }
                                AnonymousClass1 anonymousClass12 = AnonymousClass1.this;
                                c.this.b(iOptInt, msg, 2);
                            }
                        }
                    });
                }
            });
            return;
        }
        if (i == 1) {
            List<com.mbridge.msdk.foundation.same.net.d.b> list2 = cVar.f7145d;
            JSONObject jSONObject2 = lVar.a;
            int iOptInt2 = jSONObject2.optInt("status");
            if (1 != iOptInt2) {
                a(list2, jSONObject2, iOptInt2);
                return;
            }
            calcRequestTime(System.currentTimeMillis());
            CampaignUnit v5CampaignUnit = "v5".equals(jSONObject2.optString("version")) ? CampaignUnit.parseV5CampaignUnit(jSONObject2.optJSONObject("data"), this.c) : CampaignUnit.parseCampaignUnit(jSONObject2.optJSONObject("data"), this.c);
            if (v5CampaignUnit != null && v5CampaignUnit.getListFrames() != null && v5CampaignUnit.getListFrames().size() > 0) {
                List<Frame> listFrames = v5CampaignUnit.getListFrames();
                a(listFrames);
                saveRequestTime(listFrames.size());
            } else {
                String msg = v5CampaignUnit != null ? v5CampaignUnit.getMsg() : null;
                if (TextUtils.isEmpty(msg)) {
                    msg = jSONObject2.optString("msg");
                }
                b(iOptInt2, msg, 2);
            }
        }
    }
}
