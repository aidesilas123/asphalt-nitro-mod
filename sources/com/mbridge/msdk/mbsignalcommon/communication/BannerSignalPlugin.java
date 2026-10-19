package com.mbridge.msdk.mbsignalcommon.communication;

import android.content.Context;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.mbsignalcommon.windvane.AbsFeedBackForH5;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;

/* JADX INFO: loaded from: classes4.dex */
public class BannerSignalPlugin extends AbsFeedBackForH5 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f7308d = "BannerSignalPlugin";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f7309e;

    public void click(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", CampaignEx.JSON_NATIVE_VIDEO_CLICK);
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.b(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", CampaignEx.JSON_NATIVE_VIDEO_CLICK, th);
        }
    }

    public void getFileInfo(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "getFileInfo");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.j(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "getFileInfo", th);
        }
    }

    public void getNetstat(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "getNetstat");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.o(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "getNetstat", th);
        }
    }

    public void handlerH5Exception(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "handlerH5Exception");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.m(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "handlerH5Exception", th);
        }
    }

    public void increaseOfferFrequence(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "increaseOfferFrequence");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.l(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "increaseOfferFrequence", th);
        }
    }

    public void init(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", o2.a.f6463e);
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.a(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", o2.a.f6463e, th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.mbridge.msdk.mbsignalcommon.windvane.h
    public void initialize(Context context, WindVaneWebView windVaneWebView) {
        super.initialize(context, windVaneWebView);
        try {
            if (context instanceof c) {
                this.f7309e = (c) context;
            } else if (windVaneWebView.getObject() != null && (windVaneWebView.getObject() instanceof c)) {
                this.f7309e = (c) windVaneWebView.getObject();
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", MobileAdsBridgeBase.initializeMethodName, th);
        }
    }

    public void install(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "install");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.g(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "install", th);
        }
    }

    public void onSignalCommunication(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "onSignalCommunication");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.f(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "onSignalCommunication", th);
        }
    }

    public void openURL(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "openURL");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.n(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "openURL", th);
        }
    }

    public void readyStatus(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "readyStatus");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.c(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "readyStatus", th);
        }
    }

    public void reportUrls(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "reportUrls");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.k(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "reportUrls", th);
        }
    }

    public void resetCountdown(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "resetCountdown");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.h(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "resetCountdown", th);
        }
    }

    public void sendImpressions(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "sendImpressions");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.i(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "sendImpressions", th);
        }
    }

    public void toggleCloseBtn(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "toggleCloseBtn");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.d(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "toggleCloseBtn", th);
        }
    }

    public void triggerCloseBtn(Object obj, String str) {
        try {
            aa.d("BannerSignalPlugin", "triggerCloseBtn");
            c cVar = this.f7309e;
            if (cVar != null) {
                cVar.e(obj, str);
            }
        } catch (Throwable th) {
            aa.b("BannerSignalPlugin", "triggerCloseBtn", th);
        }
    }
}
