package com.fyber.inneractive.sdk.renderers;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.fyber.inneractive.sdk.R;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.enums.UnitDisplayType;
import com.fyber.inneractive.sdk.config.t;
import com.fyber.inneractive.sdk.external.InneractiveAdRequest;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdViewEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import com.fyber.inneractive.sdk.external.InneractiveFullscreenUnitController;
import com.fyber.inneractive.sdk.flow.b0;
import com.fyber.inneractive.sdk.flow.r;
import com.fyber.inneractive.sdk.measurement.tracker.c;
import com.fyber.inneractive.sdk.ui.FyberAdIdentifier;
import com.fyber.inneractive.sdk.ui.IAmraidWebViewController;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.l0;
import com.fyber.inneractive.sdk.util.q;
import com.fyber.inneractive.sdk.util.v;
import com.fyber.inneractive.sdk.web.i;
import com.gameloft.adsmanager.JavaUtils;
import com.json.b4;

/* JADX INFO: loaded from: classes2.dex */
public class g extends r<b0, InneractiveAdViewEventsListener> implements com.fyber.inneractive.sdk.interfaces.b, v.b {
    public InneractiveAdViewUnitController m;
    public IAmraidWebViewController n;
    public i.f o;
    public ViewGroup q;
    public RelativeLayout r;
    public Runnable t;
    public com.fyber.inneractive.sdk.renderers.b z;
    public long l = 0;
    public boolean p = false;
    public long s = 0;
    public int u = 0;
    public long v = 0;
    public boolean w = false;
    public boolean x = true;
    public boolean y = false;

    public static class a extends RelativeLayout {
        public final float a;

        public a(Context context, float f2) {
            super(context);
            this.a = f2;
        }

