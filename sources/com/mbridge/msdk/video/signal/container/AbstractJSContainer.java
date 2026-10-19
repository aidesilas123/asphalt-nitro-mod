package com.mbridge.msdk.video.signal.container;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.widget.FrameLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.mbsignalcommon.windvane.WindVaneWebView;
import com.mbridge.msdk.mbsignalcommon.windvane.g;
import com.mbridge.msdk.video.signal.a.j;
import com.mbridge.msdk.video.signal.b;
import com.mbridge.msdk.video.signal.e;
import com.mbridge.msdk.video.signal.f;
import com.mbridge.msdk.video.signal.factory.IJSFactory;
import com.mbridge.msdk.video.signal.factory.a;
import com.mbridge.msdk.video.signal.h;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.videocommon.a;
import com.mbridge.msdk.videocommon.d.c;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AbstractJSContainer extends FrameLayout implements IJSFactory {
    private int a;
    private int b;
    protected Activity j;
    protected String k;
    protected String l;
    protected c m;
    protected String n;
    protected com.mbridge.msdk.videocommon.b.c o;
    protected String p;
    protected int q;
    protected boolean r;
    protected boolean s;
    protected int t;
    protected int u;
    protected int v;
    protected boolean w;
    protected IJSFactory x;

    public AbstractJSContainer(Context context) {
        super(context);
        this.a = 0;
        this.b = 1;
        this.q = 2;
        this.r = false;
        this.s = false;
        this.w = false;
        this.x = new a();
    }

    public AbstractJSContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = 1;
        this.q = 2;
        this.r = false;
        this.s = false;
        this.w = false;
        this.x = new a();
    }

    private String a(int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("code", i);
            String string = jSONObject.toString();
            return !TextUtils.isEmpty(string) ? Base64.encodeToString(string.getBytes(), 2) : "";
        } catch (Throwable unused) {
            aa.d("AbstractJSContainer", "code to string is error");
            return "";
        }
    }

    private boolean b(int i) {
        boolean z = false;
        try {
            if (i != 1) {
                if (i != 2) {
                    return false;
                }
                if (Build.VERSION.SDK_INT >= 18) {
                    this.j.setRequestedOrientation(11);
                } else {
                    this.j.setRequestedOrientation(0);
                }
            } else if (Build.VERSION.SDK_INT >= 18) {
                this.j.setRequestedOrientation(12);
            } else {
                this.j.setRequestedOrientation(1);
            }
            z = true;
            return true;
        } catch (Throwable th) {
            aa.b("AbstractJSContainer", th.getMessage(), th);
            return z;
        }
    }

    protected final void a(c cVar, CampaignEx campaignEx) {
        CampaignEx.c rewardTemplateMode;
        if (c(campaignEx) == 1) {
            return;
        }
        boolean zB = false;
        if (campaignEx != null && (rewardTemplateMode = campaignEx.getRewardTemplateMode()) != null) {
            zB = b(rewardTemplateMode.c());
        }
        if (zB || cVar == null) {
            return;
        }
        b(this.m.c());
    }

    protected final void a(Object obj) {
        g.a().a(obj, a(this.a));
    }

    protected final void a(Object obj, String str) {
        g.a().b(obj, Base64.encodeToString(str.getBytes(), 2));
    }

    protected void a(String str) {
        aa.d("AbstractJSContainer", str);
        Activity activity = this.j;
        if (activity != null) {
            activity.finish();
        }
    }

    protected final j b(CampaignEx campaignEx) {
        if (campaignEx == null) {
            return null;
        }
        a.C0437a c0437aA = com.mbridge.msdk.videocommon.a.a(this.r ? 287 : 94, campaignEx);
        if (c0437aA != null && c0437aA.c()) {
            WindVaneWebView windVaneWebViewA = c0437aA.a();
            if (windVaneWebViewA.getObject() instanceof j) {
                return (j) windVaneWebViewA.getObject();
            }
        }
        return null;
    }

    protected final String b() {
        c cVar;
        return (!TextUtils.isEmpty(this.l) || (cVar = this.m) == null || TextUtils.isEmpty(cVar.A())) ? this.l : this.m.A();
    }

    protected final int c(CampaignEx campaignEx) {
        j jVarB = b(campaignEx);
        if (jVarB != null) {
            return jVarB.l();
        }
        return 0;
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.a getActivityProxy() {
        return this.x.getActivityProxy();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public h getIJSRewardVideoV1() {
        return this.x.getIJSRewardVideoV1();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public b getJSBTModule() {
        return this.x.getJSBTModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public com.mbridge.msdk.video.signal.c getJSCommon() {
        return this.x.getJSCommon();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public e getJSContainerModule() {
        return this.x.getJSContainerModule();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public f getJSNotifyProxy() {
        return this.x.getJSNotifyProxy();
    }

    @Override // com.mbridge.msdk.video.signal.factory.IJSFactory
    public i getJSVideoModule() {
        return this.x.getJSVideoModule();
    }

    public String getPlacementId() {
        return this.l;
    }

    public String getUnitId() {
        return this.k;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        if (getJSCommon().b()) {
            getActivityProxy().a(configuration);
        }
    }

    public void onDestroy() {
        if (getJSCommon().b()) {
            getActivityProxy().f();
        }
    }

    public void onPause() {
        if (getJSCommon().b()) {
            getActivityProxy().a();
        }
        getActivityProxy().a(1);
    }

    public void onRestart() {
        if (getJSCommon().b()) {
            getActivityProxy().e();
        }
        getActivityProxy().a(4);
    }

    public void onResume() {
        if (com.mbridge.msdk.foundation.c.b.c) {
            return;
        }
        if (getJSCommon().b()) {
            getActivityProxy().b();
        }
        getActivityProxy().a(0);
    }

    public void onStart() {
        if (getJSCommon().b()) {
            getActivityProxy().d();
        }
        getActivityProxy().a(2);
    }

    public void onStop() {
        if (getJSCommon().b()) {
            getActivityProxy().c();
        }
        getActivityProxy().a(3);
    }

    public void registerJsFactory(IJSFactory iJSFactory) {
        this.x = iJSFactory;
    }

    public void setActivity(Activity activity) {
        this.j = activity;
    }

    public void setBidCampaign(boolean z) {
        this.s = z;
    }

    public void setBigOffer(boolean z) {
        this.w = z;
    }

    public void setIV(boolean z) {
        this.r = z;
    }

    public void setIVRewardEnable(int i, int i2, int i3) {
        this.t = i;
        this.u = i2;
        this.v = i3;
    }

    public void setMute(int i) {
        this.q = i;
    }

    public void setPlacementId(String str) {
        this.l = str;
    }

    public void setReward(com.mbridge.msdk.videocommon.b.c cVar) {
        this.o = cVar;
    }

    public void setRewardId(String str) {
        this.p = str;
    }

    public void setRewardUnitSetting(c cVar) {
        this.m = cVar;
    }

    public void setUnitId(String str) {
        this.k = str;
    }

    public void setUserId(String str) {
        this.n = str;
    }
}
