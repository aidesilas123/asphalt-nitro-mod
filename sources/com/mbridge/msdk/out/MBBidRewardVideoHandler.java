package com.mbridge.msdk.out;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.r;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.reward.b.a;
import com.mbridge.msdk.video.bt.module.b.g;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBBidRewardVideoHandler implements BaseExtraInterfaceForHandler {
    private static final String AD_TYPE = "rv";
    private static final String TAG = "MBBidRewardVideoHandler";
    private a controller;
    private String unitId;

    public MBBidRewardVideoHandler(Context context, String str, String str2) {
        if (b.d().g() == null && context != null) {
            b.d().b(context);
        }
        String strG = af.g(str2);
        if (!TextUtils.isEmpty(strG)) {
            af.a(str2, strG);
        }
        initMBBidRewardVideoHandler(str, str2);
    }

    public MBBidRewardVideoHandler(String str, String str2) {
        String strG = af.g(str2);
        if (!TextUtils.isEmpty(strG)) {
            af.a(str2, strG);
        }
        initMBBidRewardVideoHandler(str, str2);
    }

    private void initMBBidRewardVideoHandler(String str, String str2) {
        this.unitId = str2;
        try {
            if (this.controller == null) {
                a aVar = new a();
                this.controller = aVar;
                aVar.a(false);
                this.controller.b(true);
            }
            this.controller.b(str, str2);
        } catch (Throwable th) {
            aa.b(TAG, th.getMessage(), th);
        }
    }

    private void reportLoadEvent(String str, Map<String, String> map) {
        String md5;
        try {
            if (TextUtils.isEmpty(str)) {
                md5 = SameMD5.getMD5(af.c());
            } else {
                String[] strArrSplit = str.split("_");
                md5 = (strArrSplit == null || strArrSplit.length < 3) ? str : strArrSplit[2];
            }
            String str2 = md5;
            map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, str2);
            r.a(str, "2000123", this.unitId, str2, "hb_reward_load", 94);
        } catch (Exception unused) {
        }
    }

    public void clearVideoCache() {
        try {
            if (this.controller != null) {
                y.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.controller;
        return aVar != null ? aVar.b() : "";
    }

    public String getRequestId() {
        a aVar = this.controller;
        return aVar != null ? aVar.a() : "";
    }

    public boolean isBidReady() {
        a aVar = this.controller;
        if (aVar == null) {
            r.a().e(this.unitId, "rv", true);
            return false;
        }
        boolean zD = aVar.d(false);
        if (zD) {
            r.a().d(this.unitId, "rv", true);
        } else {
            r.a().e(this.unitId, "rv", true);
        }
        return zD;
    }

    public void loadFromBid(String str) {
        HashMap map = new HashMap();
        reportLoadEvent(str, map);
        r.a().a(this.unitId, "rv", true);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(true, str, (Map<String, String>) map);
        }
    }

    public void playVideoMute(int i) {
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(str, str2, str3, str4);
        }
    }

    @Override // com.mbridge.msdk.out.BaseExtraInterfaceForHandler
    public void setExtraInfo(JSONObject jSONObject) {
        b.d().a(this.unitId, jSONObject);
    }

    public void setRewardPlus(boolean z) {
        a aVar = this.controller;
        if (aVar != null) {
            aVar.c(z);
        }
    }

    public void setRewardVideoListener(g gVar) {
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(new com.mbridge.msdk.video.bt.module.b.a(gVar));
        }
    }

    public void showFromBid() {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "1");
            m.a().b("2000128", "hb_reward_show", this.unitId, "94", map);
        } catch (Exception unused) {
        }
        r.a().f(this.unitId, "rv", true);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((String) null, (String) null, (String) null);
        }
    }

    public void showFromBid(String str) {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "1");
            m.a().b("2000128", "hb_reward_show", this.unitId, "94", map);
        } catch (Exception unused) {
        }
        r.a().f(this.unitId, "rv", true);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((String) null, str, (String) null);
        }
    }

    public void showFromBid(String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "1");
            m.a().b("2000128", "hb_reward_show", this.unitId, "94", map);
        } catch (Exception unused) {
        }
        r.a().f(this.unitId, "rv", true);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((String) null, str, str2);
        }
    }
}
