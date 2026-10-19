package com.fyber.inneractive.sdk.flow;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.activities.InneractiveInternalBrowserActivity;
import com.fyber.inneractive.sdk.click.f;
import com.fyber.inneractive.sdk.click.l;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.external.ImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveAdRenderer;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdViewEventsListenerWithImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListenerWithImpressionData;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.external.InneractiveUnitController.EventsListener;
import com.fyber.inneractive.sdk.external.OnGlobalImpressionDataListener;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.network.j0;
import com.fyber.inneractive.sdk.network.p0;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.web.t;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r<AdContent extends q, EventsListener extends InneractiveUnitController.EventsListener> implements InneractiveAdRenderer, InneractiveInternalBrowserActivity.InternalBrowserListener, f.a, t.g {
    public InneractiveAdSpot a;
    public AdContent b;
    public EventsListener c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f2022d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2023e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f2024f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2025g = true;
    public Runnable h;
    public com.fyber.inneractive.sdk.click.l i;
    public l.b j;
    public View k;

    public class a implements l.b {
        public final /* synthetic */ k0 a;
        public final /* synthetic */ com.fyber.inneractive.sdk.util.e b;

        public a(k0 k0Var, com.fyber.inneractive.sdk.util.e eVar) {
            this.a = k0Var;
            this.b = eVar;
        }

        @Override // com.fyber.inneractive.sdk.click.l.b
        public void a(com.fyber.inneractive.sdk.click.b bVar) {
            r rVar = r.this;
            rVar.getClass();
            IAlog.a("%s super click result: %s", IAlog.a(rVar), bVar);
            r rVar2 = r.this;
            if (rVar2.i == null) {
                IAlog.a("%s click handler is null. Probably cancelled", IAlog.a(rVar2));
                return;
            }
            rVar2.i = null;
            rVar2.j = null;
            rVar2.H();
            if (bVar != null) {
                r rVar3 = r.this;
                k0 k0Var = this.a;
                com.fyber.inneractive.sdk.util.e eVar = this.b;
                rVar3.getClass();
                l.d dVar = bVar.a;
                if (dVar == l.d.OPEN_IN_EXTERNAL_APPLICATION || dVar == l.d.OPEN_GOOGLE_STORE) {
                    IAlog.a("InneractiveAdRendererImpl: handleOpenResult - opened in external application", new Object[0]);
                    List<com.fyber.inneractive.sdk.click.i> list = bVar.f1925f;
                    com.fyber.inneractive.sdk.click.i iVar = list.get(list.size() - 1);
                    l.d dVar2 = iVar.c;
                    if (dVar2 == l.d.OPENED_IN_EXTERNAL_BROWSER) {
                        rVar3.a(iVar.a, dVar2);
                    }
                    if (rVar3.c != null) {
                        rVar3.G();
                    }
                } else if (dVar == l.d.OPENED_IN_INTERNAL_BROWSER) {
                    IAlog.a("InneractiveAdRendererImpl: handleOpenResult - opened in internal browser", new Object[0]);
                    rVar3.f2022d = true;
                    InneractiveInternalBrowserActivity.setInternalBrowserListener(rVar3);
                } else if (dVar == l.d.OPENED_USING_CHROME_NAVIGATE || dVar == l.d.OPENED_IN_EXTERNAL_BROWSER) {
                    IAlog.a("InneractiveAdRendererImpl: handleOpenResult - opened in external browser", new Object[0]);
                    rVar3.a(bVar.f1923d, bVar.a);
                    if (rVar3.c != null) {
                        rVar3.G();
                    }
                }
                if (rVar3.q() == com.fyber.inneractive.sdk.ignite.k.NONE || !(TextUtils.isEmpty(bVar.c) || bVar.c.equals("IgniteGooglePlay"))) {
                    rVar3.b(bVar, k0Var, eVar);
                }
            }
        }
    }

    public int A() {
        return -1;
    }

    public boolean B() {
        com.fyber.inneractive.sdk.config.global.s sVar;
        AdContent adcontent = this.b;
        return (adcontent == null || (sVar = adcontent.c) == null || sVar.a(com.fyber.inneractive.sdk.config.global.features.b.class) == null || ((ArrayList) ((com.fyber.inneractive.sdk.config.global.features.b) this.b.c.a(com.fyber.inneractive.sdk.config.global.features.b.class)).c()).size() <= 0) ? false : true;
    }

    public boolean C() {
        AdContent adcontent = this.b;
        if (adcontent != null) {
            return adcontent.e();
        }
        return true;
    }

    public void D() {
        com.fyber.inneractive.sdk.response.e eVarD;
        if (this.c != null) {
            IAlog.a("%sCalling external interface onAdClicked", IAlog.a(this));
            this.c.onAdClicked(this.a);
        }
        AdContent adcontent = this.b;
        if (adcontent == null || (eVarD = adcontent.d()) == null) {
            return;
        }
        IAConfigManager.M.x.a(eVarD.n, "LAST_CLICKED", "1");
    }

    public void E() {
        com.fyber.inneractive.sdk.response.e eVarD;
        OnGlobalImpressionDataListener onGlobalImpressionDataListener;
        if (this.f2023e || this.c == null) {
            return;
        }
        IAlog.a("%sCalling external interface onAdImpression", IAlog.a(this));
        this.c.onAdImpression(this.a);
        AdContent adcontent = this.b;
        if (adcontent != null && (eVarD = adcontent.d()) != null) {
            IAConfigManager iAConfigManager = IAConfigManager.M;
            com.fyber.inneractive.sdk.config.f0 f0Var = iAConfigManager.x;
            if (f0Var != null) {
                UnitDisplayType unitDisplayType = eVarD.n;
                ImpressionData impressionData = eVarD.r;
                f0Var.a(unitDisplayType, "LAST_DOMAIN_SHOWED", impressionData != null ? impressionData.getAdvertiserDomain() : null);
                f0Var.a(unitDisplayType, "LAST_APP_BUNDLE_ID", eVarD.y);
                if (this.b.isVideoAd()) {
                    f0Var.a(unitDisplayType, "LAST_VAST_SKIPED");
                    f0Var.a(unitDisplayType, "LAST_VAST_CLICKED_TYPE");
                }
                f0Var.a(unitDisplayType, "LAST_CLICKED");
            }
            com.fyber.inneractive.sdk.util.e0 e0Var = iAConfigManager.A;
            com.fyber.inneractive.sdk.config.b0 b0Var = this.b.f2019d;
            ImpressionData impressionData2 = eVarD.r;
            e0Var.getClass();
            if (b0Var != null && (onGlobalImpressionDataListener = e0Var.a) != null) {
                com.fyber.inneractive.sdk.config.a0 a0Var = (com.fyber.inneractive.sdk.config.a0) b0Var;
                onGlobalImpressionDataListener.onImpression(a0Var.b, a0Var.a, impressionData2);
            }
            EventsListener eventslistener = this.c;
            if (eventslistener instanceof InneractiveFullscreenAdEventsListenerWithImpressionData) {
                ((InneractiveFullscreenAdEventsListenerWithImpressionData) eventslistener).onAdImpression(this.a, eVarD.r);
            } else if (eventslistener instanceof InneractiveAdViewEventsListenerWithImpressionData) {
                ((InneractiveAdViewEventsListenerWithImpressionData) eventslistener).onAdImpression(this.a, eVarD.r);
            }
        }
        this.f2023e = true;
    }

    public void F() {
        if (this.c != null) {
            IAlog.a("%sCalling external interface onAdWillCloseInternalBrowser", IAlog.a(this));
            this.c.onAdWillCloseInternalBrowser(this.a);
        }
    }

    public void G() {
        if (this.c != null) {
            IAlog.a("%sCalling external interface onAdWillOpenExternalApp", IAlog.a(this));
            this.c.onAdWillOpenExternalApp(this.a);
        }
        this.f2024f = false;
    }

    public void H() {
        View viewY = y();
        if (viewY == null || this.k == null || viewY.getParent() == null || !(viewY.getParent() instanceof ViewGroup)) {
            return;
        }
        viewY.getLayoutParams();
        ((ViewGroup) viewY.getParent()).removeView(this.k);
        c(this.k);
        this.k = null;
    }

    public void I() {
        AdContent adcontent = this.b;
        if (adcontent == null || adcontent.d() == null) {
            return;
        }
        String str = this.b.d().o;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        IAlog.a(this);
        int i = IAlog.a;
        IAlog.a(1, null, "AD_REWARDED_COMPLETION", new Object[0]);
        j0.b(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0164  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.fyber.inneractive.sdk.util.x.a a(android.content.Context r17, java.lang.String r18, com.fyber.inneractive.sdk.util.k0 r19, com.fyber.inneractive.sdk.util.e r20) {
        /*
            Method dump skipped, instruction units count: 417
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.flow.r.a(android.content.Context, java.lang.String, com.fyber.inneractive.sdk.util.k0, com.fyber.inneractive.sdk.util.e):com.fyber.inneractive.sdk.util.x$a");
    }

    public void a(com.fyber.inneractive.sdk.cache.session.enums.a aVar, com.fyber.inneractive.sdk.cache.session.enums.b bVar) {
        com.fyber.inneractive.sdk.cache.session.d dVar = IAConfigManager.M.x.a;
        if (dVar != null) {
            com.fyber.inneractive.sdk.util.m.a(new com.fyber.inneractive.sdk.cache.session.c(dVar, aVar, bVar));
        }
    }

    @Override // com.fyber.inneractive.sdk.click.f.a
    public void a(com.fyber.inneractive.sdk.click.b bVar, k0 k0Var, com.fyber.inneractive.sdk.util.e eVar) {
        b(bVar, k0Var, eVar);
    }

    public void a(InneractiveUnitController.AdDisplayError adDisplayError) {
        String simpleName = adDisplayError.getClass().getSimpleName();
        String message = adDisplayError.getMessage();
        AdContent adcontent = this.b;
        com.fyber.inneractive.sdk.network.t.a(simpleName, message, adcontent != null ? adcontent.a : null, adcontent != null ? adcontent.d() : null);
        if (this.c != null) {
            IAlog.a("%sCalling external interface onAdEnteredErrorState: %s", IAlog.a(this), adDisplayError.getMessage());
            this.c.onAdEnteredErrorState(this.a, adDisplayError);
        }
    }

    public void a(com.fyber.inneractive.sdk.response.e eVar) {
        String str = eVar.l;
        if (str == null || str.trim().length() <= 0) {
            return;
        }
        int i = IAlog.a;
        IAlog.a(1, null, "AD_CLICKED", new Object[0]);
        j0.b(str);
    }

    public void a(String str) {
        if (this.f2024f) {
            return;
        }
        this.f2024f = true;
        com.fyber.inneractive.sdk.network.r rVar = com.fyber.inneractive.sdk.network.r.VAST_EVENT_COMPANION_CLICKED;
        AdContent adcontent = this.b;
        InneractiveAdRequest inneractiveAdRequest = adcontent != null ? adcontent.a : null;
        com.fyber.inneractive.sdk.response.e eVarD = adcontent != null ? adcontent.d() : null;
        AdContent adcontent2 = this.b;
        s.a aVar = new s.a(rVar, inneractiveAdRequest, eVarD, adcontent2 != null ? adcontent2.c.c() : null);
        JSONObject jSONObject = new JSONObject();
        if (str == null) {
            str = "na";
        }
        try {
            jSONObject.put("mime", str);
        } catch (Exception unused) {
            IAlog.e("Got exception adding param to json object: %s, %s", "mime", str);
        }
        aVar.f2120f.put(jSONObject);
        aVar.a((String) null);
    }

    public final void a(String str, l.d dVar) {
        com.fyber.inneractive.sdk.response.e eVarD;
        JSONArray jSONArrayC;
        InneractiveAdRequest inneractiveAdRequest;
        AdContent adcontent = this.b;
        if (adcontent != null) {
            eVarD = adcontent.d();
            AdContent adcontent2 = this.b;
            inneractiveAdRequest = adcontent2.a;
            com.fyber.inneractive.sdk.config.global.s sVar = adcontent2.c;
            jSONArrayC = sVar != null ? sVar.c() : null;
        } else {
            eVarD = null;
            jSONArrayC = null;
            inneractiveAdRequest = null;
        }
        s.a aVarA = new s.a(com.fyber.inneractive.sdk.network.r.EXTERNAL_BROWSER_OPENED, inneractiveAdRequest, eVarD, jSONArrayC).a("url", str);
        Object[] objArr = new Object[2];
        objArr[0] = "fallback";
        objArr[1] = (dVar == l.d.OPENED_USING_CHROME_NAVIGATE || dVar == l.d.OPENED_IN_EXTERNAL_BROWSER) ? "chrome" : "na";
        aVarA.a(objArr).a((String) null);
    }

    public void b(View view) {
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void b(com.fyber.inneractive.sdk.click.b r9, com.fyber.inneractive.sdk.util.k0 r10, com.fyber.inneractive.sdk.util.e r11) {
        /*
            Method dump skipped, instruction units count: 455
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.flow.r.b(com.fyber.inneractive.sdk.click.b, com.fyber.inneractive.sdk.util.k0, com.fyber.inneractive.sdk.util.e):void");
    }

    public void b(com.fyber.inneractive.sdk.response.e eVar) {
        String str = eVar.k;
        if (str == null || str.trim().length() <= 0) {
            return;
        }
        IAlog.a(this);
        int i = IAlog.a;
        IAlog.a(1, null, "AD_IMPRESSION", new Object[0]);
        j0.b(str);
    }

    public void c(View view) {
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public boolean canRefreshAd() {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        if (this.f2022d) {
            InneractiveInternalBrowserActivity.setInternalBrowserListener(null);
            this.f2022d = false;
        }
        Runnable runnable = this.h;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
            this.h = null;
        }
        this.b = null;
        this.c = null;
        this.a = null;
        if (this.i != null) {
            H();
            p0 p0Var = this.i.f1932g;
            if (p0Var != null) {
                p0Var.a = true;
            }
            this.i = null;
            this.j = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void initialize(InneractiveAdSpot inneractiveAdSpot) {
        this.a = inneractiveAdSpot;
        this.b = (AdContent) inneractiveAdSpot.getAdContent();
        this.c = (EventsListener) inneractiveAdSpot.getSelectedUnitController().getEventsListener();
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveInternalBrowserActivity.InternalBrowserListener
    public void onApplicationInBackground() {
        G();
        this.f2024f = false;
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveInternalBrowserActivity.InternalBrowserListener
    public void onInternalBrowserDismissed() {
        IAlog.a("onInternalBrowserDismissed callback called", new Object[0]);
        if (this.f2022d) {
            this.f2022d = false;
            InneractiveInternalBrowserActivity.setInternalBrowserListener(null);
        }
        F();
        this.f2024f = false;
    }

    public com.fyber.inneractive.sdk.ignite.k q() {
        AdContent adcontent = this.b;
        return (adcontent == null || !adcontent.f() || this.b.d() == null) ? com.fyber.inneractive.sdk.ignite.k.NONE : this.b.d().F;
    }

    public void x() {
        View viewY = y();
        if (viewY == null || viewY.getParent() == null || !(viewY.getParent() instanceof ViewGroup) || this.k != null) {
            return;
        }
        View viewInflate = ViewGroup.inflate(viewY.getContext(), R.layout.ia_click_overlay, null);
        this.k = viewInflate;
        if (viewInflate != null) {
            ((ViewGroup) viewY.getParent()).addView(this.k, viewY.getLayoutParams());
            b(this.k);
        }
    }

    public abstract View y();

    public int z() {
        return -1;
    }
}
