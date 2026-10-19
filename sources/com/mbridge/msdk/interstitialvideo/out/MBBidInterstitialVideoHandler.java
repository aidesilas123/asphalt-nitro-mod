package com.mbridge.msdk.interstitialvideo.out;

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
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class MBBidInterstitialVideoHandler {
    private a a;
    private String b;

    public MBBidInterstitialVideoHandler(Context context, String str, String str2) {
        if (b.d().g() == null && context != null) {
            b.d().b(context);
        }
        String strG = af.g(str2);
        if (!TextUtils.isEmpty(strG)) {
            af.a(str2, strG);
        }
        a(str, str2);
    }

    public MBBidInterstitialVideoHandler(String str, String str2) {
        a(str, str2);
    }

    private void a(String str, String str2) {
        this.b = str2;
        try {
            if (this.a == null) {
                a aVar = new a();
                this.a = aVar;
                aVar.a(true);
                this.a.b(true);
            }
            this.a.b(str, str2);
        } catch (Throwable th) {
            aa.b("MBBidRewardVideoHandler", th.getMessage(), th);
        }
    }

    public void clearVideoCache() {
        try {
            if (this.a != null) {
                y.a();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public String getCreativeIdWithUnitId() {
        a aVar = this.a;
        return aVar != null ? aVar.b() : "";
    }

    public String getRequestId() {
        a aVar = this.a;
        return aVar != null ? aVar.a() : "";
    }

    public boolean isBidReady() {
        a aVar = this.a;
        if (aVar == null) {
            r.a().e(this.b, "iv", true);
            return false;
        }
        boolean zD = aVar.d(true);
        if (zD) {
            r.a().d(this.b, "iv", true);
        } else {
            r.a().e(this.b, "iv", true);
        }
        return zD;
    }

    public void loadFormSelfFilling() {
        HashMap map = new HashMap();
        try {
            String md5 = SameMD5.getMD5(af.c());
            map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, md5);
            r.a("2000123", this.b, md5, "self_load", 287);
        } catch (Exception unused) {
        }
        r.a().a(this.b, "iv", true);
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(false, (Map<String, String>) map);
        }
    }

    public void loadFromBid(String str) {
        String md5;
        HashMap map = new HashMap();
        try {
            if (TextUtils.isEmpty(str)) {
                md5 = SameMD5.getMD5(af.c());
            } else {
                String[] strArrSplit = str.split("_");
                md5 = (strArrSplit == null || strArrSplit.length < 3) ? str : strArrSplit[2];
            }
            String str2 = md5;
            map.put(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, str2);
            r.a(str, "2000123", this.b, str2, "hb_Interstitial_load", 287);
        } catch (Exception unused) {
        }
        r.a().a(this.b, "iv", true);
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(true, str, (Map<String, String>) map);
        }
    }

    public void playVideoMute(int i) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(i);
        }
    }

    public void setAlertDialogText(String str, String str2, String str3, String str4) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(str, str2, str3, str4);
        }
    }

    public void setIVRewardEnable(int i, double d2) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(i, com.mbridge.msdk.foundation.same.a.q, (int) (d2 * 100.0d));
        }
    }

    public void setIVRewardEnable(int i, int i2) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(i, com.mbridge.msdk.foundation.same.a.r, i2);
        }
    }

    public void setInterstitialVideoListener(InterstitialVideoListener interstitialVideoListener) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(new com.mbridge.msdk.interstitialvideo.a.a(interstitialVideoListener, this.b, true));
        }
    }

    public void setRewardVideoListener(InterstitialVideoListener interstitialVideoListener) {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a(new com.mbridge.msdk.interstitialvideo.a.a(interstitialVideoListener, this.b, true));
        }
    }

    public void showFromBid() {
        try {
            HashMap map = new HashMap();
            map.put(CampaignEx.JSON_KEY_HB, "1");
            m.a().b("2000128", "hb_interstitial_show", this.b, "287", map);
        } catch (Exception unused) {
        }
        r.a().f(this.b, "iv", true);
        a aVar = this.a;
        if (aVar != null) {
            aVar.a((String) null, (String) null, (String) null);
        }
    }
}
