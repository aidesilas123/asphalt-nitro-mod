package com.mbridge.msdk.mbsignalcommon.communication;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: CommonBannerSignalCommunicationImp.java */
/* JADX INFO: loaded from: classes4.dex */
public abstract class a implements c {
    public static final String a = "a";

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void a(Object obj, String str) {
        aa.a(a, "init: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void b(Object obj, String str) {
        aa.a(a, "click: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void c(Object obj, String str) {
        aa.a(a, "readyStatus: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void d(Object obj, String str) {
        aa.a(a, "toggleCloseBtn: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void e(Object obj, String str) {
        aa.a(a, "triggerCloseBtn: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void f(Object obj, String str) {
        try {
            if (obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) {
                g.a().a(((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a);
            }
        } catch (Throwable th) {
            aa.b(a, "onSignalCommunication", th);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void g(Object obj, String str) {
        aa.a(a, "install: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void h(Object obj, String str) {
        aa.a(a, "resetCountdown: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void i(Object obj, String str) {
        aa.a(a, "sendImpressions: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void j(Object obj, String str) {
        aa.a(a, "getFileInfo:" + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public void k(Object obj, String str) {
        aa.a(a, "reportUrls:" + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public final void l(Object obj, String str) {
        aa.a(a, "increaseOfferFrequence:" + str);
        if (TextUtils.isEmpty(str)) {
            b.a(obj, "params is null");
        } else {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            try {
                b.a(obj, new JSONObject(str));
            } catch (Throwable th) {
                aa.b(a, "increaseOfferFrequence", th);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public final void m(Object obj, String str) {
        aa.a(a, "handlerH5Exception: " + str);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public final void n(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        aa.d(a, "openURL:" + str);
        if (TextUtils.isEmpty(str)) {
            b.a(obj, "params is null");
            return;
        }
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (contextG == null) {
            try {
                if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a) != null) {
                    contextG = windVaneWebView.getContext();
                }
            } catch (Exception e2) {
                aa.d(a, e2.getMessage());
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
            aa.d(a, e3.getMessage());
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.communication.c
    public final void o(Object obj, String str) {
        WindVaneWebView windVaneWebView;
        aa.d(a, "getNetstat:" + str);
        if (TextUtils.isEmpty(str)) {
            b.a(obj, "params is null");
            return;
        }
        Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (contextG == null) {
            try {
                if ((obj instanceof com.mbridge.msdk.mbsignalcommon.windvane.a) && (windVaneWebView = ((com.mbridge.msdk.mbsignalcommon.windvane.a) obj).a) != null) {
                    contextG = windVaneWebView.getContext();
                }
            } catch (Exception e2) {
                aa.d(a, e2.getMessage());
            }
        }
        if (contextG == null) {
            g.a().a(obj, b.a(1));
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("netstat", w.r(contextG));
            String string = jSONObject.toString();
            if (!TextUtils.isEmpty(string)) {
                string = Base64.encodeToString(string.getBytes(), 2);
            }
            g.a().a(obj, string);
        } catch (Throwable th) {
            aa.d(a, th.getMessage());
            g.a().a(obj, b.a(1));
        }
    }
}
