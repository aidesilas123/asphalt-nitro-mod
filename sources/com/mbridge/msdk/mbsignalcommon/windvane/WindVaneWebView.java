package com.mbridge.msdk.mbsignalcommon.windvane;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.mbsignalcommon.base.BaseWebView;
import com.unity3d.ads.adplayer.AndroidWebViewClient;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public class WindVaneWebView extends BaseWebView {
    protected k b;
    protected c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected f f7317d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Object f7318e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f7319f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7320g;
    private d h;
    private String i;
    private String j;
    private int k;
    private boolean l;
    private float m;
    private float n;

    public WindVaneWebView(Context context) {
        super(context);
        this.l = false;
        this.m = 0.0f;
        this.n = 0.0f;
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.l = false;
        this.m = 0.0f;
        this.n = 0.0f;
    }

    public WindVaneWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.l = false;
        this.m = 0.0f;
        this.n = 0.0f;
    }

    @Override // com.mbridge.msdk.mbsignalcommon.base.BaseWebView
    protected final void a() {
        super.a();
        getSettings().setSavePassword(false);
        getSettings().setUserAgentString(getSettings().getUserAgentString() + " WindVane/3.0.2");
        if (this.b == null) {
            this.b = new k(this);
        }
        setWebViewChromeClient(this.b);
        l lVar = new l();
        this.mWebViewClient = lVar;
        setWebViewClient(lVar);
        if (this.c == null) {
            c iVar = new i(this.a);
            this.c = iVar;
            setSignalCommunication(iVar);
        }
        this.f7317d = new f(this.a, this);
    }

    public void clearWebView() {
        if (this.l) {
            return;
        }
        loadUrl(AndroidWebViewClient.BLANK_PAGE);
    }

    public String getCampaignId() {
        return this.f7320g;
    }

    public Object getJsObject(String str) {
        f fVar = this.f7317d;
        if (fVar == null) {
            return null;
        }
        return fVar.a(str);
    }

    public String getLocalRequestId() {
        return this.j;
    }

    public Object getMraidObject() {
        return this.f7319f;
    }

    public Object getObject() {
        return this.f7318e;
    }

    public String getRid() {
        return this.i;
    }

    public c getSignalCommunication() {
        return this.c;
    }

    public d getWebViewListener() {
        return this.h;
    }

    public boolean isDestoryed() {
        return this.l;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null && (bVar.b() instanceof IntentFilter)) {
            String url = getUrl();
            if (!TextUtils.isEmpty(url) && url.contains("https://play.google.com")) {
                if (motionEvent.getAction() == 0) {
                    this.m = motionEvent.getRawX();
                    this.n = motionEvent.getRawY();
                } else {
                    float rawX = motionEvent.getRawX() - this.m;
                    float y = motionEvent.getY() - this.n;
                    if ((rawX >= 0.0f || rawX * (-1.0f) <= 48) && ((rawX <= 0.0f || rawX <= 48) && ((y >= 0.0f || (-1.0f) * y <= 48) && (y <= 0.0f || y <= 48)))) {
                        setClickable(false);
                        return true;
                    }
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void registerWindVanePlugin(Class cls) {
        f fVar = this.f7317d;
        if (fVar == null) {
            return;
        }
        fVar.a(cls.getSimpleName(), cls);
    }

    public void release() {
        try {
            if (!this.l) {
                HashMap map = new HashMap();
                map.put("type", this.k + "");
                if (this.k == 1) {
                    m.a().b("2000135", this.j, map);
                } else {
                    m.a().a("2000135", this.j, map);
                }
            }
        } catch (Exception unused) {
        }
        try {
            setVisibility(8);
            removeAllViews();
            setDownloadListener(null);
            this.f7318e = null;
            if (af.m(getContext()) == 0) {
                this.l = true;
                destroy();
            } else {
                new Handler().postDelayed(new Runnable() { // from class: com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        WindVaneWebView.this.l = true;
                        WindVaneWebView.this.destroy();
                    }
                }, r1 * 1000);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void setApiManagerContext(Context context) {
        f fVar = this.f7317d;
        if (fVar != null) {
            fVar.a(context);
        }
    }

    public void setApiManagerJSFactory(Object obj) {
        f fVar = this.f7317d;
        if (fVar != null) {
            fVar.a(obj);
        }
    }

    public void setCampaignId(String str) {
        this.f7320g = str;
    }

    public void setLocalRequestId(String str) {
        this.j = str;
    }

    public void setMraidObject(Object obj) {
        this.f7319f = obj;
    }

    public void setObject(Object obj) {
        this.f7318e = obj;
    }

    public void setRid(String str) {
        this.i = str;
    }

    public void setSignalCommunication(c cVar) {
        this.c = cVar;
        cVar.a(this);
    }

    public void setTempTypeForMetrics(int i) {
        this.k = i;
    }

    public void setWebViewChromeClient(k kVar) {
        this.b = kVar;
        setWebChromeClient(kVar);
    }

    public void setWebViewListener(d dVar) {
        this.h = dVar;
        k kVar = this.b;
        if (kVar != null) {
            kVar.a(dVar);
        }
        com.mbridge.msdk.mbsignalcommon.base.b bVar = this.mWebViewClient;
        if (bVar != null) {
            bVar.a(dVar);
        }
    }

    public void setWebViewTransparent() {
        super.setTransparent();
    }
}