        @Override // android.widget.RelativeLayout, android.view.View
        public void onMeasure(int i, int i2) {
            int iMakeMeasureSpec;
            View.MeasureSpec.getMode(i);
            int mode = View.MeasureSpec.getMode(i2);
            if (mode == 0 || (mode == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) > 0)) {
                int size = View.MeasureSpec.getSize(i);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size, 1073741824);
                float f2 = this.a;
                if (f2 != 0.0f) {
                    i2 = View.MeasureSpec.makeMeasureSpec((int) (size * f2), 1073741824);
                }
                iMakeMeasureSpec = iMakeMeasureSpec2;
            } else {
                int size2 = View.MeasureSpec.getSize(i);
                int size3 = View.MeasureSpec.getSize(i2);
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size2, 1073741824);
                i2 = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
            }
            super.onMeasure(iMakeMeasureSpec, i2);
        }
    }

    public enum b {
        BANNER_WIDTH(JavaUtils.Constants.BANNER_WIDTH_DP),
        BANNER_HEIGHT(50),
        BANNER_TABLET_HEIGHT(90),
        BANNER_TABLET_WIDTH(JavaUtils.Constants.TABLET_WIDTH_DP),
        RECTANGLE_HEIGHT(250),
        RECTANGLE_WIDTH(JavaUtils.Constants.NATIVE_HEIGHT_DP_300);

        public final int value;

        b(int i) {
            this.value = i;
        }
    }

    public static l0 a(int i, int i2, com.fyber.inneractive.sdk.config.b0 b0Var) {
        int iA;
        int iA2;
        t tVar;
        IAlog.a("View layout params: response width and height: %d, %d", Integer.valueOf(i), Integer.valueOf(i2));
        if (i <= 0 || i2 <= 0) {
            UnitDisplayType unitDisplayType = UnitDisplayType.BANNER;
            if (b0Var != null && (tVar = ((a0) b0Var).c) != null) {
                unitDisplayType = tVar.b;
            }
            if (unitDisplayType.equals(UnitDisplayType.MRECT)) {
                iA = com.fyber.inneractive.sdk.util.l.a(b.RECTANGLE_WIDTH.value);
                iA2 = com.fyber.inneractive.sdk.util.l.a(b.RECTANGLE_HEIGHT.value);
            } else if (com.fyber.inneractive.sdk.util.j.n()) {
                iA = com.fyber.inneractive.sdk.util.l.a(b.BANNER_TABLET_WIDTH.value);
                iA2 = com.fyber.inneractive.sdk.util.l.a(b.BANNER_TABLET_HEIGHT.value);
            } else {
                iA = com.fyber.inneractive.sdk.util.l.a(b.BANNER_WIDTH.value);
                iA2 = com.fyber.inneractive.sdk.util.l.a(b.BANNER_HEIGHT.value);
            }
        } else {
            iA = com.fyber.inneractive.sdk.util.l.a(i);
            iA2 = com.fyber.inneractive.sdk.util.l.a(i2);
        }
        return new l0(iA, iA2);
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public int A() {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController != null) {
            return (iAmraidWebViewController.b == null || !iAmraidWebViewController.o()) ? com.fyber.inneractive.sdk.util.l.c(this.n.d0) : com.fyber.inneractive.sdk.util.l.c(this.n.b.getWidth());
        }
        return -1;
    }

    public final void J() {
        if (this.t != null) {
            IAlog.a("%scancelling refreen runnable", IAlog.a(this));
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(this.t);
            this.t = null;
        }
    }

    public final void K() {
        com.fyber.inneractive.sdk.renderers.b bVar = this.z;
        if (bVar != null) {
            bVar.c();
        }
        if (this.n != null) {
            J();
            AdContent adcontent = this.b;
            if (adcontent != 0) {
                ((b0) adcontent).a();
            }
            this.n = null;
            this.b = null;
            ViewGroup viewGroup = this.q;
            if (viewGroup != null) {
                viewGroup.removeView(this.r);
            }
        }
        this.w = false;
    }

    public final int L() {
        t tVar;
        int iIntValue;
        int i = this.u;
        if (i == -1) {
            IAlog.a("%sreturning disable value for banner refresh", IAlog.a(this));
            return 0;
        }
        if (i <= 0) {
            com.fyber.inneractive.sdk.config.b0 b0Var = this.a.getAdContent().f2019d;
            if (b0Var != null && (tVar = ((a0) b0Var).c) != null) {
                Integer num = tVar.a;
                IAlog.a("%sreturning refreshConfig = %d", IAlog.a(this), num);
                if (num != null) {
                    iIntValue = num.intValue();
                }
            }
            IAlog.a("%sgetRefreshInterval: returning 0. Refresh is disabled", IAlog.a(this));
            return 0;
        }
        IAlog.a("%sreturning overriden refresh interval = %d", IAlog.a(this), Integer.valueOf(this.u));
        iIntValue = this.u;
        return iIntValue * 1000;
    }

    public final void M() {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController == null || iAmraidWebViewController.b == null) {
            return;
        }
        IAlog.a("%srefreshing ad", IAlog.a(this));
        if (!this.n.o() || this.n.s()) {
            this.s = 0L;
            this.m.refreshAd();
        }
    }

    public final void N() {
        com.fyber.inneractive.sdk.web.g gVar;
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController == null || (gVar = iAmraidWebViewController.b) == null || !gVar.getIsVisible() || this.s == 0 || this.n.o() || this.n.s()) {
            return;
        }
        if (!this.x) {
            if (this.l < System.currentTimeMillis() - this.s) {
                this.v = 1L;
            } else {
                this.v = this.l - (System.currentTimeMillis() - this.s);
            }
        }
        IAlog.a("%sresuming refresh runnable mRefreshTimeStamp %d", IAlog.a(this), Long.valueOf(this.v));
        a(this.v, false);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a(int i) {
        this.u = i;
    }

    public final void a(long j, boolean z) {
        IAmraidWebViewController iAmraidWebViewController;
        com.fyber.inneractive.sdk.web.g gVar;
        if (!TextUtils.isEmpty(this.a.getMediationNameString()) || j == 0 || (this.a.getSelectedUnitController() instanceof InneractiveFullscreenUnitController) || this.u == -1 || (iAmraidWebViewController = this.n) == null || (gVar = iAmraidWebViewController.b) == null) {
            return;
        }
        if (!gVar.getIsVisible()) {
            IAlog.a("%sstartRefreshTimer called but ad is not visible", IAlog.a(this));
            return;
        }
        this.s = System.currentTimeMillis();
        this.l = z ? this.l : j;
        IAlog.a("%sstartRefreshTimer in %d msec, mRefreshInterval = %d", IAlog.a(this), Long.valueOf(j), Long.valueOf(this.l));
        if (j <= 1) {
            M();
            return;
        }
        Runnable runnable = this.t;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
        }
        J();
        f fVar = new f(this);
        this.t = fVar;
        com.fyber.inneractive.sdk.util.m.b.postDelayed(fVar, j);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a(ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        Application application;
        boolean z;
        t tVar;
        UnitDisplayType unitDisplayType;
        InneractiveAdSpot inneractiveAdSpot = this.a;
        if (inneractiveAdSpot == null) {
            IAlog.e("%sYou must set the spot to render before calling renderAd", IAlog.a(this));
            return;
        }
        this.p = false;
        this.f2023e = false;
        if (viewGroup != null) {
            this.q = viewGroup;
            this.m = (InneractiveAdViewUnitController) inneractiveAdSpot.getSelectedUnitController();
        } else if (!this.y) {
            K();
            if (!(this.a.getAdContent() instanceof b0)) {
                IAlog.e("InneractiveAdViewMraidAdRenderer.renderAd: Spot ad content is not the right content :( %s", this.a.getAdContent());
                return;
            } else {
                this.b = (b0) this.a.getAdContent();
                this.f2024f = false;
            }
        }
        Object obj = this.b;
        IAmraidWebViewController iAmraidWebViewController = obj != null ? ((b0) obj).i : null;
        this.n = iAmraidWebViewController;
        if (iAmraidWebViewController != null) {
            if (this.o == null) {
                this.o = new e(this);
            }
            iAmraidWebViewController.setListener(this.o);
            b0 b0Var = (b0) this.b;
            InneractiveAdRequest inneractiveAdRequest = b0Var.a;
            com.fyber.inneractive.sdk.config.b0 b0Var2 = b0Var.f2019d;
            if (b0Var2 == null || (tVar = ((a0) b0Var2).c) == null || (unitDisplayType = tVar.b) == null || !unitDisplayType.isFullscreenUnit()) {
                this.r = new a(this.q.getContext(), 0.0f);
                b0 b0Var3 = (b0) this.b;
                com.fyber.inneractive.sdk.response.f fVar = (com.fyber.inneractive.sdk.response.f) b0Var3.b;
                l0 l0VarA = a(fVar.f2720e, fVar.f2721f, b0Var3.f2019d);
                this.n.setAdDefaultSize(l0VarA.a, l0VarA.b);
                IAmraidWebViewController iAmraidWebViewController2 = this.n;
                com.fyber.inneractive.sdk.web.g gVar = iAmraidWebViewController2.b;
                if (gVar != null || (application = com.fyber.inneractive.sdk.util.l.a) == null) {
                    ViewParent parent = gVar != null ? gVar.getParent() : null;
                    if (parent instanceof ViewGroup) {
                        ((ViewGroup) parent).removeView(gVar);
                    }
                    this.n.a(this.r, q.a(l0VarA.a, l0VarA.b, 13));
                    this.q.addView(this.r, new ViewGroup.LayoutParams(-2, -2));
                    InneractiveAdSpot inneractiveAdSpot2 = this.a;
                    if (inneractiveAdSpot2 != null && inneractiveAdSpot2.getAdContent() != null && this.q != null) {
                        com.fyber.inneractive.sdk.flow.e eVar = new com.fyber.inneractive.sdk.flow.e(this.a.getAdContent().a, this.a.getAdContent().d(), this.a.getAdContent().c);
                        RelativeLayout relativeLayout = (RelativeLayout) RelativeLayout.inflate(this.q.getContext(), R.layout.fyber_ad_identifier_relative_layout, null);
                        eVar.a(relativeLayout, FyberAdIdentifier.Corner.BOTTOM_LEFT);
                        relativeLayout.setVisibility(0);
                        relativeLayout.setGravity(83);
                        IAmraidWebViewController iAmraidWebViewController3 = this.n;
                        if (iAmraidWebViewController3 == null) {
                            viewGroup2 = null;
                        } else {
                            viewGroup2 = iAmraidWebViewController3.b;
                            if (viewGroup2 != null && viewGroup2.getParent() != null) {
                                viewGroup2 = (ViewGroup) viewGroup2.getParent();
                            }
                        }
                        if (viewGroup2 != null && y() != null) {
                            ViewGroup.LayoutParams layoutParams = y().getLayoutParams();
                            IAmraidWebViewController iAmraidWebViewController4 = this.n;
                            viewGroup2.addView(relativeLayout, layoutParams);
                            iAmraidWebViewController4.a(relativeLayout, c.EnumC0166c.IdentifierView);
                        }
                    }
                } else if (this.y) {
                    a(l0VarA);
                } else {
                    this.y = true;
                    iAmraidWebViewController2.b = new com.fyber.inneractive.sdk.web.g(application);
                    try {
                        iAmraidWebViewController2.h();
                        iAmraidWebViewController2.b.loadDataWithBaseURL(iAmraidWebViewController2.p, iAmraidWebViewController2.q, "text/html", b4.L, null);
                        z = true;
                    } catch (Throwable unused) {
                        z = false;
                    }
                    if (!z) {
                        a(l0VarA);
                    }
                }
            } else {
                a aVar = new a(this.q.getContext(), 1.5f);
                this.r = aVar;
                this.n.a(aVar, new ViewGroup.LayoutParams(-1, -1));
                this.q.addView(this.r, new ViewGroup.LayoutParams(-2, -2));
            }
            AdContent adcontent = this.b;
            com.fyber.inneractive.sdk.response.f fVar2 = adcontent != 0 ? (com.fyber.inneractive.sdk.response.f) ((b0) adcontent).b : null;
            if (fVar2 != null) {
                com.fyber.inneractive.sdk.renderers.b bVar = new com.fyber.inneractive.sdk.renderers.b(fVar2, this.r, new d(this));
                this.z = bVar;
                bVar.i = false;
                bVar.f2711e = 1;
                bVar.f2712f = 0.0f;
                int i = fVar2.t;
                if (i >= 1) {
                    bVar.f2711e = Math.min(i, 100);
                }
                float f2 = fVar2.u;
                if (f2 >= -1.0f) {
                    bVar.f2712f = f2;
                }
                if (bVar.f2712f >= 0.0f) {
                    IAlog.a("IAVisibilityTracker: startTrackingVisibility", new Object[0]);
                    bVar.f2710d = 0.0f;
                    bVar.f2713g = System.currentTimeMillis();
                    bVar.h = true;
                    bVar.a();
                }
            }
        } else {
            IAlog.e("InneractiveAdViewMraidAdRenderer.renderAd: Spot ad content is not the right content :( %s", obj);
        }
        v vVar = v.a.a;
        if (vVar.a.contains(this)) {
            return;
        }
        vVar.a.add(this);
    }

    public final void a(l0 l0Var) {
        FrameLayout frameLayout = new FrameLayout(this.q.getContext());
        frameLayout.setBackgroundResource(R.color.blank_background);
        this.q.removeAllViews();
        this.q.addView(frameLayout, new FrameLayout.LayoutParams(l0Var.a, l0Var.b, 17));
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public boolean a(View view) {
        return view.equals(this.q);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public boolean a(com.fyber.inneractive.sdk.flow.q qVar) {
        return qVar instanceof b0;
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void b(View view) {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController != null) {
            iAmraidWebViewController.a(view, c.EnumC0166c.ProgressOverlay);
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public void c(View view) {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController != null) {
            iAmraidWebViewController.b(view);
        }
    }

    @Override // com.fyber.inneractive.sdk.util.v.b
    public void c(boolean z) {
        IAlog.a("%sgot onLockScreenStateChanged with: %s", IAlog.a(this), Boolean.valueOf(z));
        if (!z) {
            N();
            com.fyber.inneractive.sdk.renderers.b bVar = this.z;
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        d(false);
        com.fyber.inneractive.sdk.renderers.b bVar2 = this.z;
        if (bVar2 == null || !bVar2.h) {
            return;
        }
        bVar2.c();
    }

    @Override // com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public boolean canRefreshAd() {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController != null) {
            return (iAmraidWebViewController.o() || this.n.s()) ? false : true;
        }
        return true;
    }

    public final void d(boolean z) {
        if (this.t != null) {
            this.x = z;
            J();
            this.v = this.l - (System.currentTimeMillis() - this.s);
            IAlog.a("%sPause refresh time : time remaning:%d ,refreshInterval: %d", IAlog.a(this), Long.valueOf(this.v), Long.valueOf(this.l));
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        J();
        K();
        this.o = null;
        v.a.a.a.remove(this);
        Runnable runnable = this.t;
        if (runnable != null) {
            com.fyber.inneractive.sdk.util.m.b.removeCallbacks(runnable);
        }
        super.destroy();
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public int f() {
        return this.n.d0;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void n() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public int p() {
        return this.n.e0;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void r() {
        com.fyber.inneractive.sdk.web.g gVar;
        IAlog.a("%sgot onAdRefreshFailed", IAlog.a(this));
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController == null || (gVar = iAmraidWebViewController.b) == null) {
            return;
        }
        if (!gVar.getIsVisible() || v.a.a.b || this.n.o() || this.n.s()) {
            IAlog.a("%sview is not visible or screen is locked or webView is Expanded or web is Resised. Waiting for visibility change", IAlog.a(this));
            this.v = 1L;
            return;
        }
        IAlog.a("%sview is visible and screen is unlocked: refreshing ad and webView is not expanded", IAlog.a(this));
        long jL = L();
        this.l = jL;
        if (jL != 0) {
            a(10000L, false);
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void u() {
        com.fyber.inneractive.sdk.renderers.b bVar = this.z;
        if (bVar != null) {
            bVar.c();
        }
        RelativeLayout relativeLayout = this.r;
        if (relativeLayout != null) {
            relativeLayout.removeAllViews();
        }
        ViewGroup viewGroup = this.q;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            this.q = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public View y() {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController != null) {
            return iAmraidWebViewController.b;
        }
        return null;
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public int z() {
        IAmraidWebViewController iAmraidWebViewController = this.n;
        if (iAmraidWebViewController != null) {
            return (iAmraidWebViewController.b == null || !iAmraidWebViewController.o()) ? com.fyber.inneractive.sdk.util.l.c(this.n.e0) : com.fyber.inneractive.sdk.util.l.c(this.n.b.getHeight());
        }
        return -1;
    }
}
