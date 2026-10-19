package com.fyber.inneractive.sdk.renderers;

import android.app.Activity;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.global.s;
import com.fyber.inneractive.sdk.config.t;
import com.fyber.inneractive.sdk.external.InneractiveAdManager;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenAdEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.flow.b0;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.flow.z;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.measurement.tracker.c;
import com.fyber.inneractive.sdk.network.r;
import com.fyber.inneractive.sdk.network.s;
import com.fyber.inneractive.sdk.ui.FyberAdIdentifier;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.g0;
import com.fyber.inneractive.sdk.util.u0;
import com.fyber.inneractive.sdk.util.w;
import com.fyber.inneractive.sdk.web.i;
import java.util.concurrent.TimeUnit;

/* JADX WARN: Unexpected interfaces in signature: [com.fyber.inneractive.sdk.interfaces.c] */
/* JADX INFO: loaded from: classes2.dex */
public class k extends z<b0, InneractiveFullscreenAdEventsListener> {
    public u0 F;
    public c.b J;
    public g0 K;
    public i.f x;
    public IAmraidWebViewController z;
    public boolean y = false;
    public boolean A = false;
    public boolean B = false;
    public boolean C = false;
    public boolean D = false;
    public boolean E = false;
    public UnitDisplayType G = UnitDisplayType.INTERSTITIAL;
    public boolean H = false;
    public boolean I = false;

    public class a implements u0.b {
        public a() {
        }

