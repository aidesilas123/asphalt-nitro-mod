package com.fyber.inneractive.sdk.renderers;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.fyber.inneractive.sdk.activities.InneractiveFullscreenAdActivity;
import com.fyber.inneractive.sdk.activities.InneractiveRichMediaVideoPlayerActivityCore;
import com.fyber.inneractive.sdk.config.enums.Orientation;
import com.fyber.inneractive.sdk.external.InneractiveAdSpot;
import com.fyber.inneractive.sdk.external.InneractiveAdViewEventsListener;
import com.fyber.inneractive.sdk.external.InneractiveAdViewUnitController;
import com.fyber.inneractive.sdk.external.InneractiveAdViewVideoContentController;
import com.fyber.inneractive.sdk.external.InneractiveContentController;
import com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController;
import com.fyber.inneractive.sdk.external.InneractiveUnitController;
import com.fyber.inneractive.sdk.external.VideoContentListener;
import com.fyber.inneractive.sdk.external.WebViewRendererProcessHasGoneError;
import com.fyber.inneractive.sdk.flow.f0;
import com.fyber.inneractive.sdk.flow.q;
import com.fyber.inneractive.sdk.flow.r;
import com.fyber.inneractive.sdk.network.u;
import com.fyber.inneractive.sdk.player.c;
import com.fyber.inneractive.sdk.player.controller.t;
import com.fyber.inneractive.sdk.player.controller.w;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;
import com.fyber.inneractive.sdk.util.x;
import com.fyber.inneractive.sdk.util.z;
import com.google.android.gms.drive.DriveFile;

/* JADX INFO: loaded from: classes2.dex */
public class h extends r<f0, InneractiveAdViewEventsListener> implements com.fyber.inneractive.sdk.interfaces.b, InneractiveNativeVideoContentController.Renderer, z.e {
    public FrameLayout l;
    public com.fyber.inneractive.sdk.player.ui.h m;
    public t n;
    public VideoContentListener o;
    public ViewGroup q;
    public n r;
    public Runnable u;
    public final c.InterfaceC0169c p = new a();
    public float s = 0.0f;
    public Rect t = new Rect();
    public boolean v = false;
    public final t.a w = new b();

    public class a implements c.InterfaceC0169c {
        public a() {
        }

        @Override // com.fyber.inneractive.sdk.player.c.InterfaceC0169c
        public void a(com.fyber.inneractive.sdk.player.c cVar) {
            t tVar = h.this.n;
            if (tVar != null) {
                tVar.d(false);
                h.this.n.h();
            }
        }
    }

