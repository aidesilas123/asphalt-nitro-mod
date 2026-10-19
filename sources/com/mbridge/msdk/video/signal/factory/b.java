package com.mbridge.msdk.video.signal.factory;

import android.app.Activity;
import android.webkit.WebView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.video.bt.module.MBridgeBTContainer;
import com.mbridge.msdk.video.module.MBridgeContainerView;
import com.mbridge.msdk.video.module.MBridgeVideoView;
import com.mbridge.msdk.video.signal.a.h;
import com.mbridge.msdk.video.signal.a.i;
import com.mbridge.msdk.video.signal.a.j;
import com.mbridge.msdk.video.signal.a.k;
import com.mbridge.msdk.video.signal.a.l;
import com.mbridge.msdk.video.signal.a.m;
import com.mbridge.msdk.video.signal.a.n;
import com.mbridge.msdk.video.signal.c;
import com.mbridge.msdk.video.signal.e;
import com.mbridge.msdk.video.signal.f;
import java.util.List;

/* JADX INFO: compiled from: JSFactory.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b extends a {
    private Activity h;
    private WebView i;
    private MBridgeVideoView j;
    private MBridgeContainerView k;
    private CampaignEx l;
    private MBridgeBTContainer m;
    private c.a n;
    private String o;
    private List<CampaignEx> p;

    public b(Activity activity) {
        this.h = activity;
    }

    public b(Activity activity, WebView webView, MBridgeVideoView mBridgeVideoView, MBridgeContainerView mBridgeContainerView, CampaignEx campaignEx, c.a aVar) {
        this.h = activity;
        this.i = webView;
        this.j = mBridgeVideoView;
        this.k = mBridgeContainerView;
        this.l = campaignEx;
        this.n = aVar;
        this.o = mBridgeVideoView.getUnitId();
    }

    public b(Activity activity, MBridgeBTContainer mBridgeBTContainer, WebView webView) {
        this.h = activity;
        this.m = mBridgeBTContainer;
        this.i = webView;
    }

    public final void a(j jVar) {
        this.b = jVar;
    }

    public final void a(List<CampaignEx> list) {
        this.p = list;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final com.mbridge.msdk.video.signal.a getActivityProxy() {
        WebView webView = this.i;
        if (webView == null) {
            return super.getActivityProxy();
        }
        if (this.a == null) {
            this.a = new h(webView);
        }
        return this.a;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final com.mbridge.msdk.video.signal.h getIJSRewardVideoV1() {
        Activity activity;
        MBridgeContainerView mBridgeContainerView = this.k;
        if (mBridgeContainerView == null || (activity = this.h) == null) {
            return super.getIJSRewardVideoV1();
        }
        if (this.f7578f == null) {
            this.f7578f = new m(activity, mBridgeContainerView);
        }
        return this.f7578f;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final com.mbridge.msdk.video.signal.b getJSBTModule() {
        if (this.h == null || this.m == null) {
            return super.getJSBTModule();
        }
        if (this.f7579g == null) {
            this.f7579g = new i(this.h, this.m);
        }
        return this.f7579g;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final c getJSCommon() {
        CampaignEx campaignEx;
        List<CampaignEx> list;
        Activity activity = this.h;
        if (activity == null || (campaignEx = this.l) == null) {
            return super.getJSCommon();
        }
        if (this.b == null) {
            this.b = new j(activity, campaignEx);
        }
        if (this.l.getDynamicTempCode() == 5 && (list = this.p) != null) {
            c cVar = this.b;
            if (cVar instanceof j) {
                ((j) cVar).a(list);
            }
        }
        this.b.a(this.h);
        this.b.a(this.o);
        this.b.a(this.n);
        return this.b;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final e getJSContainerModule() {
        MBridgeContainerView mBridgeContainerView = this.k;
        if (mBridgeContainerView == null) {
            return super.getJSContainerModule();
        }
        if (this.f7577e == null) {
            this.f7577e = new k(mBridgeContainerView);
        }
        return this.f7577e;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final f getJSNotifyProxy() {
        WebView webView = this.i;
        if (webView == null) {
            return super.getJSNotifyProxy();
        }
        if (this.f7576d == null) {
            this.f7576d = new l(webView);
        }
        return this.f7576d;
    }

    @Override // com.mbridge.msdk.video.signal.factory.a, com.mbridge.msdk.video.signal.factory.IJSFactory
    public final com.mbridge.msdk.video.signal.i getJSVideoModule() {
        MBridgeVideoView mBridgeVideoView = this.j;
        if (mBridgeVideoView == null) {
            return super.getJSVideoModule();
        }
        if (this.c == null) {
            this.c = new n(mBridgeVideoView);
        }
        return this.c;
    }
}