        @Override // com.fyber.inneractive.sdk.util.u0.b
        public void a(u0 u0Var) {
            k.this.H = true;
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public boolean J() {
        return !this.C && this.z.X;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public int L() {
        s sVar;
        Integer numB;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (sVar = ((b0) adcontent).c) == null || sVar.a(com.fyber.inneractive.sdk.config.global.features.d.class) == null || (numB = ((com.fyber.inneractive.sdk.config.global.features.d) ((b0) this.b).c.a(com.fyber.inneractive.sdk.config.global.features.d.class)).b("close_clickable_area_dp")) == null) {
            return -1;
        }
        return numB.intValue();
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public int M() {
        s sVar;
        Integer numB;
        AdContent adcontent = this.b;
        if (adcontent == 0 || (sVar = ((b0) adcontent).c) == null || sVar.a(com.fyber.inneractive.sdk.config.global.features.d.class) == null || (numB = ((com.fyber.inneractive.sdk.config.global.features.d) ((b0) this.b).c.a(com.fyber.inneractive.sdk.config.global.features.d.class)).b("close_visible_size_dp")) == null) {
            return -1;
        }
        return numB.intValue();
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public long N() {
        int iMin = 2;
        if (this.G == UnitDisplayType.REWARDED) {
            int iA = IAConfigManager.M.u.b.a("rewarded_mraid_delay", 31, 30);
            IAlog.a("%sGetting rewarded total delay of %d seconds", IAlog.a(this), Integer.valueOf(iA));
            iMin = iA;
        } else {
            com.fyber.inneractive.sdk.config.i iVar = IAConfigManager.M.u.b;
            String string = Long.toString(2L);
            if (iVar.a.containsKey("mraid_x_delay")) {
                string = iVar.a.get("mraid_x_delay");
            }
            try {
                iMin = Integer.parseInt(string);
            } catch (Throwable unused) {
            }
        }
        if (InneractiveAdManager.isCurrentUserAChild()) {
            iMin = Math.min(B() ? ((com.fyber.inneractive.sdk.config.global.features.b) ((b0) this.b).c.a(com.fyber.inneractive.sdk.config.global.features.b.class)).d() : Math.min(iMin, 5), iMin);
        }
        return iMin * 1000;
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public boolean O() {
        return false;
    }

    public final void R() {
        IAlog.a("%sprovide reward called", IAlog.a(this));
        if (this.I) {
            IAlog.a("%sreward was already provided", IAlog.a(this));
            return;
        }
        IAlog.a("%sreward sent", IAlog.a(this));
        if (this.J != null) {
            a(com.fyber.inneractive.sdk.cache.session.enums.a.COMPLETION, com.fyber.inneractive.sdk.cache.session.enums.b.REWARDED_DISPLAY);
            ((InneractiveFullscreenUnitController.a) this.J).a();
        }
        IAmraidWebViewController iAmraidWebViewController = this.z;
        if (iAmraidWebViewController == null || !iAmraidWebViewController.C) {
            I();
        }
        this.I = true;
    }

    public final void S() {
        IAmraidWebViewController iAmraidWebViewController;
        if (this.b == 0 || (iAmraidWebViewController = this.z) == null) {
            IAlog.a("updateWebViewLayoutParams called, but web view is invalid", new Object[0]);
            return;
        }
        com.fyber.inneractive.sdk.web.g gVar = iAmraidWebViewController.b;
        if (gVar != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            gVar.setLayoutParams(layoutParams);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public long a(long j) {
        if (this.G == UnitDisplayType.REWARDED) {
            return 0L;
        }
        com.fyber.inneractive.sdk.config.i iVar = IAConfigManager.M.u.b;
        long j2 = 13;
        String string = Long.toString(13L);
        if (iVar.a.containsKey("mraid_x_fallback_delay")) {
            string = iVar.a.get("mraid_x_fallback_delay");
        }
        try {
            j2 = Long.parseLong(string);
        } catch (Throwable unused) {
        }
        return j2 * 1000;
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void a(c.a aVar, Activity activity) throws Resources.NotFoundException, InneractiveUnitController.AdDisplayError {
        com.fyber.inneractive.sdk.config.b0 b0Var;
        super.a(aVar, activity);
        AdContent adcontent = this.b;
        t tVar = (adcontent == 0 || (b0Var = ((b0) adcontent).f2019d) == null) ? null : ((a0) b0Var).c;
        if (tVar == null) {
            IAlog.e("%sNo display config for full screen mraid ad renderer! Cannot render", IAlog.a(this));
            throw new InneractiveUnitController.AdDisplayError("No display config for full screen mraid");
        }
        IAmraidWebViewController iAmraidWebViewController = adcontent != 0 ? ((b0) adcontent).i : null;
        this.z = iAmraidWebViewController;
        if (iAmraidWebViewController != null) {
            if (iAmraidWebViewController.b != null) {
                ((b0) adcontent).i();
                this.G = tVar.b;
                this.A = false;
                this.B = false;
                this.K = new g0(this.a);
                this.l = aVar;
                IAmraidWebViewController iAmraidWebViewController2 = this.z;
                if (iAmraidWebViewController2 == null) {
                    IAlog.e("InneractiveFullscreenMraidAdRenderer.renderAd: Spot ad content is not the right content :( %s", this.b);
                    return;
                }
                iAmraidWebViewController2.a(aVar.getCloseButton(), c.EnumC0166c.CloseButton);
                com.fyber.inneractive.sdk.response.f fVar = (com.fyber.inneractive.sdk.response.f) ((b0) this.b).b;
                int i = fVar.f2720e;
                int i2 = fVar.f2721f;
                boolean z = (i == 300 && i2 == 250) || (i == 600 && i2 == 500);
                this.C = z;
                if (z) {
                    this.z.setAdDefaultSize(com.fyber.inneractive.sdk.util.l.a(i), com.fyber.inneractive.sdk.util.l.a(i2));
                }
                if (this.x == null) {
                    this.x = new l(this);
                }
                this.z.setListener(this.x);
                InneractiveAdSpot inneractiveAdSpot = this.a;
                if (inneractiveAdSpot != null && inneractiveAdSpot.getAdContent() != null && activity != null) {
                    com.fyber.inneractive.sdk.flow.e eVar = new com.fyber.inneractive.sdk.flow.e(this.a.getAdContent().a, this.a.getAdContent().d(), this.a.getAdContent().c);
                    ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.ia_identifier_overlay);
                    eVar.a(viewGroup, FyberAdIdentifier.Corner.BOTTOM_LEFT);
                    viewGroup.setVisibility(0);
                    this.z.a(viewGroup, c.EnumC0166c.IdentifierView);
                }
                S();
                IAmraidWebViewController iAmraidWebViewController3 = this.z;
                ViewGroup layout = this.l.getLayout();
                InneractiveAdRequest inneractiveAdRequest = ((b0) this.b).a;
                iAmraidWebViewController3.a(layout, (ViewGroup.LayoutParams) null);
                this.A = true;
                if (this.G == UnitDisplayType.REWARDED) {
                    u0 u0Var = new u0(TimeUnit.SECONDS, IAConfigManager.M.u.b.a("rewarded_mraid_delay", 31, 30));
                    this.F = u0Var;
                    u0Var.f2745e = new a();
                    u0Var.c();
                    return;
                }
                return;
            }
        }
        IAlog.e("%sWeb view controller content is not valid. Web view might have crashed", IAlog.a(this));
        throw new InneractiveUnitController.AdDisplayError("Web view could not be loaded");
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void a(c.b bVar) {
        this.J = bVar;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void b() {
        S();
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void b(View view) {
        IAmraidWebViewController iAmraidWebViewController = this.z;
        if (iAmraidWebViewController != null) {
            iAmraidWebViewController.a(view, c.EnumC0166c.ProgressOverlay);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void b(boolean z) {
        if (!J()) {
            if (z) {
                this.v.a((String) null);
            } else {
                this.v.a();
            }
        }
        c.a aVar = this.l;
        if (aVar != null) {
            aVar.destroy();
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z
    public /* bridge */ /* synthetic */ boolean b(q qVar) {
        return false;
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void c(View view) {
        IAmraidWebViewController iAmraidWebViewController = this.z;
        if (iAmraidWebViewController != null) {
            iAmraidWebViewController.b(view);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        EventsListener eventslistener;
        if (this.A && !this.B && (eventslistener = this.c) != 0) {
            this.B = true;
            ((InneractiveFullscreenAdEventsListener) eventslistener).onAdDismissed(this.a);
        }
        this.x = null;
        u0 u0Var = this.F;
        if (u0Var != null) {
            u0Var.f2745e = null;
            this.F = null;
        }
        super.destroy();
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public void m() {
        s sVar;
        EventsListener eventslistener;
        if (this.G == UnitDisplayType.REWARDED && this.H) {
            R();
        }
        if (!this.B && (eventslistener = this.c) != 0) {
            this.B = true;
            ((InneractiveFullscreenAdEventsListener) eventslistener).onAdDismissed(this.a);
        }
        g0 g0Var = this.K;
        if (g0Var != null) {
            long j = g0Var.b;
            if (j != 0) {
                String strA = w.a(j, g0Var.f2740d);
                g0Var.b = 0L;
                g0Var.c = 0L;
                g0Var.f2740d = 0L;
                InneractiveAdSpot inneractiveAdSpot = g0Var.a;
                q adContent = inneractiveAdSpot != null ? inneractiveAdSpot.getAdContent() : null;
                s.a aVar = new s.a(r.INTERSTITIAL_VIEW_TIME, adContent != null ? adContent.a : null, adContent != null ? adContent.d() : null, (adContent == null || (sVar = adContent.c) == null) ? null : sVar.c());
                aVar.a("time", strA);
                aVar.a((String) null);
            }
        }
        InneractiveAdSpot inneractiveAdSpot2 = this.a;
        if (inneractiveAdSpot2 == null || !(inneractiveAdSpot2 instanceof com.fyber.inneractive.sdk.flow.w)) {
            return;
        }
        ((com.fyber.inneractive.sdk.flow.w) inneractiveAdSpot2).a();
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void o() {
        u0 u0Var;
        super.o();
        if (this.G == UnitDisplayType.REWARDED && (u0Var = this.F) != null) {
            u0Var.b();
        }
        g0 g0Var = this.K;
        if (g0Var != null) {
            if (g0Var.b == 0) {
                g0Var.b = System.currentTimeMillis();
            }
            if (g0Var.c > 0) {
                g0Var.f2740d += System.currentTimeMillis() - g0Var.c;
                g0Var.c = 0L;
            }
        }
        this.v.b();
    }

    @Override // com.fyber.inneractive.sdk.flow.z, com.fyber.inneractive.sdk.interfaces.c
    public void t() {
        u0 u0Var;
        super.t();
        if (this.G == UnitDisplayType.REWARDED && (u0Var = this.F) != null) {
            u0Var.a();
        }
        g0 g0Var = this.K;
        if (g0Var != null) {
            g0Var.c = System.currentTimeMillis();
        }
        com.fyber.inneractive.sdk.util.a aVar = this.v;
        if (aVar.b) {
            aVar.f2733e = System.currentTimeMillis();
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.c
    public boolean v() {
        boolean z;
        if (this.l == null) {
            z = true;
        } else if (this.G == UnitDisplayType.REWARDED) {
            if (this.H) {
                R();
            }
            z = this.H;
        } else {
            z = this.q;
        }
        if (!z) {
            return true;
        }
        c.a aVar = this.l;
        if (aVar == null) {
            return false;
        }
        aVar.dismissAd(true);
        return true;
    }
}
