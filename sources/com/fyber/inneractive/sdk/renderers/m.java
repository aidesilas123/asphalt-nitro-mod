package com.fyber.inneractive.sdk.renderers;

import android.content.Context;
import android.os.CountDownTimer;
import android.view.View;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.activities.InneractiveRichMediaVideoPlayerActivityCore;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.global.features.q;
import com.fyber.inneractive.sdk.config.global.features.r;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenVideoContentController;
import com.fyber.inneractive.sdk.external.WebViewRendererProcessHasGoneError;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.w;
import com.fyber.inneractive.sdk.flow.z;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.model.vast.t;
import com.fyber.inneractive.sdk.network.u;
import com.fyber.inneractive.sdk.player.c;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.lang.ref.WeakReference;

/* JADX WARN: Unexpected interfaces in signature: [com.fyber.inneractive.sdk.player.controller.w] */
/* JADX INFO: loaded from: classes2.dex */
public class m extends z<f0, InneractiveFullscreenAdEventsListener> implements com.fyber.inneractive.sdk.interfaces.c {
    public WeakReference<InneractiveFullscreenVideoContentController> A;
    public c.b E;
    public n G;
    public c.a x;
    public com.fyber.inneractive.sdk.player.ui.h y;
    public com.fyber.inneractive.sdk.player.controller.b z;
    public boolean B = false;
    public boolean C = false;
    public boolean D = false;
    public UnitDisplayType F = UnitDisplayType.INTERSTITIAL;
    public boolean H = false;
    public final c.InterfaceC0169c I = new a();
    public final RelativeLayout.LayoutParams J = new RelativeLayout.LayoutParams(-1, -1);
    public boolean K = false;
    public boolean L = false;

    public class a implements c.InterfaceC0169c {
        public a() {
        }

