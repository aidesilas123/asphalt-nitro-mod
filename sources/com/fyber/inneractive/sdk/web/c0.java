package com.fyber.inneractive.sdk.web;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import com.fyber.inneractive.sdk.measurement.a;
import com.fyber.inneractive.sdk.web.d0;
import com.fyber.inneractive.sdk.web.i;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class c0<T extends d0> extends com.fyber.inneractive.sdk.web.d<T> {
    public boolean A;
    public boolean B;
    public boolean C;
    public boolean D;
    public boolean E;
    public com.fyber.inneractive.sdk.mraid.b0 F;
    public i.g G;
    public com.fyber.inneractive.sdk.measurement.a H;
    public a.InterfaceC0164a I;
    public final Runnable J;
    public ViewTreeObserver.OnPreDrawListener K;
    public final Runnable L;
    public final Runnable M;
    public int t;
    public int u;
    public int v;
    public int w;
    public int x;
    public int y;
    public boolean z;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = c0.this.b;
            if (gVar != null) {
                gVar.getViewTreeObserver().addOnPreDrawListener(c0.this.K);
            }
        }
    }

    public class b implements ViewTreeObserver.OnPreDrawListener {
        public b() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            g gVar;
            g gVar2 = c0.this.b;
            if (gVar2 == null) {
                return false;
            }
            gVar2.getViewTreeObserver().removeOnPreDrawListener(this);
            c0.this.m();
            c0 c0Var = c0.this;
            c0Var.a(new com.fyber.inneractive.sdk.mraid.x(c0Var.G));
            c0 c0Var2 = c0.this;
            if (c0Var2.G == i.g.INTERSTITIAL && (gVar = c0Var2.b) != null) {
                gVar.a("if (window.showInterstitial) { showInterstitial(); }");
            }
            c0.this.k();
            c0 c0Var3 = c0.this;
            c0Var3.a(c0Var3.l(), true);
            c0.this.q();
            com.fyber.inneractive.sdk.util.m.b.postDelayed(c0.this.L, 100L);
            return false;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.InterfaceC0164a interfaceC0164a;
            c0 c0Var = c0.this;
            if (c0Var.H == null || (interfaceC0164a = c0Var.I) == null) {
                return;
            }
            interfaceC0164a.a();
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = c0.this.b;
            if (gVar != null) {
                gVar.a("if (FyberMraidVideoController.getCurrentTime() < 0.2) { var ifr = document.createElement('iframe'); var container = document.body || document.documentElement; container.appendChild(ifr); ifr.setAttribute('sandbox', ''); ifr.setAttribute('style', 'position: fixed; bottom: -20px; border: none; visibility: hidden; height: 20px; z-index: -99999'); ifr.setAttribute('src','FyMraidVideo://fyMraidVideoAdPlaybackFailure'); console.log('dispatched closure event'); } else { console.log('video has progressed'); };");
            }
        }
    }

    public c0(Context context, boolean z, boolean z2, i.g gVar) {
        super(context, z, z2);
        this.t = -1;
        this.u = -1;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.y = -1;
        this.z = false;
        this.A = true;
        this.B = false;
        this.C = false;
        this.D = false;
        this.F = com.fyber.inneractive.sdk.mraid.b0.HIDDEN;
        this.I = null;
        this.J = new a();
        this.K = new b();
        this.L = new c();
        this.M = new d();
        this.G = gVar;
    }

    public void a(Context context, boolean z) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (context != null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (Build.VERSION.SDK_INT >= 17) {
                windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
            } else {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            }
        }
        int iA = com.fyber.inneractive.sdk.util.l.a(context);
        int iA2 = com.fyber.inneractive.sdk.util.l.a(context, iA);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        double d2 = i;
        double d3 = 160.0d / ((double) displayMetrics.densityDpi);
        int widthDp = (int) (d2 * d3);
        int heightDp = (int) (((double) i2) * d3);
        int iB = (i2 - iA) - iA2;
        g gVar = this.b;
        if (gVar == null || gVar.getScaleX() == 1.0f || this.b.getScaleY() == 1.0f) {
            this.t = (int) (d2 * (160.0d / ((double) displayMetrics.densityDpi)));
        } else {
            widthDp = this.b.getWidthDp();
            heightDp = this.b.getHeightDp();
            iB = (com.fyber.inneractive.sdk.util.l.b(this.b.getHeightDp()) - iA) - iA2;
            this.t = this.v;
        }
        this.u = (int) (((double) iB) * (160.0d / ((double) displayMetrics.densityDpi)));
        if (this.v == widthDp && this.w == heightDp) {
            return;
        }
        this.v = widthDp;
        this.w = heightDp;
        if (z) {
            a(new com.fyber.inneractive.sdk.mraid.y(widthDp, heightDp));
            a(new com.fyber.inneractive.sdk.mraid.w(this.t, this.u));
            a(new com.fyber.inneractive.sdk.mraid.v(0, 0, this.t, this.u));
            int i3 = this.x;
            if (i3 > 0 && this.y > 0) {
                a(new com.fyber.inneractive.sdk.mraid.t(com.fyber.inneractive.sdk.util.l.c(i3), com.fyber.inneractive.sdk.util.l.c(this.y)));
                return;
            }
            g gVar2 = this.b;
            if (gVar2 == null || gVar2.getWidth() <= 0 || this.b.getHeight() <= 0) {
                return;
            }
            a(new com.fyber.inneractive.sdk.mraid.t(com.fyber.inneractive.sdk.util.l.c(this.b.getWidth()), com.fyber.inneractive.sdk.util.l.c(this.b.getHeight())));
        }
    }

    public void a(com.fyber.inneractive.sdk.mraid.u uVar) {
        if (this.b != null) {
            String str = "{" + uVar.toString() + "}";
            this.b.a("window.mraidbridge.fireChangeEvent(" + str + ");");
        }
    }

    public void a(ArrayList<com.fyber.inneractive.sdk.mraid.u> arrayList) {
        if (this.b != null) {
            String string = arrayList.toString();
            if (string.length() < 2) {
                return;
            }
            String str = "{" + string.substring(1, string.length() - 1) + "}";
            this.b.a("window.mraidbridge.fireChangeEvent(" + str + ");");
        }
    }

    public void k() {
        g gVar = this.b;
        if (gVar != null) {
            gVar.a("window.mraidbridge.fireReadyEvent();");
        }
    }

    public Context l() {
        g gVar = this.b;
        if (gVar != null) {
            return gVar.getContext();
        }
        return null;
    }

    public void m() {
        ArrayList<com.fyber.inneractive.sdk.mraid.u> arrayList = new ArrayList<>();
        g gVar = this.b;
        if (gVar == null || gVar.getScaleX() == 1.0f || this.b.getScaleY() == 1.0f) {
            arrayList.add(new com.fyber.inneractive.sdk.mraid.y(this.v, this.w));
            arrayList.add(new com.fyber.inneractive.sdk.mraid.w(this.t, this.u));
        } else {
            int widthDp = this.b.getWidthDp();
            int heightDp = this.b.getHeightDp();
            arrayList.add(new com.fyber.inneractive.sdk.mraid.y(widthDp, heightDp));
            arrayList.add(new com.fyber.inneractive.sdk.mraid.w(widthDp, heightDp));
        }
        g gVar2 = this.b;
        int iC = com.fyber.inneractive.sdk.util.l.c(gVar2 != null ? gVar2.getWidth() : this.t);
        g gVar3 = this.b;
        arrayList.add(new com.fyber.inneractive.sdk.mraid.v(0, 0, iC, com.fyber.inneractive.sdk.util.l.c(gVar3 != null ? gVar3.getHeight() : this.u)));
        a(arrayList);
        com.fyber.inneractive.sdk.mraid.b0 b0Var = com.fyber.inneractive.sdk.mraid.b0.DEFAULT;
        this.F = b0Var;
        a(new com.fyber.inneractive.sdk.mraid.z(b0Var));
    }

    public void n() {
        g gVar = this.b;
        if (gVar != null) {
            this.B = true;
            if (Build.VERSION.SDK_INT >= 17 && this.z) {
                gVar.getSettings().setMediaPlaybackRequiresUserGesture(false);
            }
            com.fyber.inneractive.sdk.util.m.b.postDelayed(this.J, 0L);
        }
    }

    public boolean o() {
        return this.F == com.fyber.inneractive.sdk.mraid.b0.EXPANDED;
    }

    public boolean p() {
        i.g gVar = this.G;
        return gVar != null && gVar.equals(i.g.INTERSTITIAL);
    }

    public void q() {
        g gVar;
        if (this.B && this.C && this.z && (gVar = this.b) != null) {
            gVar.a("FyberMraidVideoController.play()");
            Runnable runnable = this.M;
            if (runnable != null) {
                com.fyber.inneractive.sdk.util.m.b.postDelayed(runnable, 5000L);
            }
            if (this.D) {
                this.b.a("FyberMraidVideoController.mute(true)");
            }
        }
    }

    public void setAdDefaultSize(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public void setAutoplayMRAIDVideos(boolean z) {
        this.z = z;
    }

    public void setCenteringTagsRequired(boolean z) {
        this.A = z;
    }
}
