package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.util.Base64;
import android.webkit.WebView;
import com.json.o2;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.video.bt.a.c;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeBTLayout extends BTBaseView {
    private WebView p;

    public MBridgeBTLayout(Context context) {
        super(context);
    }

    public MBridgeBTLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.p != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", BTBaseView.n);
                jSONObject2.put("id", getInstanceId());
                jSONObject2.put(o2.h.k0, str);
                jSONObject2.put("data", jSONObject);
                g.a().a(this.p, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                c.a().a(this.p, "broadcast", getInstanceId());
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
    }

    public void notifyEvent(String str) {
        WebView webView = this.p;
        if (webView != null) {
            BTBaseView.a(webView, str, this.f7484d);
        }
    }

    public void onBackPressed() {
        if (this.p != null) {
            c.a().a(this.p, "onSystemBackPressed", this.f7484d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (this.p != null) {
            try {
                CampaignEx campaignEx = this.b;
                if (campaignEx == null || !campaignEx.isDynamicView()) {
                    JSONObject jSONObject = new JSONObject();
                    if (configuration.orientation == 2) {
                        jSONObject.put("orientation", o2.h.C);
                    } else {
                        jSONObject.put("orientation", o2.h.D);
                    }
                    jSONObject.put("instanceId", this.f7484d);
                    g.a().a(this.p, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
    }

    public void setWebView(WebView webView) {
        this.p = webView;
    }
}
