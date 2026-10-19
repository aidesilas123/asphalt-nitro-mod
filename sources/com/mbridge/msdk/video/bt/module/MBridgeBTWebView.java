package com.mbridge.msdk.video.bt.module;

import android.content.Context;
import android.content.res.Configuration;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.json.o2;
import com.mbridge.msdk.click.h;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.p;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ae;
import com.mbridge.msdk.mbsignalcommon.b.a;
import com.mbridge.msdk.mbsignalcommon.mraid.b;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.out.Campaign;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.video.signal.a.j;
import com.mbridge.msdk.videocommon.d.c;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeBTWebView extends BTBaseView implements h, b {
    private String p;
    private String q;
    private String r;
    private boolean s;
    private ImageView t;
    private boolean u;
    private c v;
    private List<CampaignEx> w;
    private WindVaneWebView x;
    private j y;
    private WebView z;

    public MBridgeBTWebView(Context context) {
        super(context);
        this.s = false;
        this.u = false;
    }

    public MBridgeBTWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = false;
        this.u = false;
    }

    public void broadcast(String str, JSONObject jSONObject) {
        if (this.x != null) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("code", BTBaseView.n);
                jSONObject2.put("id", this.f7484d);
                jSONObject2.put(o2.h.k0, str);
                jSONObject2.put("data", jSONObject);
                g.a().a((WebView) this.x, "broadcast", Base64.encodeToString(jSONObject2.toString().getBytes(), 2));
            } catch (Exception unused) {
                com.mbridge.msdk.video.bt.a.c.a().a((WebView) this.x, "broadcast", this.f7484d);
            }
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void close() {
        WebView webView = this.z;
        if (webView != null) {
            BTBaseView.a(webView, "onPlayerCloseBtnClicked", this.f7484d);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void expand(String str, boolean z) {
    }

    public List<CampaignEx> getCampaigns() {
        return this.w;
    }

    public String getFilePath() {
        return this.q;
    }

    public String getFileURL() {
        return this.p;
    }

    public String getHtml() {
        return this.r;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public CampaignEx getMraidCampaign() {
        return this.b;
    }

    public c getRewardUnitSetting() {
        return this.v;
    }

    public WindVaneWebView getWebView() {
        return this.x;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void init(Context context) {
        WindVaneWebView windVaneWebView = new WindVaneWebView(context);
        this.x = windVaneWebView;
        windVaneWebView.setBackgroundColor(0);
        this.x.setVisibility(0);
        j jVar = new j(null, this.b, this.w);
        this.y = jVar;
        jVar.a(this.c);
        this.x.setObject(this.y);
        this.x.setMraidObject(this);
        this.x.setWebViewListener(new a() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTWebView.1
            @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
            public final void a(WebView webView, int i) {
                super.a(webView, i);
            }

            @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
            public final void a(WebView webView, int i, String str, String str2) {
                super.a(webView, i, str, str2);
                if (MBridgeBTWebView.this.z != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", MBridgeBTWebView.this.f7484d);
                        jSONObject.put("code", BTBaseView.n);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("id", MBridgeBTWebView.this.f7484d);
                        jSONObject2.put("result", 2);
                        jSONObject2.put("error", str);
                        jSONObject.put("data", jSONObject2);
                        g.a().a(MBridgeBTWebView.this.z, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e2) {
                        com.mbridge.msdk.video.bt.a.c.a().a(MBridgeBTWebView.this.z, e2.getMessage());
                        aa.a("RVWindVaneWebView", e2.getMessage());
                    }
                }
            }

            @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
            public final void a(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                super.a(webView, sslErrorHandler, sslError);
                if (MBridgeBTWebView.this.z != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", MBridgeBTWebView.this.f7484d);
                        jSONObject.put("code", BTBaseView.n);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("id", MBridgeBTWebView.this.f7484d);
                        jSONObject2.put("result", 2);
                        jSONObject2.put("error", sslError.toString());
                        jSONObject.put("data", jSONObject2);
                        g.a().a(MBridgeBTWebView.this.z, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e2) {
                        com.mbridge.msdk.video.bt.a.c.a().a(MBridgeBTWebView.this.z, e2.getMessage());
                        aa.a("RVWindVaneWebView", e2.getMessage());
                    }
                }
            }

            @Override // com.mbridge.msdk.mbsignalcommon.b.a, com.mbridge.msdk.mbsignalcommon.windvane.d
            public final void a(WebView webView, String str) {
                super.a(webView, str);
                if (MBridgeBTWebView.this.z != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("id", MBridgeBTWebView.this.f7484d);
                        jSONObject.put("code", BTBaseView.n);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("id", MBridgeBTWebView.this.f7484d);
                        jSONObject2.put("result", 1);
                        jSONObject.put("data", jSONObject2);
                        g.a().a(MBridgeBTWebView.this.z, "onWebviewLoad", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception e2) {
                        com.mbridge.msdk.video.bt.a.c.a().a(MBridgeBTWebView.this.z, e2.getMessage());
                        aa.a("RVWindVaneWebView", e2.getMessage());
                    }
                }
                g.a().a(MBridgeBTWebView.this.x);
            }

            @Override // com.mbridge.msdk.mbsignalcommon.b.a
            public final void a(Object obj) {
                super.a(obj);
                try {
                    String strEncodeToString = "";
                    String strC = MBridgeBTWebView.this.y != null ? MBridgeBTWebView.this.y.c() : "";
                    if (TextUtils.isEmpty(strC)) {
                        aa.a("RVWindVaneWebView", "getEndScreenInfo failed");
                    } else {
                        strEncodeToString = Base64.encodeToString(strC.getBytes(), 2);
                        aa.a("RVWindVaneWebView", "getEndScreenInfo success");
                    }
                    g.a().a(obj, strEncodeToString);
                } catch (Throwable th) {
                    aa.a("RVWindVaneWebView", th.getMessage());
                }
            }
        });
        addView(this.x, new FrameLayout.LayoutParams(-1, -1));
        setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTWebView.2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (MBridgeBTWebView.this.z != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", BTBaseView.n);
                        jSONObject.put("id", MBridgeBTWebView.this.f7484d);
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("x", String.valueOf(view.getX()));
                        jSONObject2.put("y", String.valueOf(view.getY()));
                        jSONObject.put("data", jSONObject2);
                        g.a().a(MBridgeBTWebView.this.z, "onClicked", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
                    } catch (Exception unused) {
                        com.mbridge.msdk.video.bt.a.c.a().a(MBridgeBTWebView.this.z, "onClicked", MBridgeBTWebView.this.f7484d);
                    }
                }
            }
        });
        try {
            ImageView imageView = new ImageView(getContext());
            this.t = imageView;
            imageView.setImageResource(findDrawable("mbridge_reward_close"));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(96, 96);
            layoutParams.gravity = 8388661;
            layoutParams.setMargins(30, 30, 30, 30);
            this.t.setLayoutParams(layoutParams);
            this.t.setVisibility(this.s ? 4 : 8);
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isMraid()) {
                this.t.setVisibility(4);
            }
            this.t.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTWebView.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MBridgeBTWebView.this.close();
                }
            });
            addView(this.t);
        } catch (Throwable th) {
            aa.a(BTBaseView.TAG, th.getMessage());
        }
    }

    public void onBackPressed() {
        if (this.x != null) {
            com.mbridge.msdk.video.bt.a.c.a().a((WebView) this.x, "onSystemBackPressed", this.f7484d);
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (this.x != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                if (configuration.orientation == 2) {
                    jSONObject.put("orientation", o2.h.C);
                } else {
                    jSONObject.put("orientation", o2.h.D);
                }
                jSONObject.put("instanceId", this.f7484d);
                g.a().a((WebView) this.x, "orientation", Base64.encodeToString(jSONObject.toString().getBytes(), 2));
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void onDestory() {
        if (this.u) {
            return;
        }
        this.u = true;
        try {
            if (this.x != null) {
                com.mbridge.msdk.video.bt.a.c.a().a((WebView) this.x, "onSystemDestory", this.f7484d);
            }
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.mbridge.msdk.video.bt.module.MBridgeBTWebView.4
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        if (MBridgeBTWebView.this.x != null) {
                            MBridgeBTWebView.this.x.clearWebView();
                            m.a().a(MBridgeBTWebView.this.b);
                            MBridgeBTWebView.this.x.release();
                        }
                        MBridgeBTWebView.this.p = null;
                        MBridgeBTWebView.this.q = null;
                        MBridgeBTWebView.this.r = null;
                        if (MBridgeBTWebView.this.z != null) {
                            MBridgeBTWebView.this.z = null;
                        }
                    } catch (Throwable th) {
                        aa.a(BTBaseView.TAG, th.getMessage());
                    }
                }
            }, 500L);
            setOnClickListener(null);
            removeAllViews();
        } catch (Throwable th) {
            aa.a(BTBaseView.TAG, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onFinishRedirection(Campaign campaign, String str) {
        ae.b(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onRedirectionFailed(Campaign campaign, String str) {
        ae.b(campaign, this);
    }

    @Override // com.mbridge.msdk.out.BaseTrackingListener
    public void onStartRedirection(Campaign campaign, String str) {
        ae.a(campaign, this);
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void open(String str) {
        try {
            String clickURL = this.b.getClickURL();
            if (!TextUtils.isEmpty(str)) {
                this.b.setClickURL(str);
                try {
                    CampaignEx mraidCampaign = getMraidCampaign();
                    if (mraidCampaign != null) {
                        new p(getContext()).b(mraidCampaign.getRequestId(), mraidCampaign.getRequestIdNotice(), mraidCampaign.getId(), this.c, str, this.b.isBidCampaign());
                    }
                } catch (Throwable th) {
                    aa.a(BTBaseView.TAG, th.getMessage());
                }
            }
            com.mbridge.msdk.click.a aVar = new com.mbridge.msdk.click.a(getContext(), this.c);
            aVar.a(this);
            aVar.a(this.b);
            this.b.setClickURL(clickURL);
        } catch (Throwable th2) {
            aa.d(BTBaseView.TAG, th2.getMessage());
        }
    }

    public void preload() {
        if (!TextUtils.isEmpty(this.p)) {
            this.x.loadUrl(this.p);
        } else if (!TextUtils.isEmpty(this.q)) {
            this.x.loadUrl(this.q);
        } else {
            if (TextUtils.isEmpty(this.r)) {
                return;
            }
            this.x.loadDataWithBaseURL("", this.r, "text/html", C.UTF8_NAME, null);
        }
    }

    public void setCampaigns(List<CampaignEx> list) {
        this.w = list;
    }

    public void setCreateWebView(WebView webView) {
        this.z = webView;
    }

    public void setFilePath(String str) {
        this.q = str;
    }

    public void setFileURL(String str) {
        this.p = str;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        boolean zContains = str.contains("play.google.com");
        setWebviewClickable(!zContains);
        if (zContains) {
            com.mbridge.msdk.mbsignalcommon.base.c cVar = new com.mbridge.msdk.mbsignalcommon.base.c();
            WindVaneWebView windVaneWebView = this.x;
            if (windVaneWebView != null) {
                windVaneWebView.setFilter(cVar);
            }
        }
    }

    public void setHtml(String str) {
        this.r = str;
    }

    @Override // com.mbridge.msdk.video.bt.module.BTBaseView
    public void setRewardUnitSetting(c cVar) {
        this.v = cVar;
    }

    public void setTempTypeForMetrics(int i) {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView != null) {
            windVaneWebView.setTempTypeForMetrics(i);
        }
    }

    public void setWebViewLocalRequestId(String str) {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView != null) {
            windVaneWebView.setLocalRequestId(str);
        }
    }

    public void setWebViewRid(String str) {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView != null) {
            windVaneWebView.setRid(str);
        }
    }

    public void setWebviewClickable(boolean z) {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView != null) {
            windVaneWebView.setClickable(z);
        }
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void unload() {
        close();
    }

    @Override // com.mbridge.msdk.mbsignalcommon.mraid.b
    public void useCustomClose(boolean z) {
        try {
            this.t.setVisibility(z ? 4 : 0);
        } catch (Throwable th) {
            aa.d(BTBaseView.TAG, th.getMessage());
        }
    }

    public boolean webviewGoBack() {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView == null || !windVaneWebView.canGoBack()) {
            return false;
        }
        this.x.goBack();
        return true;
    }

    public boolean webviewGoForward() {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView == null || !windVaneWebView.canGoForward()) {
            return false;
        }
        this.x.goForward();
        return true;
    }

    public void webviewLoad(int i) {
        if (this.y == null) {
            this.y = new j(null, this.b, this.w);
        }
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            this.y.a(campaignEx);
        } else {
            List<CampaignEx> list = this.w;
            if (list != null && list.size() > 0) {
                this.y.a(this.w);
                if (this.w.size() == 1) {
                    this.y.a(this.w.get(0));
                }
            }
        }
        c cVar = this.v;
        if (cVar != null) {
            this.y.a(cVar);
        }
        this.y.a(this.c);
        this.y.c(this.f7484d);
        if (i == 1) {
            this.y.n();
        }
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView != null) {
            windVaneWebView.setObject(this.y);
        }
        CampaignEx campaignEx2 = this.b;
        if (campaignEx2 != null && campaignEx2.isMraid()) {
            this.t.setVisibility(4);
        }
        preload();
    }

    public boolean webviewReload() {
        WindVaneWebView windVaneWebView = this.x;
        if (windVaneWebView == null) {
            return false;
        }
        windVaneWebView.reload();
        return true;
    }
}
