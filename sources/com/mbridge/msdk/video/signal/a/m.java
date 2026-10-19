package com.mbridge.msdk.video.signal.a;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ai;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: compiled from: JSRewardVideoV1.java */
/* JADX INFO: loaded from: classes4.dex */
public final class m extends f {
    private Activity a;
    private MBridgeContainerView b;

    public m(Activity activity, MBridgeContainerView mBridgeContainerView) {
        this.a = activity;
        this.b = mBridgeContainerView;
    }

    private String a(List<CampaignEx> list, String str, String str2, JSONObject jSONObject) {
        if (list == null) {
            return null;
        }
        try {
            if (list.size() <= 0) {
                return null;
            }
            com.mbridge.msdk.foundation.tools.e eVar = new com.mbridge.msdk.foundation.tools.e(com.mbridge.msdk.foundation.controller.b.d().g());
            Object camplistToJson = CampaignEx.parseCamplistToJson(list);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("campaignList", camplistToJson);
            jSONObject2.put("device", eVar.a());
            jSONObject2.put(MBridgeConstans.PROPERTIES_UNIT_ID, str);
            jSONObject2.put("sdk_info", str2);
            jSONObject2.put("unitSetting", jSONObject);
            if (com.mbridge.msdk.c.f.a() != null) {
                String strC = com.mbridge.msdk.c.f.a().c(com.mbridge.msdk.foundation.controller.b.d().h());
                if (!TextUtils.isEmpty(strC)) {
                    JSONObject jSONObject3 = new JSONObject(strC);
                    try {
                        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                        String string = ai.b(contextG, "MBridge_ConfirmTitle" + str, "").toString();
                        String string2 = ai.b(contextG, "MBridge_ConfirmContent" + str, "").toString();
                        String string3 = ai.b(contextG, "MBridge_CancelText" + str, "").toString();
                        String string4 = ai.b(contextG, "MBridge_ConfirmText" + str, "").toString();
                        if (!TextUtils.isEmpty(string)) {
                            jSONObject3.put("confirm_title", string);
                        }
                        if (!TextUtils.isEmpty(string2)) {
                            jSONObject3.put("confirm_description", string2);
                        }
                        if (!TextUtils.isEmpty(string3)) {
                            jSONObject3.put("confirm_t", string3);
                        }
                        if (!TextUtils.isEmpty(string4)) {
                            jSONObject3.put("confirm_c_play", string4);
                        }
                        if (!TextUtils.isEmpty(string4)) {
                            jSONObject3.put("confirm_c_rv", string4);
                        }
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    String strD = com.mbridge.msdk.c.f.a().d(str);
                    if (!TextUtils.isEmpty(strD)) {
                        jSONObject3.put("ivreward", new JSONObject(strD));
                    }
                    jSONObject2.put("appSetting", jSONObject3);
                }
            }
            return jSONObject2.toString();
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.f, com.mbridge.msdk.video.signal.h
    public final String a() {
        if (this.b == null) {
            super.a();
        } else {
            try {
                ArrayList arrayList = new ArrayList();
                arrayList.add(this.b.getCampaign());
                String unitID = this.b.getUnitID();
                com.mbridge.msdk.videocommon.d.c cVarA = com.mbridge.msdk.videocommon.d.b.a() == null ? null : com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), unitID);
                JSONObject jSONObject = new JSONObject();
                if (cVarA != null) {
                    jSONObject = cVarA.F();
                }
                aa.a("JSRewardVideoV1", "getEndScreenInfo success campaign = " + this.b.getCampaign());
                return a(arrayList, unitID, "MAL_16.5.91,3.0.1", jSONObject);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return super.a();
    }

    @Override // com.mbridge.msdk.video.signal.a.f, com.mbridge.msdk.video.signal.h
    public final void a(String str) {
        MBridgeContainerView mBridgeContainerView;
        super.a(str);
        try {
            if (this.a == null || TextUtils.isEmpty(str) || !str.equals(CampaignEx.JSON_NATIVE_VIDEO_CLICK) || (mBridgeContainerView = this.b) == null) {
                return;
            }
            mBridgeContainerView.triggerCloseBtn(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.f, com.mbridge.msdk.video.signal.h
    public final void b(String str) {
        super.b(str);
        try {
            if (this.a != null && !TextUtils.isEmpty(str)) {
                if (str.equals(o2.h.C)) {
                    this.a.setRequestedOrientation(0);
                } else if (str.equals(o2.h.D)) {
                    this.a.setRequestedOrientation(1);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.f, com.mbridge.msdk.video.signal.h
    public final void c(String str) {
        MBridgeContainerView mBridgeContainerView;
        super.c(str);
        try {
            if (this.a == null || TextUtils.isEmpty(str) || (mBridgeContainerView = this.b) == null) {
                return;
            }
            mBridgeContainerView.handlerPlayableException(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.f, com.mbridge.msdk.video.signal.g
    public final void notifyCloseBtn(int i) {
        super.notifyCloseBtn(i);
        MBridgeContainerView mBridgeContainerView = this.b;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.notifyCloseBtn(i);
        }
    }

    @Override // com.mbridge.msdk.video.signal.a.f, com.mbridge.msdk.video.signal.g
    public final void toggleCloseBtn(int i) {
        super.toggleCloseBtn(i);
        MBridgeContainerView mBridgeContainerView = this.b;
        if (mBridgeContainerView != null) {
            mBridgeContainerView.toggleCloseBtn(i);
        }
    }
}
