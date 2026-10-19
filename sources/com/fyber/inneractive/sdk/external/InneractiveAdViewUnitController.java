package com.fyber.inneractive.sdk.external;

import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.factories.a;
import com.fyber.inneractive.sdk.factories.c;
import com.fyber.inneractive.sdk.flow.c0;
import com.fyber.inneractive.sdk.flow.e0;
import com.fyber.inneractive.sdk.flow.t;
import com.fyber.inneractive.sdk.flow.w;
import com.fyber.inneractive.sdk.interfaces.c;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.m;
import com.fyber.inneractive.sdk.util.q;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class InneractiveAdViewUnitController extends e0<InneractiveAdViewEventsListener> implements t.c, InneractiveFullscreenAdActivity.FullScreenRendererProvider {
    public static final int DISABLED_REFRESH_INTERVAL = -1;
    public Set<InneractiveAdRenderer> a;
    public boolean b;
    public View c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f1996d;
    public int mAdContentHeight;
    public int mAdContentWidth;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            InneractiveAdViewUnitController.this.a();
        }
    }

    public InneractiveAdViewUnitController() {
        this.b = false;
        this.mAdContentWidth = -1;
        this.mAdContentHeight = -1;
        this.f1996d = 0;
        this.a = new HashSet();
    }

    public InneractiveAdViewUnitController(int i) {
        this();
        if (i >= 30) {
            IAlog.a("InneractiveAdViewUnitController: Overriding remote config refresh interval to: %d", Integer.valueOf(i));
            this.f1996d = i;
        } else {
            IAlog.a("InneractiveAdViewUnitController: Overriding remote config refresh interval - value too low. Setting to default: %d -> %d", Integer.valueOf(i), 30);
            this.f1996d = 30;
        }
    }

    public InneractiveAdViewUnitController(boolean z) {
        this();
        if (z) {
            this.f1996d = -1;
        }
    }

    public final void a() {
        this.b = true;
        Iterator it = new HashSet(this.a).iterator();
        while (it.hasNext()) {
            ((InneractiveAdRenderer) it.next()).destroy();
        }
        this.a.clear();
        this.c = null;
        super.destroy();
    }

    public void bindView(ViewGroup viewGroup) {
        com.fyber.inneractive.sdk.interfaces.b bVarB;
        IAlog.a("%sPPPP bindView called with parent: %s", logPrefix(), viewGroup);
        InneractiveAdSpot adSpot = getAdSpot();
        if (adSpot == null) {
            IAlog.e("InneractiveFullscreenUnitController was not attached to an ad spot", new Object[0]);
            return;
        }
        IAlog.a("%sPPPP bindView spot is %s", logPrefix(), adSpot);
        for (InneractiveAdRenderer inneractiveAdRenderer : new HashSet(this.a)) {
            if (inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) {
                com.fyber.inneractive.sdk.interfaces.b bVar = (com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer;
                if (bVar.a((View) viewGroup)) {
                    bVar.n();
                    IAlog.a("%sPPPP bindAdToRenderer returning an already attached renderer %s", logPrefix(), bVar);
                    return;
                }
            }
        }
        this.c = viewGroup;
        Iterator<a.InterfaceC0158a> it = a.b.a.a.iterator();
        while (true) {
            if (!it.hasNext()) {
                bVarB = null;
                break;
            }
            a.InterfaceC0158a next = it.next();
            if (next.a(adSpot)) {
                bVarB = next.b(adSpot);
                break;
            }
        }
        int i = this.f1996d;
        if (i != 0) {
            bVarB.a(i);
        }
        if (bVarB == null) {
            IAlog.e("%sCould not find a renderer for the given spot! Did you add the appropriate module to your project?", logPrefix());
            return;
        }
        bVarB.initialize(adSpot);
        selectContentController();
        bVarB.a(viewGroup);
        this.a.add(bVarB);
        IAlog.a("%sPPPP bindView created renderer %s", logPrefix(), bVarB);
    }

    @Override // com.fyber.inneractive.sdk.flow.e0
    public boolean canRefreshAd() {
        if (!supportsRefresh()) {
            return false;
        }
        Iterator<InneractiveAdRenderer> it = this.a.iterator();
        while (it.hasNext()) {
            if (!it.next().canRefreshAd()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.fyber.inneractive.sdk.flow.e0, com.fyber.inneractive.sdk.external.InneractiveUnitController
    public void destroy() {
        if (Looper.myLooper() == null || Looper.getMainLooper() != Looper.myLooper()) {
            m.b.post(new a());
        } else {
            a();
        }
    }

    public int getAdContentHeight() {
        int iP;
        for (InneractiveAdRenderer inneractiveAdRenderer : this.a) {
            if ((inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) && (iP = ((com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer).p()) > 0) {
                return iP;
            }
        }
        return this.mAdContentHeight;
    }

    public int getAdContentWidth() {
        int iF;
        for (InneractiveAdRenderer inneractiveAdRenderer : this.a) {
            if ((inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) && (iF = ((com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer).f()) > 0) {
                return iF;
            }
        }
        return this.mAdContentWidth;
    }

    @Override // com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity.FullScreenRendererProvider
    public c getFullscreenRenderer() {
        c cVarA = c.b.a.a((InneractiveAdSpot) q.a(this.mAdSpot));
        this.a.add(cVarA);
        return cVarA;
    }

    @Override // com.fyber.inneractive.sdk.flow.e0, com.fyber.inneractive.sdk.external.InneractiveUnitController
    public InneractiveContentController getSelectedContentController() {
        return this.mSelectedContentController;
    }

    @Override // com.fyber.inneractive.sdk.flow.t.c
    public void onAdRefreshFailed(InneractiveAdSpot inneractiveAdSpot, InneractiveErrorCode inneractiveErrorCode) {
        for (InneractiveAdRenderer inneractiveAdRenderer : new HashSet(this.a)) {
            if (inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) {
                ((com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer).r();
                return;
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.t.c
    public void onAdRefreshed(InneractiveAdSpot inneractiveAdSpot) {
        com.fyber.inneractive.sdk.interfaces.b bVar;
        Iterator it = new HashSet(this.a).iterator();
        while (true) {
            if (!it.hasNext()) {
                bVar = null;
                break;
            }
            InneractiveAdRenderer inneractiveAdRenderer = (InneractiveAdRenderer) it.next();
            if (inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) {
                bVar = (com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer;
                if (bVar.a(inneractiveAdSpot.getAdContent())) {
                    break;
                }
            }
        }
        if (bVar != null) {
            bVar.a((ViewGroup) null);
        } else {
            onAdRefreshFailed(inneractiveAdSpot, InneractiveErrorCode.SDK_INTERNAL_ERROR);
        }
        try {
            if (inneractiveAdSpot instanceof t) {
                int i = IAlog.a;
                IAlog.a(1, null, "%s %s", "AD_REFRESH", ((t) inneractiveAdSpot).h.f2010d.b());
            }
        } catch (Exception unused) {
        }
        IAlog.a("InneractiveFullscreenUnitController onAdRefreshed called", new Object[0]);
    }

    public void refreshAd() {
        IAlog.a("InneractiveFullscreenUnitController refreshAd called", new Object[0]);
        InneractiveAdSpot inneractiveAdSpot = (InneractiveAdSpot) q.a(this.mAdSpot);
        if (inneractiveAdSpot == null || !(inneractiveAdSpot instanceof c0)) {
            return;
        }
        ((c0) inneractiveAdSpot).a(this);
    }

    @Override // com.fyber.inneractive.sdk.flow.e0
    public boolean supports(InneractiveAdSpot inneractiveAdSpot) {
        a0 a0Var = (a0) inneractiveAdSpot.getAdContent().f2019d;
        if (a0Var.f1941e != null) {
            return false;
        }
        com.fyber.inneractive.sdk.config.t tVar = a0Var.c;
        if (tVar != null) {
            if (UnitDisplayType.BANNER.equals(tVar.b) || UnitDisplayType.MRECT.equals(tVar.b)) {
                return true;
            }
            if (UnitDisplayType.INTERSTITIAL.equals(tVar.b)) {
                return !inneractiveAdSpot.getCurrentProcessedRequest().getAllowFullscreen();
            }
        }
        com.fyber.inneractive.sdk.config.c0 c0Var = a0Var.f1942f;
        return c0Var != null && (UnitDisplayType.LANDSCAPE.equals(c0Var.j) || UnitDisplayType.SQUARE.equals(c0Var.j) || UnitDisplayType.MRECT.equals(c0Var.j));
    }

    @Override // com.fyber.inneractive.sdk.flow.e0
    public boolean supportsRefresh() {
        return true;
    }

    public void unbindFullscreenRenderer(com.fyber.inneractive.sdk.interfaces.c cVar) {
        WeakReference<w> weakReference;
        IAlog.a("%sremoving full screen ad renderer %s", logPrefix(), cVar);
        Set<InneractiveAdRenderer> set = this.a;
        if (set != null) {
            set.remove(cVar);
        }
        if (this.b) {
            return;
        }
        for (InneractiveAdRenderer inneractiveAdRenderer : new HashSet(this.a)) {
            if (inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) {
                ((com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer).a();
                if (this.mEventsListener != 0 && (weakReference = this.mAdSpot) != null && weakReference.get() != null) {
                    ((InneractiveAdViewEventsListener) this.mEventsListener).onAdCollapsed(this.mAdSpot.get());
                }
            }
        }
    }

    public void unbindView(View view) {
        if (this.c != view) {
            IAlog.e("%s unbindView invoked with incorrect view, was - %s received - %s", logPrefix(), this.c, view);
        } else {
            this.c = null;
        }
        IAlog.a("%sPPPP unbindView called with %s", logPrefix(), view);
        IAlog.a("%sPPPP spot is %s", logPrefix(), this.mAdSpot);
        for (InneractiveAdRenderer inneractiveAdRenderer : new HashSet(this.a)) {
            if (inneractiveAdRenderer instanceof com.fyber.inneractive.sdk.interfaces.b) {
                com.fyber.inneractive.sdk.interfaces.b bVar = (com.fyber.inneractive.sdk.interfaces.b) inneractiveAdRenderer;
                if (bVar.a(view)) {
                    IAlog.a("%sPPPP unbindView unbinding renderer %s", logPrefix(), inneractiveAdRenderer);
                    bVar.u();
                    this.a.remove(bVar);
                    return;
                }
            }
        }
    }
}
