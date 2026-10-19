package com.mbridge.msdk.mbbanner.common.f;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignUnit;
import com.mbridge.msdk.foundation.same.net.d.b;
import com.mbridge.msdk.foundation.same.net.f;
import com.mbridge.msdk.foundation.same.net.l;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: BannerResponseHandler.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends f<JSONObject> {
    private static final String a = "a";
    private String b = "";

    public abstract void a(int i, String str);

    public abstract void a(CampaignUnit campaignUnit);

    public final void a(String str) {
        this.b = str;
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onError(com.mbridge.msdk.foundation.same.net.b.a aVar) {
        a(aVar.a, com.mbridge.msdk.foundation.same.net.g.a.a(aVar));
    }

    @Override // com.mbridge.msdk.foundation.same.net.f, com.mbridge.msdk.foundation.same.net.e
    public void onSuccess(l<JSONObject> lVar) {
        super.onSuccess(lVar);
        List<b> list = lVar.c.f7145d;
        final JSONObject jSONObject = lVar.a;
        final int iOptInt = jSONObject.optInt("status");
        if (1 != iOptInt) {
            a(iOptInt, jSONObject.optString("msg"));
            return;
        }
        calcRequestTime(System.currentTimeMillis());
        final String strOptString = jSONObject.optString("version");
        com.mbridge.msdk.foundation.same.f.b.a().execute(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.f.a.1
            @Override // java.lang.Runnable
            public final void run() {
                final CampaignUnit v5CampaignUnit = "v5".equals(strOptString) ? CampaignUnit.parseV5CampaignUnit(jSONObject.optJSONObject("data"), a.this.b) : CampaignUnit.parseCampaignUnit(jSONObject.optJSONObject("data"), a.this.b);
                com.mbridge.msdk.foundation.same.f.b.h().post(new Runnable() { // from class: com.mbridge.msdk.mbbanner.common.f.a.1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        CampaignUnit campaignUnit = v5CampaignUnit;
                        if (campaignUnit != null && campaignUnit.getAds() != null && v5CampaignUnit.getAds().size() > 0) {
                            a.this.a(v5CampaignUnit);
                            if (!TextUtils.isEmpty(a.this.b)) {
                                a.this.saveHbState(1);
                            }
                            a.this.saveRequestTime(v5CampaignUnit.getAds().size());
                            return;
                        }
                        CampaignUnit campaignUnit2 = v5CampaignUnit;
                        String msg = campaignUnit2 != null ? campaignUnit2.getMsg() : null;
                        if (TextUtils.isEmpty(msg)) {
                            msg = jSONObject.optString("msg");
                        }
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        a.this.a(iOptInt, msg);
                    }
                });
            }
        });
    }
}
