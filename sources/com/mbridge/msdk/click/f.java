package com.mbridge.msdk.click;

import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.out.NativeListener;
import com.mbridge.msdk.scheme.applet.AppletSchemeCallBack;
import com.mbridge.msdk.scheme.applet.AppletsModel;

/* JADX INFO: compiled from: DefaultAppletSchemeCallBack.java */
/* JADX INFO: loaded from: classes4.dex */
public final class f extends AppletSchemeCallBack {
    private final NativeListener.NativeTrackingListener a;
    private final CampaignEx b;
    private final AppletsModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f6811d;

    public f(NativeListener.NativeTrackingListener nativeTrackingListener, CampaignEx campaignEx, AppletsModel appletsModel, a aVar) {
        this.a = nativeTrackingListener;
        this.b = campaignEx;
        this.c = appletsModel;
        this.f6811d = aVar;
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected final void onRequestFailed(int i, String str, String str2) {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || this.c == null) {
            return;
        }
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.a;
            if (nativeTrackingListener != null) {
                try {
                    nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("DefaultAppletSchemeCallBack", e2.getMessage());
                    }
                }
            }
            this.c.setUserClick(false);
            this.c.setRequestingFinish();
            this.b.setClickURL(str2);
            a aVar = this.f6811d;
            if (aVar != null) {
                try {
                    aVar.a(this.b);
                } catch (Exception e3) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("DefaultAppletSchemeCallBack", e3.getMessage());
                    }
                }
            }
        } catch (Exception e4) {
            if (MBridgeConstans.DEBUG) {
                aa.d("DefaultAppletSchemeCallBack", e4.getMessage());
            }
        }
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected final void onRequestStart() {
    }

    @Override // com.mbridge.msdk.scheme.applet.AppletSchemeCallBack
    protected final void onRequestSuccess(String str) {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || this.c == null) {
            return;
        }
        try {
            NativeListener.NativeTrackingListener nativeTrackingListener = this.a;
            if (nativeTrackingListener != null) {
                try {
                    nativeTrackingListener.onFinishRedirection(campaignEx, campaignEx.getClickURL());
                } catch (Exception e2) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("DefaultAppletSchemeCallBack", e2.getMessage());
                    }
                }
            }
            this.c.setUserClick(false);
            this.c.setRequestingFinish();
            this.b.setDeepLinkUrl(str);
            a aVar = this.f6811d;
            if (aVar != null) {
                try {
                    aVar.a(this.b);
                } catch (Exception e3) {
                    if (MBridgeConstans.DEBUG) {
                        aa.d("DefaultAppletSchemeCallBack", e3.getMessage());
                    }
                }
            }
        } catch (Exception e4) {
            if (MBridgeConstans.DEBUG) {
                aa.d("DefaultAppletSchemeCallBack", e4.getMessage());
            }
        }
    }
}
