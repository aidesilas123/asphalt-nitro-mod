package com.mbridge.msdk.mbsignalcommon.mraid;

import android.content.Context;
import android.text.TextUtils;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.mbsignalcommon.mraid.a;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MraidSignalCommunication extends AbsFeedBackForH5 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f7310d;

    public void close(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.C0415a.a.a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a, "close");
        }
        try {
            aa.d("MraidSignalCommunication", "MRAID close");
            b bVar = this.f7310d;
            if (bVar != null) {
                bVar.close();
            }
        } catch (Throwable th) {
            aa.b("MraidSignalCommunication", "MRAID close", th);
        }
    }

    public void expand(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.C0415a.a.a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a, "expand");
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("url");
            String strOptString2 = jSONObject.optString("shouldUseCustomClose");
            aa.d("MraidSignalCommunication", "MRAID expand " + strOptString + " " + strOptString2);
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.f7310d == null) {
                return;
            }
            this.f7310d.expand(strOptString, strOptString2.toLowerCase().equals("true"));
        } catch (Throwable th) {
            aa.b("MraidSignalCommunication", "MRAID expand", th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mbridge.msdk.mbsignalcommon.windvane.h
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (context instanceof b) {
                this.f7310d = (b) context;
                return;
            }
            if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof b)) {
                this.f7310d = (b) windVaneWebView.getObject();
            }
            if (windVaneWebView.getMraidObject() == null || !(windVaneWebView.getMraidObject() instanceof b)) {
                return;
            }
            this.f7310d = (b) windVaneWebView.getMraidObject();
        } catch (Exception e2) {
            if (MBridgeConstans.DEBUG) {
                e2.printStackTrace();
            }
        }
    }

    public void open(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            com.mbridge.msdk.mbsignalcommon.windvane.a aVar = (com.mbridge.msdk.mbsignalcommon.windvane.a) obj;
            windVaneWebView = aVar.a;
            a.C0415a.a.a(aVar.a, MRAIDPresenter.OPEN);
        } else {
            windVaneWebView = null;
        }
        try {
            String strOptString = new JSONObject(str).optString("url");
            aa.d("MraidSignalCommunication", "MRAID Open " + strOptString);
            if (this.f7310d == null || TextUtils.isEmpty(strOptString)) {
                return;
            }
            if (windVaneWebView == null || System.currentTimeMillis() - windVaneWebView.lastTouchTime <= com.mbridge.msdk.click.b.a.c || !com.mbridge.msdk.click.b.a.a(this.f7310d.getMraidCampaign(), windVaneWebView.getUrl(), com.mbridge.msdk.click.b.a.a)) {
                this.f7310d.open(strOptString);
            }
        } catch (Throwable th) {
            aa.b("MraidSignalCommunication", "MRAID Open", th);
        }
    }

    public void setOrientationProperties(Object obj, String str) {
        String str2;
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.C0415a.a.a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a, MRAIDPresenter.SET_ORIENTATION_PROPERTIES);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            String strOptString = jSONObject.optString("allowOrientationChange");
            String strOptString2 = jSONObject.optString("forceOrientation");
            aa.d("MraidSignalCommunication", "MRAID setOrientationProperties");
            if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2) || this.f7310d == null) {
                return;
            }
            strOptString.toLowerCase().equals("true");
            String lowerCase = strOptString2.toLowerCase();
            int iHashCode = lowerCase.hashCode();
            if (iHashCode == 729267099) {
                str2 = o2.h.D;
            } else if (iHashCode != 1430647483) {
                return;
            } else {
                str2 = o2.h.C;
            }
            lowerCase.equals(str2);
        } catch (Throwable th) {
            aa.b("MraidSignalCommunication", "MRAID setOrientationProperties", th);
        }
    }

    public void unload(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.C0415a.a.a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a, "unload");
        }
        try {
            aa.d("MraidSignalCommunication", "MRAID unload");
            b bVar = this.f7310d;
            if (bVar != null) {
                bVar.unload();
            }
        } catch (Throwable th) {
            aa.b("MraidSignalCommunication", "MRAID unload", th);
        }
    }

    public void useCustomClose(Object obj, String str) {
        if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
            a.C0415a.a.a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a, "useCustomClose");
        }
        try {
            String strOptString = new JSONObject(str).optString("shouldUseCustomClose");
            aa.d("MraidSignalCommunication", "MRAID useCustomClose " + strOptString);
            if (TextUtils.isEmpty(strOptString) || this.f7310d == null) {
                return;
            }
            this.f7310d.useCustomClose(strOptString.toLowerCase().equals("true"));
        } catch (Throwable th) {
            aa.b("MraidSignalCommunication", "MRAID useCustomClose", th);
        }
    }
}
