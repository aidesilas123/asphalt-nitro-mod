package com.fyber.inneractive.sdk.renderers;

import android.content.Context;
import android.view.ViewGroup;
import com.fyber.inneractive.sdk.activities.InneractiveRichMediaVideoPlayerActivityCore;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.b0;
import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.t;
import com.fyber.inneractive.sdk.external.InneractiveAdViewEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.external.WebViewRendererProcessHasGoneError;
import com.fyber.inneractive.sdk.network.u;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.web.b;
import com.fyber.inneractive.sdk.web.i;

/* JADX INFO: loaded from: classes2.dex */
public class e implements i.f {
    public final /* synthetic */ g a;

    public e(g gVar) {
        this.a = gVar;
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public x.a a(String str, k0 k0Var, b.a aVar) {
        b0 b0Var;
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sweb view callback: onClicked", IAlog.a(gVar));
        ViewGroup viewGroup = this.a.q;
        Context context = (viewGroup == null || viewGroup.getContext() == null) ? com.fyber.inneractive.sdk.util.l.a : this.a.q.getContext();
        if (context != null) {
            g gVar2 = this.a;
            if (gVar2.f2025g) {
                AdContent adcontent = gVar2.b;
                com.fyber.inneractive.sdk.response.f fVar = adcontent != 0 ? (com.fyber.inneractive.sdk.response.f) ((com.fyber.inneractive.sdk.flow.b0) adcontent).b : null;
                if (fVar != null) {
                    gVar2.a(fVar);
                }
                g gVar3 = this.a;
                AdContent adcontent2 = gVar3.b;
                if (adcontent2 != 0 && (b0Var = ((com.fyber.inneractive.sdk.flow.b0) adcontent2).f2019d) != null && ((a0) b0Var).c != null) {
                    gVar3.a(com.fyber.inneractive.sdk.cache.session.enums.a.CLICK, ((a0) b0Var).c.b == UnitDisplayType.MRECT ? com.fyber.inneractive.sdk.cache.session.enums.b.RECTANGLE_DISPLAY : com.fyber.inneractive.sdk.cache.session.enums.b.BANNER_DISPLAY);
                }
                return this.a.a(context, str, k0Var, com.fyber.inneractive.sdk.util.e.DISPLAY);
            }
        }
        return new x.a(x.d.FAILED, new Exception("No context or no native click detected"), context == null ? "null" : context.getClass().getName());
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(InneractiveUnitController.AdDisplayError adDisplayError) {
        g gVar = this.a;
        EventsListener eventslistener = gVar.c;
        if (eventslistener != 0) {
            ((InneractiveAdViewEventsListener) eventslistener).onAdEnteredErrorState(gVar.a, adDisplayError);
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar) {
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sweb view callback: onExpand", IAlog.a(gVar));
        g gVar2 = this.a;
        EventsListener eventslistener = gVar2.c;
        if (eventslistener != 0) {
            ((InneractiveAdViewEventsListener) eventslistener).onAdExpanded(gVar2.a);
        }
        g gVar3 = this.a;
        gVar3.getClass();
        IAlog.a("%sweb view callback: onExpand", IAlog.a(gVar3));
        this.a.d(true);
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar, com.fyber.inneractive.sdk.mraid.b0 b0Var) {
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sweb view callback: onClose", IAlog.a(gVar));
        g gVar2 = this.a;
        EventsListener eventslistener = gVar2.c;
        if (eventslistener != 0) {
            ((InneractiveAdViewEventsListener) eventslistener).onAdCollapsed(gVar2.a);
        }
        this.a.N();
        g gVar3 = this.a;
        gVar3.getClass();
        IAlog.a("%sweb view callback: onClose", IAlog.a(gVar3));
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar, boolean z) {
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void a(com.fyber.inneractive.sdk.web.i iVar, boolean z, Orientation orientation) {
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public void a(String str, String str2) {
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sweb view callback: onSuspiciousNoUserWebActionDetected", IAlog.a(gVar));
        ViewGroup viewGroup = this.a.q;
        if (viewGroup == null || viewGroup.getContext() == null) {
            return;
        }
        g gVar2 = this.a;
        if (gVar2.w) {
            IAlog.a("%sredirect already reported for this ad", IAlog.a(gVar2));
            return;
        }
        u.a(gVar2.q.getContext(), str, str2, this.a.b);
        this.a.w = true;
        g gVar3 = this.a;
        gVar3.getClass();
        IAlog.a("%sreporting auto redirect", IAlog.a(gVar3));
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public void a(boolean z) {
        b0 b0Var;
        t tVar;
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sweb view callback: onVisibilityChanged: %s", IAlog.a(gVar), Boolean.valueOf(z));
        if (!z) {
            b bVar = this.a.z;
            if (bVar != null && bVar.h) {
                bVar.c();
            }
            this.a.d(false);
            return;
        }
        g gVar2 = this.a;
        if (gVar2.p) {
            b bVar2 = gVar2.z;
            if (bVar2 != null) {
                bVar2.b();
            }
            this.a.N();
            return;
        }
        IAlog.a("%sonShownForTheFirstTime called", IAlog.a(gVar2));
        AdContent adcontent = gVar2.b;
        com.fyber.inneractive.sdk.response.f fVar = adcontent != 0 ? (com.fyber.inneractive.sdk.response.f) ((com.fyber.inneractive.sdk.flow.b0) adcontent).b : null;
        if (fVar != null) {
            IAmraidWebViewController iAmraidWebViewController = gVar2.n;
            if (iAmraidWebViewController != null) {
                iAmraidWebViewController.n();
            }
            gVar2.b(fVar);
        }
        long jL = gVar2.L();
        gVar2.l = jL;
        if (jL != 0) {
            gVar2.a(jL, true);
        }
        AdContent adcontent2 = gVar2.b;
        if (adcontent2 != 0 && (b0Var = ((com.fyber.inneractive.sdk.flow.b0) adcontent2).f2019d) != null && (tVar = ((a0) b0Var).c) != null) {
            gVar2.a(com.fyber.inneractive.sdk.cache.session.enums.a.IMPRESSION, tVar.b == UnitDisplayType.MRECT ? com.fyber.inneractive.sdk.cache.session.enums.b.RECTANGLE_DISPLAY : com.fyber.inneractive.sdk.cache.session.enums.b.BANNER_DISPLAY);
        }
        gVar2.E();
        this.a.p = true;
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public boolean a(String str) {
        ViewGroup viewGroup = this.a.q;
        if (viewGroup == null || viewGroup.getContext() == null) {
            return false;
        }
        boolean zStartRichMediaIntent = InneractiveRichMediaVideoPlayerActivityCore.startRichMediaIntent(this.a.q.getContext(), str);
        if (!zStartRichMediaIntent) {
            return zStartRichMediaIntent;
        }
        g gVar = this.a;
        if (gVar.c == 0) {
            return zStartRichMediaIntent;
        }
        gVar.D();
        return zStartRichMediaIntent;
    }

    @Override // com.fyber.inneractive.sdk.web.d0
    public void b() {
        this.a.a(new WebViewRendererProcessHasGoneError());
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void b(com.fyber.inneractive.sdk.web.i iVar) {
        this.a.d(true);
        g gVar = this.a;
        gVar.getClass();
        IAlog.a("%sweb view callback: onResize", IAlog.a(gVar));
        g gVar2 = this.a;
        EventsListener eventslistener = gVar2.c;
        if (eventslistener != 0) {
            ((InneractiveAdViewEventsListener) eventslistener).onAdResized(gVar2.a);
        }
    }

    @Override // com.fyber.inneractive.sdk.web.i.f
    public void c() {
        this.a.D();
        this.a.G();
    }
}