    public class b implements t.a {
        public b() {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public x.a a(k0 k0Var, com.fyber.inneractive.sdk.util.e eVar) {
            h hVar = h.this;
            Context context = hVar.m.getContext() == null ? com.fyber.inneractive.sdk.util.l.a : h.this.m.getContext();
            AdContent adcontent = h.this.b;
            return hVar.a(context, adcontent != 0 ? ((f0) adcontent).k() : null, k0Var, eVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x004d A[PHI: r0
          0x004d: PHI (r0v5 java.lang.String) = (r0v0 java.lang.String), (r0v6 java.lang.String) binds: [B:21:0x003a, B:25:0x0046] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // com.fyber.inneractive.sdk.player.controller.w
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public com.fyber.inneractive.sdk.util.x.a a(java.lang.String r3, com.fyber.inneractive.sdk.util.k0 r4, com.fyber.inneractive.sdk.web.b.a r5, boolean r6) {
            /*
                r2 = this;
                com.fyber.inneractive.sdk.renderers.h r5 = com.fyber.inneractive.sdk.renderers.h.this
                AdContent extends com.fyber.inneractive.sdk.flow.q r5 = r5.b
                r0 = 0
                if (r5 == 0) goto L2c
                com.fyber.inneractive.sdk.flow.f0 r5 = (com.fyber.inneractive.sdk.flow.f0) r5
                com.fyber.inneractive.sdk.external.InneractiveAdRequest r1 = r5.a
                if (r1 == 0) goto L2c
                T extends com.fyber.inneractive.sdk.response.e r5 = r5.b
                if (r5 == 0) goto L2c
                com.fyber.inneractive.sdk.response.g r5 = (com.fyber.inneractive.sdk.response.g) r5
                com.fyber.inneractive.sdk.model.vast.b r5 = r5.K
                if (r5 == 0) goto L26
                if (r6 != 0) goto L26
                com.fyber.inneractive.sdk.model.vast.c r5 = r5.h
                if (r5 == 0) goto L26
                com.fyber.inneractive.sdk.model.vast.i r5 = r5.b
                if (r5 == 0) goto L26
                java.lang.String r5 = r5.toString()
                goto L27
            L26:
                r5 = r0
            L27:
                com.fyber.inneractive.sdk.renderers.h r1 = com.fyber.inneractive.sdk.renderers.h.this
                r1.a(r5)
            L2c:
                boolean r5 = android.text.TextUtils.isEmpty(r3)
                if (r5 == 0) goto L4e
                com.fyber.inneractive.sdk.renderers.h r3 = com.fyber.inneractive.sdk.renderers.h.this
                AdContent extends com.fyber.inneractive.sdk.flow.q r3 = r3.b
                com.fyber.inneractive.sdk.flow.f0 r3 = (com.fyber.inneractive.sdk.flow.f0) r3
                T extends com.fyber.inneractive.sdk.response.e r5 = r3.b
                if (r5 == 0) goto L4d
                com.fyber.inneractive.sdk.response.g r5 = (com.fyber.inneractive.sdk.response.g) r5
                com.fyber.inneractive.sdk.model.vast.b r5 = r5.K
                com.fyber.inneractive.sdk.model.vast.c r5 = r5.h
                if (r5 == 0) goto L46
                java.lang.String r0 = r5.f2080g
            L46:
                if (r0 != 0) goto L4d
                java.lang.String r3 = r3.k()
                goto L4e
            L4d:
                r3 = r0
            L4e:
                com.fyber.inneractive.sdk.renderers.h r5 = com.fyber.inneractive.sdk.renderers.h.this
                android.app.Application r0 = com.fyber.inneractive.sdk.util.l.a
                android.view.ViewGroup r1 = r5.q
                if (r1 == 0) goto L62
                android.content.Context r1 = r1.getContext()
                if (r1 == 0) goto L62
                android.view.ViewGroup r0 = r5.q
                android.content.Context r0 = r0.getContext()
            L62:
                if (r6 == 0) goto L67
                com.fyber.inneractive.sdk.util.e r6 = com.fyber.inneractive.sdk.util.e.DEFAULT_ENDCARD
                goto L69
            L67:
                com.fyber.inneractive.sdk.util.e r6 = com.fyber.inneractive.sdk.util.e.VAST_ENDCARD
            L69:
                com.fyber.inneractive.sdk.util.x$a r3 = r5.a(r0, r3, r4, r6)
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.fyber.inneractive.sdk.renderers.h.b.a(java.lang.String, com.fyber.inneractive.sdk.util.k0, com.fyber.inneractive.sdk.web.b$a, boolean):com.fyber.inneractive.sdk.util.x$a");
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void a(View view, String str) {
            if (view == null || view.getContext() == null) {
                return;
            }
            InneractiveRichMediaVideoPlayerActivityCore.startRichMediaIntent(view.getContext(), str);
            h.this.D();
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void a(String str, String str2) {
            h hVar = h.this;
            hVar.getClass();
            IAlog.a("%s ad view video ad renderer callback: onSuspiciousNoUserWebActionDetected", IAlog.a(hVar));
            ViewGroup viewGroup = h.this.q;
            if (viewGroup == null || viewGroup.getContext() == null) {
                return;
            }
            h hVar2 = h.this;
            if (hVar2.v) {
                IAlog.a("%s redirect already reported for this ad", IAlog.a(hVar2));
                return;
            }
            u.a(hVar2.q.getContext(), str, str2, h.this.b);
            h.this.v = true;
            h hVar3 = h.this;
            hVar3.getClass();
            IAlog.a("%s reporting auto redirect", IAlog.a(hVar3));
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void a(boolean z) {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void a(boolean z, Orientation orientation) {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.t.a
        public void c() {
            h hVar = h.this;
            EventsListener eventslistener = hVar.c;
            if (eventslistener != 0) {
                ((InneractiveAdViewEventsListener) eventslistener).onAdExpanded(hVar.a);
            }
            ViewGroup viewGroup = h.this.q;
            if (viewGroup == null || viewGroup.getContext() == null) {
                return;
            }
            h hVar2 = h.this;
            com.fyber.inneractive.sdk.display.a bVar = hVar2.b instanceof com.fyber.inneractive.sdk.dv.a ? new com.fyber.inneractive.sdk.display.b() : new com.fyber.inneractive.sdk.display.c();
            if (bVar instanceof com.fyber.inneractive.sdk.display.c) {
                Context context = hVar2.q.getContext();
                InneractiveAdSpot inneractiveAdSpot = h.this.a;
                Intent intent = new Intent(context, (Class<?>) InneractiveFullscreenAdActivity.class);
                intent.putExtra("spotId", inneractiveAdSpot.getLocalUniqueId());
                if (!(context instanceof Activity)) {
                    intent.setFlags(DriveFile.MODE_READ_ONLY);
                }
                try {
                    IAlog.a("%sIAInterstitialUtil: Opening interstitial for spot id: %s", IAlog.a(context), inneractiveAdSpot.getLocalUniqueId());
                    context.startActivity(intent);
                } catch (ActivityNotFoundException unused) {
                    IAlog.c("%sIAInterstitialUtil: InneractiveFullscreenAdActivity.class not found. Did you declare InneractiveFullscreenAdActivity in your manifest?", IAlog.a(context));
                }
            }
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void e() {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void g() {
            T t;
            com.fyber.inneractive.sdk.model.vast.c cVar;
            com.fyber.inneractive.sdk.model.vast.i iVar;
            AdContent adcontent = h.this.b;
            if (adcontent != 0) {
                f0 f0Var = (f0) adcontent;
                if (f0Var.a == null || (t = f0Var.b) == 0) {
                    return;
                }
                String string = null;
                com.fyber.inneractive.sdk.model.vast.b bVar = ((com.fyber.inneractive.sdk.response.g) t).K;
                if (bVar != null && (cVar = bVar.h) != null && (iVar = cVar.b) != null) {
                    string = iVar.toString();
                }
                h.this.a(string);
            }
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void h() {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void j() {
            h.this.a(new WebViewRendererProcessHasGoneError());
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void k() {
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void l() {
            h hVar = h.this;
            f0 f0Var = (f0) hVar.b;
            if (f0Var.j) {
                return;
            }
            f0Var.j = true;
            hVar.E();
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void onCompleted() {
            com.fyber.inneractive.sdk.player.ui.h hVar;
            h hVar2 = h.this;
            VideoContentListener videoContentListener = hVar2.o;
            if (videoContentListener == null || (hVar = hVar2.m) == null || !((com.fyber.inneractive.sdk.player.ui.d) hVar).f2650e) {
                return;
            }
            videoContentListener.onCompleted();
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void onPlayerError() {
            com.fyber.inneractive.sdk.player.ui.h hVar;
            h hVar2 = h.this;
            VideoContentListener videoContentListener = hVar2.o;
            if (videoContentListener == null || (hVar = hVar2.m) == null || !((com.fyber.inneractive.sdk.player.ui.d) hVar).f2650e) {
                return;
            }
            videoContentListener.onPlayerError();
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void onProgress(int i, int i2) {
            com.fyber.inneractive.sdk.player.ui.h hVar;
            h hVar2 = h.this;
            VideoContentListener videoContentListener = hVar2.o;
            if (videoContentListener == null || (hVar = hVar2.m) == null || !((com.fyber.inneractive.sdk.player.ui.d) hVar).f2650e) {
                return;
            }
            videoContentListener.onProgress(i, i2);
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public com.fyber.inneractive.sdk.ignite.k q() {
            return com.fyber.inneractive.sdk.ignite.k.NONE;
        }

        @Override // com.fyber.inneractive.sdk.player.controller.w
        public void s() {
            h hVar = h.this;
            if (hVar.c != 0) {
                hVar.D();
            }
        }
    }

    public static /* synthetic */ boolean a(h hVar, boolean z) {
        hVar.getClass();
        return z;
    }

    public final void J() {
        ViewGroup viewGroup;
        Runnable runnable = this.u;
        if (runnable == null || (viewGroup = this.q) == null) {
            return;
        }
        viewGroup.removeCallbacks(runnable);
        this.u = null;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a() {
        t tVar = this.n;
        if (tVar != null) {
            tVar.a();
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a(int i) {
    }

    @Override // com.fyber.inneractive.sdk.util.z.e
    public void a(View view, float f2, Rect rect) {
        if (this.s == f2 && this.t.equals(rect)) {
            return;
        }
        this.s = f2;
        this.t.set(rect);
        t tVar = this.n;
        if (tVar != null) {
            tVar.b(false);
            ((com.fyber.inneractive.sdk.player.ui.d) this.m).b();
            this.n.a(f2);
        }
        if (f2 <= 0.0f) {
            J();
            return;
        }
        J();
        i iVar = new i(this);
        this.u = iVar;
        this.q.postDelayed(iVar, 100L);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void a(ViewGroup viewGroup) {
        Bitmap bitmap;
        InneractiveAdSpot inneractiveAdSpot = this.a;
        if (inneractiveAdSpot == null) {
            IAlog.e("%sYou must set the spot to render before calling renderAd", IAlog.a(this));
            return;
        }
        this.q = viewGroup;
        InneractiveUnitController selectedUnitController = inneractiveAdSpot.getSelectedUnitController();
        if (selectedUnitController instanceof InneractiveAdViewUnitController) {
            InneractiveContentController selectedContentController = selectedUnitController.getSelectedContentController();
            if (selectedContentController != null) {
                if (selectedContentController instanceof InneractiveAdViewVideoContentController) {
                    this.o = ((InneractiveAdViewVideoContentController) selectedContentController).getEventsListener();
                } else {
                    IAlog.e("%sContent controller expected to be InneractiveFullscreenVideoContentController and is %s", IAlog.a(this), selectedContentController.getClass().getSimpleName());
                }
            }
        } else {
            IAlog.e("%sWrong type of unit controller found. Expecting InneractiveAdViewUnitController", IAlog.a(this));
        }
        this.v = false;
        this.l = new FrameLayout(viewGroup.getContext());
        AdContent adcontent = this.b;
        com.fyber.inneractive.sdk.player.h hVar = adcontent != 0 ? ((f0) adcontent).i : null;
        Context context = viewGroup.getContext();
        if (hVar != null) {
            ((com.fyber.inneractive.sdk.player.e) hVar.f2635f).getClass();
            com.fyber.inneractive.sdk.renderers.a aVar = new com.fyber.inneractive.sdk.renderers.a(hVar);
            this.r = aVar;
            this.m = aVar.a(context, ((f0) this.b).c);
            this.n = (t) this.r.a(this.a, (f0) this.b);
            this.q.addView(this.l, new ViewGroup.LayoutParams(-1, -2));
            this.q.setLayoutTransition(null);
            this.l.addView((View) this.m, new FrameLayout.LayoutParams(-2, -2, 17));
            this.n.a(this.w);
            this.n.d(this.r.c());
            this.r.a(this.p);
            if ((this.r instanceof com.fyber.inneractive.sdk.renderers.a) && (bitmap = ((com.fyber.inneractive.sdk.player.e) hVar.f2635f).k) != null) {
                this.n.a(bitmap);
            }
            z zVar = z.d.a;
            ViewGroup viewGroup2 = this.q;
            zVar.getClass();
            zVar.a(viewGroup2.getContext(), viewGroup2, this);
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public boolean a(View view) {
        return view.equals(this.q);
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public boolean a(q qVar) {
        return qVar instanceof f0;
    }

    @Override // com.fyber.inneractive.sdk.flow.r, com.fyber.inneractive.sdk.external.InneractiveAdRenderer
    public void destroy() {
        u();
        super.destroy();
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public int f() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void n() {
        t tVar = this.n;
        if (tVar != null) {
            tVar.d(false);
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public int p() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController.Renderer
    public void pauseVideo() {
        t tVar = this.n;
        if (tVar != null) {
            tVar.pauseVideo();
        }
    }

    @Override // com.fyber.inneractive.sdk.external.InneractiveNativeVideoContentController.Renderer
    public void playVideo() {
        t tVar = this.n;
        if (tVar != null) {
            tVar.b(0);
        }
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void r() {
    }

    @Override // com.fyber.inneractive.sdk.interfaces.b
    public void u() {
        J();
        z.d.a.a(this.q);
        IAlog.a("%sunbind called. root is %s", IAlog.a(this), this.q);
        if (this.n != null) {
            IAlog.a("%sdestroying video ui controller", IAlog.a(this));
            this.n.a((w) null);
            this.n.destroy();
            this.n = null;
        }
        if (this.m != null) {
            this.q.setLayoutTransition(null);
            this.q.removeView(this.l);
            this.m.destroy();
            this.m = null;
        }
    }

    @Override // com.fyber.inneractive.sdk.flow.r
    public View y() {
        return this.l;
    }
}
