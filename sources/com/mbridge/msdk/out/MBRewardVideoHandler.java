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
public class MBRewardVideoHandler implements BaseExtraInterfaceForHandler {
    private static final String AD_TYPE = "rv";
    private static final String TAG = "MBRewardVideoHandler";
    private a controller;
    private String unitId;

    public MBRewardVideoHandler(Context context, String str, String str2) {
        if (b.d().g() == null && context != null) {
            b.d().b(context);
        }
        String strG = af.g(str2);
        if (!TextUtils.isEmpty(strG)) {
            af.a(str2, strG);
        }
        initMBRewardVideoHandler(str, str2);
    }

    public MBRewardVideoHandler(String str, String str2) {
        String strG = af.g(str2);
        if (!TextUtils.isEmpty(strG)) {
            af.a(str2, strG);
        }
        initMBRewardVideoHandler(str, str2);
    }

    private void initMBRewardVideoHandler(String str, String str2) {
        this.unitId = str2;
        try {
            if (this.controller == null) {
                a aVar = new a();
                this.controller = aVar;
                aVar.a(false);
            }
            this.controller.b(str, str2);
        } catch (Throwable th) {
            aa.b(TAG, th.getMessage(), th);
        }
    }

    public void clearBitmapCache() {
        try {
            com.mbridge.msdk.foundation.same.c.b.a(b.d().g()).a();
        } catch (Throwable th) {
            aa.d(TAG, th.getMessage());
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

    public boolean isReady() {
        a aVar = this.controller;
        if (aVar == null) {
            return false;
        }
        boolean zD = aVar.d(false);
        if (zD) {
            r.a().d(this.unitId, "rv", false);
        } else {
            r.a().e(this.unitId, "rv", false);
        }
        r.a().e(this.unitId, "rv", false);
        return zD;
    }

    public void load() {
        HashMap map = new HashMap();
        try {
            String md5 = SameMD5.getMD5(af.c());
            r.a("2000123", this.unitId, md5, "reward_load", 94);
            map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
        } catch (Exception unused) {
        }
        r.a().a(this.unitId, "rv", false);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(true, (Map<String, String>) map);
        }
    }

    public void loadFormSelfFilling() {
        HashMap map = new HashMap();
        try {
            String md5 = SameMD5.getMD5(af.c());
            map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
            r.a("2000123", this.unitId, md5, "self_load", 94);
        } catch (Exception unused) {
        }
        r.a().a(this.unitId, "rv", false);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a(false, (Map<String, String>) map);
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

    public void show() {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "0");
            m.a().b("2000128", "reward_show", this.unitId, "94", map);
        } catch (Exception unused) {
        }
        r.a().f(this.unitId, "rv", false);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((String) null, (String) null, (String) null);
        }
    }

    public void show(String str) {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "0");
            m.a().b("2000128", "reward_show", this.unitId, "94", map);
        } catch (Exception unused) {
        }
        r.a().f(this.unitId, "rv", false);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((String) null, str, (String) null);
        }
    }

    public void show(String str, String str2) {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "0");
            m.a().b("2000128", "reward_show", this.unitId, "94", map);
        } catch (Exception unused) {
        }
        r.a().f(this.unitId, "rv", false);
        a aVar = this.controller;
        if (aVar != null) {
            aVar.a((String) null, str, str2);
        }
    }
}
