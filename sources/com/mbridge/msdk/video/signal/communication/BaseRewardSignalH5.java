package com.mbridge.msdk.video.signal.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.mbsignalcommon.communication.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.a;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.unity3d.ads.core.domain.HandleAndroidInvocationsUseCase;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class BaseRewardSignalH5 implements IRewardCommunication {
    protected IJSFactory a;

    private String a(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            String string = jSONObject.toString();
            return !TextUtils.isEmpty(string) ? Base64.encodeToString(string.getBytes(), 2) : "";
        } catch (Throwable unused) {
            aa.d("JS-Reward-Communication", "code to string is error");
            return "";
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void cai(Object obj, String str) {
        aa.a("JS-Reward-Communication", "cai:" + str);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                String strOptString = new JSONObject(str).optString(HandleAndroidInvocationsUseCase.KEY_PACKAGE_NAME);
                if (TextUtils.isEmpty(strOptString)) {
                    b.a(obj, "packageName is empty");
                }
                int i = af.c(com.mbridge.msdk.foundation.controller.b.d().g(), strOptString) ? 1 : 2;
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("code", b.b);
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("result", i);
                    jSONObject.put("data", jSONObject2);
                    g.a().a(obj, Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                } catch (Exception e2) {
                    b.a(obj, e2.getMessage());
                    aa.a("JS-Reward-Communication", e2.getMessage());
                }
            } catch (JSONException e3) {
                b.a(obj, "exception: " + e3.getLocalizedMessage());
                aa.b("JS-Reward-Communication", "cai", e3);
            }
        } catch (Throwable th) {
            b.a(obj, "exception: " + th.getLocalizedMessage());
            aa.b("JS-Reward-Communication", "cai", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void getEndScreenInfo(Object obj, String str) {
        String strEncodeToString;
        try {
            IJSFactory iJSFactory = this.a;
            if (iJSFactory != null) {
                String strA = iJSFactory.getIJSRewardVideoV1().a();
                if (TextUtils.isEmpty(strA)) {
                    strEncodeToString = "";
                    aa.a("JS-Reward-Communication", "getEndScreenInfo failed");
                } else {
                    strEncodeToString = Base64.encodeToString(strA.getBytes(), 2);
                    aa.a("JS-Reward-Communication", "getEndScreenInfo success");
                }
                g.a().a(obj, strEncodeToString);
            }
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "getEndScreenInfo", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void handlerPlayableException(Object obj, String str) {
        try {
            if (this.a == null || TextUtils.isEmpty(str)) {
                return;
            }
            String strOptString = new JSONObject(str).optString("msg");
            aa.a("JS-Reward-Communication", "handlerPlayableException,msg:" + str);
            this.a.getIJSRewardVideoV1().c(strOptString);
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "setOrientation", th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        if (context instanceof IJSFactory) {
            this.a = (IJSFactory) context;
        }
    }

    public void initialize(Object obj, WindVaneWebView windVaneWebView) {
        if (obj instanceof IJSFactory) {
            this.a = (IJSFactory) obj;
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void install(Object obj, String str) {
        try {
            if (this.a != null) {
                aa.a("JS-Reward-Communication", "install:" + str);
                if (this.a.getJSContainerModule().endCardShowing()) {
                    this.a.getJSCommon().click(3, str);
                } else {
                    this.a.getJSCommon().click(1, str);
                }
            }
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "install", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void notifyCloseBtn(Object obj, String str) {
        try {
            if (this.a == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            aa.a("JS-Reward-Communication", "notifyCloseBtn,state:" + str);
            this.a.getIJSRewardVideoV1().notifyCloseBtn(iOptInt);
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "notifyCloseBtn", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void openURL(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        aa.d("JS-Reward-Communication", "openURL:" + str);
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (contextG == null) {
            try {
                if ((obj instanceof a) && (windVaneWebView = ((a) obj).a) != null) {
                    contextG = windVaneWebView.getContext();
                }
            } catch (Exception e2) {
                aa.d("JS-Reward-Communication", e2.getMessage());
            }
        }
        if (contextG == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            int iOptInt = jSONObject.optInt("type");
            if (iOptInt == 1) {
                com.mbridge.msdk.click.b.a(contextG, strOptString);
            } else if (iOptInt == 2) {
                com.mbridge.msdk.click.b.b(contextG, strOptString);
            }
        } catch (JSONException e3) {
            aa.d("JS-Reward-Communication", e3.getMessage());
        } catch (Throwable th) {
            aa.d("JS-Reward-Communication", th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void setOrientation(Object obj, String str) {
        try {
            if (this.a == null || TextUtils.isEmpty(str)) {
                return;
            }
            String strOptString = new JSONObject(str).optString("state");
            aa.a("JS-Reward-Communication", "setOrientation,state:" + str);
            this.a.getIJSRewardVideoV1().b(strOptString);
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "setOrientation", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void toggleCloseBtn(Object obj, String str) {
        try {
            if (this.a == null || TextUtils.isEmpty(str)) {
                return;
            }
            int iOptInt = new JSONObject(str).optInt("state");
            aa.a("JS-Reward-Communication", "toggleCloseBtn,state:" + str);
            this.a.getIJSRewardVideoV1().toggleCloseBtn(iOptInt);
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "toggleCloseBtn", th);
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void triggerCloseBtn(Object obj, String str) {
        try {
            if (this.a == null || TextUtils.isEmpty(str)) {
                return;
            }
            g.a().a(obj, a(0));
            this.a.getIJSRewardVideoV1().a(new JSONObject(str).optString("state"));
            aa.a("JS-Reward-Communication", "triggerCloseBtn,state:" + str);
        } catch (Throwable th) {
            aa.b("JS-Reward-Communication", "triggerCloseBtn", th);
            g.a().a(obj, a(-1));
        }
    }
}
