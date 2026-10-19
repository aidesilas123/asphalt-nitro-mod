package com.mbridge.msdk.video.signal.a;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.json.o2;
import com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementId;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.db.q;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.scheme.applet.AppletModelManager;
import com.mbridge.msdk.scheme.applet.AppletsModel;
import com.mbridge.msdk.video.signal.a.c;
import com.mbridge.msdk.video.signal.c;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: JSCommon.java */
/* JADX INFO: loaded from: classes4.dex */
public final class j extends c {
    private Activity n;
    private String o;
    private String p;
    private CampaignEx q;
    private List<CampaignEx> r;
    private int s;
    private String t = "";
    private String u = "";
    private boolean v = false;
    private boolean w = false;

    public j(Activity activity, CampaignEx campaignEx) {
        this.n = activity;
        this.q = campaignEx;
    }

    public j(Activity activity, CampaignEx campaignEx, List<CampaignEx> list) {
        this.n = activity;
        this.q = campaignEx;
        this.r = list;
    }

    private CampaignEx a(String str, CampaignEx campaignEx) {
        String strValueOf;
        if (TextUtils.isEmpty(str)) {
            return campaignEx;
        }
        if (TextUtils.isEmpty(str) && campaignEx == null) {
            return null;
        }
        if (str.contains("notice")) {
            try {
                JSONObject jSONObjectCampaignToJsonObject = CampaignEx.campaignToJsonObject(campaignEx);
                JSONObject jSONObject = new JSONObject(str);
                try {
                    if (!jSONObject.has(CampaignEx.JSON_KEY_DEEP_LINK_URL)) {
                        jSONObjectCampaignToJsonObject.put(CampaignEx.JSON_KEY_DEEP_LINK_URL, "");
                    }
                } catch (Exception unused) {
                }
                Iterator<String> itKeys = jSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    jSONObjectCampaignToJsonObject.put(next, jSONObject.getString(next));
                }
                CampaignEx campaignWithBackData = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject);
                a(jSONObjectCampaignToJsonObject, campaignWithBackData);
                return campaignWithBackData;
            } catch (JSONException e2) {
                e2.printStackTrace();
                return campaignEx;
            }
        }
        try {
            JSONObject jSONObjectCampaignToJsonObject2 = CampaignEx.campaignToJsonObject(campaignEx);
            CampaignEx campaignWithBackData2 = CampaignEx.parseCampaignWithBackData(jSONObjectCampaignToJsonObject2);
            if (campaignWithBackData2 == null) {
                campaignWithBackData2 = campaignEx;
            }
            if (!TextUtils.isEmpty(str)) {
                a(jSONObjectCampaignToJsonObject2, campaignWithBackData2);
                JSONObject jSONObjectOptJSONObject = new JSONObject(str).optJSONObject(com.mbridge.msdk.foundation.same.a.h);
                String strValueOf2 = "-999";
                if (jSONObjectOptJSONObject != null) {
                    strValueOf2 = String.valueOf(af.b(this.n, Integer.valueOf(jSONObjectOptJSONObject.getString(com.mbridge.msdk.foundation.same.a.f7094f)).intValue()));
                    strValueOf = String.valueOf(af.b(this.n, Integer.valueOf(jSONObjectOptJSONObject.getString(com.mbridge.msdk.foundation.same.a.f7095g)).intValue()));
                } else {
                    strValueOf = "-999";
                }
                campaignWithBackData2.setClickURL(com.mbridge.msdk.click.b.a(campaignWithBackData2.getClickURL(), strValueOf2, strValueOf));
                String noticeUrl = campaignWithBackData2.getNoticeUrl();
                if (jSONObjectOptJSONObject != null) {
                    Iterator<String> itKeys2 = jSONObjectOptJSONObject.keys();
                    StringBuilder sb = new StringBuilder();
                    while (itKeys2.hasNext()) {
                        sb.append(o2.i.c);
                        String next2 = itKeys2.next();
                        String strOptString = jSONObjectOptJSONObject.optString(next2);
                        if (com.mbridge.msdk.foundation.same.a.f7094f.equals(next2) || com.mbridge.msdk.foundation.same.a.f7095g.equals(next2)) {
                            strOptString = String.valueOf(af.b(this.n, Integer.valueOf(strOptString).intValue()));
                        }
                        sb.append(next2);
                        sb.append(o2.i.b);
                        sb.append(strOptString);
                    }
                    campaignWithBackData2.setNoticeUrl(noticeUrl + ((Object) sb));
                }
            }
            return campaignWithBackData2;
        } catch (JSONException e3) {
            e3.printStackTrace();
            return campaignEx;
        } catch (Throwable th) {
            th.printStackTrace();
            return campaignEx;
        }
    }

    private void a(JSONObject jSONObject) {
        try {
            Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
            String string = ai.b(contextG, "MBridge_ConfirmTitle" + this.i, "").toString();
            String string2 = ai.b(contextG, "MBridge_ConfirmContent" + this.i, "").toString();
            String string3 = ai.b(contextG, "MBridge_CancelText" + this.i, "").toString();
            String string4 = ai.b(contextG, "MBridge_ConfirmText" + this.i, "").toString();
            if (!TextUtils.isEmpty(string)) {
                jSONObject.put("confirm_title", string);
            }
            if (!TextUtils.isEmpty(string2)) {
                jSONObject.put("confirm_description", string2);
            }
            if (!TextUtils.isEmpty(string3)) {
                jSONObject.put("confirm_t", string3);
            }
            if (!TextUtils.isEmpty(string4)) {
                jSONObject.put("confirm_c_play", string4);
            }
            if (TextUtils.isEmpty(string4)) {
                return;
            }
            jSONObject.put("confirm_c_rv", string4);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(JSONObject jSONObject, CampaignEx campaignEx) {
        try {
            String strOptString = jSONObject.optString(CampaignEx.JSON_KEY_CAMPAIGN_UNITID);
            if (TextUtils.isEmpty(strOptString)) {
                return;
            }
            campaignEx.setCampaignUnitId(strOptString);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private boolean b(CampaignEx campaignEx) {
        com.mbridge.msdk.c.e eVarB;
        try {
            String strH = com.mbridge.msdk.foundation.controller.b.d().h();
            long jQ = (TextUtils.isEmpty(strH) || (eVarB = com.mbridge.msdk.c.f.a().b(strH)) == null) ? 0L : eVarB.Q() * 1000;
            com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
            long jF = aVarB != null ? aVarB.f() : 0L;
            if (campaignEx != null) {
                return campaignEx.isSpareOffer(jF, jQ);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    private String p() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.foundation.tools.e eVar = new com.mbridge.msdk.foundation.tools.e(com.mbridge.msdk.foundation.controller.b.d().g());
        try {
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.i);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("instanceId", this.t);
            jSONObject2.put("rootViewInstanceId", this.u);
            jSONObject2.put("isRootTemplateWebView", this.v);
            jSONObject.put("sdk_info", "MAL_16.5.91,3.0.1");
            jSONObject2.put("playVideoMute", this.m);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", eVar.a());
            JSONArray jSONArray = new JSONArray();
            List<CampaignEx> list = this.r;
            if (list == null || list.size() <= 0) {
                jSONArray.put(CampaignEx.campaignToJsonObject(this.q));
            } else {
                for (CampaignEx campaignEx : this.r) {
                    jSONArray.put(CampaignEx.campaignToJsonObject(campaignEx, campaignEx.isReady(), b(campaignEx)));
                }
            }
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", y());
            String strC = com.mbridge.msdk.c.f.a().c(com.mbridge.msdk.foundation.controller.b.d().h());
            if (!TextUtils.isEmpty(strC)) {
                JSONObject jSONObject3 = new JSONObject(strC);
                a(jSONObject3);
                String strD = com.mbridge.msdk.c.f.a().d(this.i);
                if (!TextUtils.isEmpty(strD)) {
                    jSONObject3.put("ivreward", new JSONObject(strD));
                }
                jSONObject.put("appSetting", jSONObject3);
            }
            jSONObject.put("rewardSetting", z());
            if (!TextUtils.isEmpty(this.i)) {
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.i);
            }
            jSONObject.put("rw_plus", this.w ? "1" : "0");
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject.toString();
    }

    private com.mbridge.msdk.click.a q() {
        if (this.k == null) {
            this.k = new com.mbridge.msdk.click.a(com.mbridge.msdk.foundation.controller.b.d().g(), this.i);
        }
        return this.k;
    }

    private JSONObject r() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.foundation.tools.e eVar = new com.mbridge.msdk.foundation.tools.e(com.mbridge.msdk.foundation.controller.b.d().g());
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.m);
            jSONObject.put("sdkSetting", jSONObject2);
            jSONObject.put("device", eVar.a());
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(CampaignEx.campaignToJsonObject(this.q));
            jSONObject.put("campaignList", jSONArray);
            jSONObject.put("unitSetting", y());
            String strC = com.mbridge.msdk.c.f.a().c(com.mbridge.msdk.foundation.controller.b.d().h());
            if (!TextUtils.isEmpty(strC)) {
                JSONObject jSONObject3 = new JSONObject(strC);
                a(jSONObject3);
                String strD = com.mbridge.msdk.c.f.a().d(this.i);
                if (!TextUtils.isEmpty(strD)) {
                    jSONObject3.put("ivreward", strD);
                }
                jSONObject.put("appSetting", jSONObject3.toString());
            }
            jSONObject.put("rewardSetting", z());
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("sdk_info", "MAL_16.5.91,3.0.1");
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject t() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(this.i)) {
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, this.i);
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject u() {
        JSONObject jSONObject = new JSONObject();
        try {
            String strC = com.mbridge.msdk.c.f.a().c(com.mbridge.msdk.foundation.controller.b.d().h());
            if (!TextUtils.isEmpty(strC)) {
                jSONObject.put("appSetting", new JSONObject(strC));
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject v() {
        JSONObject jSONObject = new JSONObject();
        try {
            com.mbridge.msdk.videocommon.d.c cVar = this.j;
            if (cVar != null) {
                jSONObject.put("unitSetting", cVar.F());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject w() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("device", new com.mbridge.msdk.foundation.tools.e(com.mbridge.msdk.foundation.controller.b.d().g()).a());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject x() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("playVideoMute", this.m);
            jSONObject2.put("instanceId", this.t);
            jSONObject.put("sdkSetting", jSONObject2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject;
    }

    private JSONObject y() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.videocommon.d.c cVar = this.j;
        return cVar != null ? cVar.F() : jSONObject;
    }

    private JSONObject z() {
        JSONObject jSONObject = new JSONObject();
        com.mbridge.msdk.videocommon.d.a aVarB = com.mbridge.msdk.videocommon.d.b.a().b();
        return aVarB != null ? aVarB.l() : jSONObject;
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final void a(int i, String str) {
        super.a(i, str);
        if (i != 2) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            final String strOptString = jSONObject.optString(NotificationCompat.CATEGORY_EVENT, NotificationCompat.CATEGORY_EVENT);
            final String strOptString2 = jSONObject.optString("template", UniquePlacementId.NO_ID);
            final String strOptString3 = jSONObject.optString(TtmlNode.TAG_LAYOUT, UniquePlacementId.NO_ID);
            final String strOptString4 = jSONObject.optString(MBridgeConstans.PROPERTIES_UNIT_ID, this.i);
            final int iR = w.r(this.n.getApplication());
            Runnable runnable = new Runnable() { // from class: com.mbridge.msdk.video.signal.a.j.1
                @Override // java.lang.Runnable
                public final void run() {
                    q.a(com.mbridge.msdk.foundation.db.h.a(j.this.n.getApplication())).a(new com.mbridge.msdk.foundation.entity.n("2000039", strOptString, strOptString2, strOptString3, strOptString4, j.this.q.getId(), iR, w.a(j.this.n.getApplication(), iR)));
                }
            };
            com.mbridge.msdk.foundation.controller.c.a();
            com.mbridge.msdk.foundation.same.f.b.a().execute(runnable);
        } catch (Throwable th) {
            aa.b("DefaultJSCommon", th.getMessage(), th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final void a(Activity activity) {
        this.n = activity;
    }

    public final void a(CampaignEx campaignEx) {
        this.q = campaignEx;
    }

    public final void a(List<CampaignEx> list) {
        this.r = list;
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.p = str;
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final String c() {
        this.l.a();
        this.a = true;
        if (TextUtils.isEmpty(this.o)) {
            this.o = p();
        } else {
            this.o = af.b(this.o, "tun", w.y() + "");
        }
        return this.o;
    }

    public final void c(String str) {
        this.t = str;
    }

    public final void c(boolean z) {
        this.v = z;
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.d
    public final void click(int i, String str) {
        String queryParameter;
        AppletsModel appletsModel;
        List<CampaignEx> list;
        int iP;
        List<CampaignEx> list2;
        super.click(i, str);
        CampaignEx campaignEx = this.q;
        if (campaignEx != null && campaignEx.getDynamicTempCode() == 5 && this.q != null && (list2 = this.r) != null && list2.size() != 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("camp_position")) {
                    this.q = this.r.get(jSONObject.getInt("camp_position"));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
            }
        }
        boolean z = true;
        try {
            if (i != 1) {
                if (i != 3) {
                    return;
                }
                CampaignEx campaignEx2 = this.q;
                if (campaignEx2 == null || campaignEx2.getCbd() <= -2) {
                    com.mbridge.msdk.videocommon.d.c cVar = this.j;
                    iP = cVar != null ? cVar.p() : 1;
                } else {
                    iP = this.q.getCbd();
                }
                if (iP == -1) {
                    a(new c.b(this, this.l));
                }
                click(1, str);
                return;
            }
            if (this.q == null && (list = this.r) != null && list.size() > 0) {
                this.q = this.r.get(0);
            }
            CampaignEx campaignEx3 = this.q;
            if (campaignEx3 == null) {
                return;
            }
            CampaignEx campaignExA = a(str, campaignEx3);
            if (campaignExA != null && (appletsModel = AppletModelManager.getInstance().get(campaignExA)) != null) {
                appletsModel.setUserClick(true);
                AppletModelManager.getInstance().replace(appletsModel, campaignExA);
            }
            try {
                queryParameter = Uri.parse(campaignExA.getNoticeUrl()).getQueryParameter(com.mbridge.msdk.foundation.same.a.i);
            } catch (Throwable th) {
                aa.b("DefaultJSCommon", "INSTALL", th);
            }
            int i2 = !TextUtils.isEmpty(queryParameter) ? Integer.parseInt(queryParameter) : 0;
            c.a aVar = this.l;
            if (i2 != 2) {
                z = false;
            }
            aVar.a(z);
            q().a(this.l);
            q().a(campaignExA);
            com.mbridge.msdk.video.module.b.b.d(com.mbridge.msdk.foundation.controller.b.d().g(), campaignExA);
        } catch (Throwable th2) {
            aa.b("DefaultJSCommon", th2.getMessage(), th2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final void d() {
        super.d();
        try {
            Activity activity = this.n;
            if (activity != null) {
                activity.finish();
            }
        } catch (Throwable th) {
            aa.b("DefaultJSCommon", th.getMessage(), th);
        }
    }

    public final void d(String str) {
        this.u = str;
    }

    public final void d(boolean z) {
        this.w = z;
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final void f() {
        super.f();
        c.a aVar = this.l;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final String g(int i) {
        switch (i) {
            case 1:
                return s().toString();
            case 2:
                return t().toString();
            case 3:
                return u().toString();
            case 4:
                return v().toString();
            case 5:
                return w().toString();
            case 6:
                return x().toString();
            default:
                return r().toString();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.d
    public final void handlerH5Exception(int i, String str) {
        super.handlerH5Exception(i, str);
        try {
            this.l.a(i, str);
        } catch (Throwable th) {
            aa.b("DefaultJSCommon", th.getMessage(), th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.c, com.mbridge.msdk.video.signal.c
    public final String i() {
        aa.a("DefaultJSCommon", "getNotchArea");
        return this.p;
    }

    public final void i(int i) {
        this.s = i;
    }

    public final void n() {
        this.o = "";
    }

    public final int o() {
        return this.s;
    }
}