        @Override // com.fyber.inneractive.sdk.player.c.InterfaceC0169c
        public void a(com.fyber.inneractive.sdk.player.c cVar) {
            m.this.z.d(false);
            m.this.z.h();
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void H() {
        View view = this.k;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public boolean J() {
        return this.K;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public int L() {
        s sVar;
        Integer numB;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (sVar = ((f0) adcontent).c) == null || (numB = ((q) sVar.a(q.class)).b("close_clickable_area_dp")) == null) {
            return -1;
        }
        return numB.intValue();
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public int M() {
        s sVar;
        Integer numB;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (sVar = ((f0) adcontent).c) == null || (numB = ((q) sVar.a(q.class)).b("close_visible_size_dp")) == null) {
            return -1;
        }
        return numB.intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00c3  */
    @Override // com.fyber.inneractive.sdk.flow.z
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public long N() {
        /*
            Method dump skipped, instruction units count: 261
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.renderers.m.N():long");
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public boolean O() {
        com.fyber.inneractive.sdk.player.ui.h hVar = this.y;
        return hVar != null && ((com.fyber.inneractive.sdk.player.ui.l) hVar).f();
    }

    public final void R() {
        c.a aVar = this.x;
        if (aVar != null) {
            aVar.destroy();
        }
    }

    public void S() {
        if (this.C || this.c == 0) {
            return;
        }
        boolean z = true;
        this.C = true;
        c.a aVar = this.x;
        if (aVar == null || (!aVar.wasDismissedByUser() && !IAConfigManager.M.u.b.a(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD).a("dsos", false))) {
            z = false;
        }
        if (z) {
            a(t.EVENT_CLOSE);
            a(t.EVENT_CLOSE_LINEAR);
        }
        ((InneractiveFullscreenAdEventsListener) this.c).onAdDismissed(this.a);
    }

    public final void T() {
        b0 b0Var;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (b0Var = ((f0) adcontent).f2019d) == null || ((a0) b0Var).c == null) {
            return;
        }
        IAConfigManager.M.x.a(((a0) b0Var).c.b == UnitDisplayType.REWARDED ? com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO : com.fyber.inneractive.sdk.cache.session.enums.b.INTERSTITIAL_VIDEO, com.fyber.inneractive.sdk.cache.session.enums.a.CLICK);
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public long a(long j) {
        if (this.u) {
            return j;
        }
        com.fyber.inneractive.sdk.config.i iVar = IAConfigManager.M.u.b;
        long j2 = 12;
        String string = Long.toString(12L);
        if (iVar.a.containsKey("vast_endcard_x_fallback_delay")) {
            string = iVar.a.get("vast_endcard_x_fallback_delay");
        }
        try {
            j2 = Long.parseLong(string);
        } catch (Throwable unused) {
        }
        return j2 * 1000;
    }

    public x.a a(k0 k0Var, com.fyber.inneractive.sdk.util.e eVar) {
        T();
        Context context = this.y.getContext() == null ? com.fyber.inneractive.sdk.util.l.a : this.y.getContext();
        AdContent adcontent = this.b;
        return a(context, adcontent != 0 ? ((f0) adcontent).k() : null, k0Var, eVar);
    }

    public x.a a(String str, k0 k0Var, b.a aVar, boolean z) {
        T t;
        com.fyber.inneractive.sdk.model.vast.i iVar;
        if (this.F == UnitDisplayType.INTERSTITIAL) {
            this.H = true;
        }
        AdContent adcontent = this.b;
        if (adcontent != 0 && (t = ((f0) adcontent).b) != 0 && t != 0) {
            com.fyber.inneractive.sdk.model.vast.b bVar = ((com.fyber.inneractive.sdk.response.g) t).K;
            T();
            if (bVar != null) {
                com.fyber.inneractive.sdk.model.vast.c cVar = bVar.h;
                a((cVar == null || (iVar = cVar.b) == null || z) ? null : iVar.toString());
                com.fyber.inneractive.sdk.util.e eVar = z ? com.fyber.inneractive.sdk.util.e.DEFAULT_ENDCARD : com.fyber.inneractive.sdk.util.e.VAST_ENDCARD;
                com.fyber.inneractive.sdk.player.controller.b bVar2 = this.z;
                com.fyber.inneractive.sdk.flow.vast.e eVarC = bVar2 != null ? bVar2.c() : null;
                if (aVar != null) {
                    eVar = com.fyber.inneractive.sdk.util.e.FMP_ENDCARD;
                    eVar.a(aVar.a);
                    eVar.a(aVar.b);
                } else if (eVarC != null && eVarC.c) {
                    eVar = com.fyber.inneractive.sdk.util.e.FMP_ENDCARD;
                    eVar.a(eVarC.f2033e);
                    eVar.a(eVarC.f2032d);
                }
                x.a aVarA = a(this.y.getContext() == null ? com.fyber.inneractive.sdk.util.l.a : this.y.getContext(), str, k0Var, eVar);
                if (cVar != null && aVarA.a != x.d.FAILED) {
                    f0 f0Var = (f0) this.b;
                    String[] strArr = {t.EVENT_CLICK.toString()};
                    com.fyber.inneractive.sdk.player.h hVar = f0Var.i;
                    if (hVar != null) {
                        hVar.a("EVENT_TRACKING", strArr);
                    }
                }
                return aVarA;
            }
        }
        return new x.a(x.d.FAILED, new Exception("Internal SDK Error"), "null");
    }

    public void a(View view, String str) {
        if (view == null || view.getContext() == null) {
            return;
        }
        InneractiveRichMediaVideoPlayerActivityCore.startRichMediaIntent(view.getContext(), str);
        D();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0098  */
    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(com.fyber.inneractive.sdk.interfaces.c.a r5, android.app.Activity r6) throws com.fyber.inneractive.sdk.external.InneractiveUnitController.AdDisplayError {
        /*
            Method dump skipped, instruction units count: 280
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.renderers.m.a(com.fyber.inneractive.sdk.interfaces.c$a, android.app.Activity):void");
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void a(c.b bVar) {
        this.E = bVar;
    }

    public void a(t tVar) {
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            f0 f0Var = (f0) adcontent;
            if (f0Var.i != null) {
                String[] strArr = {tVar.e()};
                com.fyber.inneractive.sdk.player.h hVar = f0Var.i;
                if (hVar != null) {
                    hVar.a("EVENT_TRACKING", strArr);
                }
            }
        }
    }

    public void a(String str, String str2) {
        IAlog.a(IAlog.a(this) + "full screen video ad renderer callback: onSuspiciousNoUserWebActionDetected", new Object[0]);
        c.a aVar = this.x;
        if (aVar == null || aVar.getLayout() == null || this.x.getLayout().getContext() == null) {
            return;
        }
        if (this.L) {
            IAlog.a(IAlog.a(this) + "redirect already reported for this ad", new Object[0]);
            return;
        }
        u.a(this.x.getLayout().getContext(), str, str2, this.b);
        this.L = true;
        IAlog.a(IAlog.a(this) + "reporting auto redirect", new Object[0]);
    }

    public void a(boolean z) {
        com.fyber.inneractive.sdk.player.h hVar;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (hVar = ((f0) adcontent).i) == null) {
            return;
        }
        hVar.a("TRACKING_COMPLETED", new String[0]);
        K();
        String[] strArr = new String[0];
        com.fyber.inneractive.sdk.player.h hVar2 = ((f0) this.b).i;
        if (hVar2 != null) {
            hVar2.a("TRACKING_COMPLETED", strArr);
        }
        if (IAConfigManager.M.u.b.a(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD).a("dsos", false) && z) {
            R();
        }
        f(z);
    }

    public void a(boolean z, Orientation orientation) {
        c.a aVar = this.x;
        if (aVar != null) {
            aVar.setActivityOrientation(z, orientation);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public boolean b(f0 f0Var) {
        T t;
        com.fyber.inneractive.sdk.model.vast.b bVar;
        com.fyber.inneractive.sdk.model.vast.c cVar;
        IAConfigManager iAConfigManager = IAConfigManager.M;
        com.fyber.inneractive.sdk.config.i iVar = iAConfigManager.u.b;
        iVar.getClass();
        String str = iAConfigManager.f1933d;
        if ((iVar.b.containsKey(str) ? iVar.b.get(str) : new com.fyber.inneractive.sdk.config.h()).a.containsKey(CampaignEx.JSON_NATIVE_VIDEO_ENDCARD) || (t = f0Var.b) == 0 || (bVar = ((com.fyber.inneractive.sdk.response.g) t).K) == null || (cVar = bVar.h) == null || cVar.a != com.fyber.inneractive.sdk.model.vast.h.Static) {
            return false;
        }
        r rVar = (r) f0Var.c.a(r.class);
        UnitDisplayType unitDisplayType = this.F;
        rVar.getClass();
        int i = r.a.a[unitDisplayType.ordinal()];
        if (i == 1) {
            return rVar.a("countdown_rv", false);
        }
        if (i != 2) {
            return false;
        }
        return rVar.a("countdown_iv", false);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void b() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b(boolean r7) {
        /*
            Method dump skipped, instruction units count: 278
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.renderers.m.b(boolean):void");
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        R();
        if (this.B) {
            S();
        }
        com.fyber.inneractive.sdk.player.controller.b bVar = this.z;
        if (bVar != null) {
            bVar.destroy();
            this.z = null;
        }
        com.fyber.inneractive.sdk.player.ui.h hVar = this.y;
        if (hVar != null) {
            hVar.destroy();
            this.y = null;
        }
        this.x = null;
        this.A = null;
        super.destroy();
    }

    public void e() {
        if (!this.D) {
            this.v.a(true);
        }
        this.D = true;
    }

    public final void f(boolean z) {
        com.fyber.inneractive.sdk.player.ui.h hVar = this.y;
        if ((hVar != null && ((com.fyber.inneractive.sdk.player.ui.l) hVar).f()) && this.K) {
            return;
        }
        if (!z) {
            this.v.a();
            return;
        }
        com.fyber.inneractive.sdk.player.controller.b bVar = this.z;
        String string = null;
        com.fyber.inneractive.sdk.flow.vast.e eVarC = bVar != null ? bVar.c() : null;
        if (eVarC != null && eVarC.c) {
            com.fyber.inneractive.sdk.util.e eVar = com.fyber.inneractive.sdk.util.e.FMP_ENDCARD;
            eVar.a(eVarC.f2032d);
            string = eVar.toString();
        }
        this.v.a(string);
    }

    public void g() {
        com.fyber.inneractive.sdk.model.vast.c cVar;
        com.fyber.inneractive.sdk.model.vast.i iVar;
        AdContent adcontent = this.b;
        if (adcontent != 0) {
            f0 f0Var = (f0) adcontent;
            if (f0Var.a == null || f0Var.b == 0) {
                return;
            }
            String string = null;
            T();
            com.fyber.inneractive.sdk.model.vast.b bVar = ((com.fyber.inneractive.sdk.response.g) ((f0) this.b).b).K;
            if (bVar != null && (cVar = bVar.h) != null && (iVar = cVar.b) != null) {
                string = iVar.toString();
            }
            a(string);
        }
    }

    public void h() {
        this.K = true;
        CountDownTimer countDownTimer = this.w;
        if (countDownTimer != null) {
            countDownTimer.cancel();
            this.w = null;
        }
        if (!this.t) {
            this.t = true;
            c.a aVar = this.x;
            if (aVar != null) {
                d(aVar.isCloseButtonDisplay());
            }
        }
        c.a aVar2 = this.x;
        if (aVar2 == null || !aVar2.isCloseButtonDisplay()) {
            return;
        }
        e(true ^ this.u);
    }

    public void j() {
        c.a aVar = this.x;
        if (aVar != null) {
            aVar.dismissAd(false);
        }
        a(new WebViewRendererProcessHasGoneError());
    }

    public void k() {
        c.a aVar = this.x;
        if (aVar != null) {
            aVar.dismissAd(true);
        }
    }

    public void l() {
        IAConfigManager.M.x.a(this.F == UnitDisplayType.INTERSTITIAL ? com.fyber.inneractive.sdk.cache.session.enums.b.INTERSTITIAL_VIDEO : com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO, com.fyber.inneractive.sdk.cache.session.enums.a.IMPRESSION);
        E();
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void m() {
        S();
        InneractiveAdSpot inneractiveAdSpot = this.a;
        if (inneractiveAdSpot == null || !(inneractiveAdSpot instanceof w)) {
            return;
        }
        ((w) inneractiveAdSpot).a();
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void o() {
        super.o();
        this.v.b();
    }

    public void onCompleted() {
        InneractiveFullscreenVideoContentController inneractiveFullscreenVideoContentController = (InneractiveFullscreenVideoContentController) com.fyber.inneractive.sdk.util.q.a(this.A);
        if (inneractiveFullscreenVideoContentController != null) {
            inneractiveFullscreenVideoContentController.onCompleted();
        }
        com.fyber.inneractive.sdk.config.f0 f0Var = IAConfigManager.M.x;
        UnitDisplayType unitDisplayType = this.F;
        UnitDisplayType unitDisplayType2 = UnitDisplayType.REWARDED;
        f0Var.a(unitDisplayType == unitDisplayType2 ? com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_VIDEO : com.fyber.inneractive.sdk.cache.session.enums.b.INTERSTITIAL_VIDEO, com.fyber.inneractive.sdk.cache.session.enums.a.COMPLETION);
        if (this.F == unitDisplayType2) {
            c.b bVar = this.E;
            if (bVar != null) {
                ((InneractiveFullscreenUnitController.a) bVar).a();
            }
            I();
        }
        AdContent adcontent = this.b;
        if (adcontent == 0 || ((f0) adcontent).i == null) {
            return;
        }
        K();
    }

    public void onPlayerError() {
        InneractiveFullscreenVideoContentController inneractiveFullscreenVideoContentController = (InneractiveFullscreenVideoContentController) com.fyber.inneractive.sdk.util.q.a(this.A);
        c.a aVar = this.x;
        if (aVar != null) {
            aVar.dismissAd(false);
        }
        if (inneractiveFullscreenVideoContentController != null) {
            inneractiveFullscreenVideoContentController.onPlayerError();
        }
    }

    public void onProgress(int i, int i2) {
        InneractiveFullscreenVideoContentController inneractiveFullscreenVideoContentController = (InneractiveFullscreenVideoContentController) com.fyber.inneractive.sdk.util.q.a(this.A);
        if (inneractiveFullscreenVideoContentController != null) {
            inneractiveFullscreenVideoContentController.onProgress(i, i2);
        }
    }

    public void s() {
        D();
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void t() {
        super.t();
        com.fyber.inneractive.sdk.util.a aVar = this.v;
        if (aVar.b) {
            aVar.f2733e = System.currentTimeMillis();
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public boolean v() {
        com.fyber.inneractive.sdk.player.h hVar;
        com.fyber.inneractive.sdk.player.controller.b bVar;
        c.a aVar;
        com.fyber.inneractive.sdk.player.ui.h hVar2;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (hVar = ((f0) adcontent).i) == null || (bVar = this.z) == null || (aVar = this.x) == null || (hVar2 = this.y) == null) {
            return false;
        }
        ((com.fyber.inneractive.sdk.player.e) hVar.f2635f).getClass();
        if (((com.fyber.inneractive.sdk.player.ui.l) hVar2).f()) {
            if (!this.q) {
                return true;
            }
            aVar.dismissAd(true);
            return true;
        }
        if (!bVar.e()) {
            return true;
        }
        bVar.c(true);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void x() {
        View view = this.k;
        if (view != null) {
            view.setVisibility(0);
        }
    }
}
