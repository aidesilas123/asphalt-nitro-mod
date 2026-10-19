package com.mbridge.msdk.video.dynview.f.a;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.d.b;
import com.mbridge.msdk.foundation.same.net.f;
import com.mbridge.msdk.foundation.same.net.f.c;
import com.mbridge.msdk.foundation.same.net.l;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: AbsMoreOfferResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends f<JSONObject> {
    private int a;
    private String b;

    public abstract void a(int i, String str);

    public abstract void a(List<b> list, CampaignUnit campaignUnit);

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        a(aVar.a, com.mbridge.msdk.foundation.same.net.g.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<JSONObject> lVar) {
        c cVar;
        super.onSuccess(lVar);
        if (lVar == null || (cVar = lVar.c) == null || this.a != 0) {
            return;
        }
        List<b> list = cVar.f7145d;
        JSONObject jSONObject = lVar.a;
        int iOptInt = jSONObject.optInt("status");
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString("msg"));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        CampaignUnit v5CampaignUnit = "v5".equals(jSONObject.optString("version")) ? CampaignUnit.parseV5CampaignUnit(jSONObject.optJSONObject("data"), this.b) : CampaignUnit.parseCampaignUnit(jSONObject.optJSONObject("data"), this.b);
        if (v5CampaignUnit != null && v5CampaignUnit.getAds() != null && v5CampaignUnit.getAds().size() > 0) {
            a(list, v5CampaignUnit);
            saveRequestTime(v5CampaignUnit.getAds().size());
        } else {
            String msg = v5CampaignUnit != null ? v5CampaignUnit.getMsg() : null;
            if (TextUtils.isEmpty(msg)) {
                msg = jSONObject.optString("msg");
            }
            a(iOptInt, msg);
        }
    }
}
