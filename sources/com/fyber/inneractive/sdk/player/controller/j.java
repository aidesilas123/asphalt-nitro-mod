package com.fyber.inneractive.sdk.player.controller;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.widget.ImageView;
import com.fyber.inneractive.sdk.config.IAConfigManager;
import com.fyber.inneractive.sdk.config.a0;
import com.fyber.inneractive.sdk.config.enums.TapAction;
import com.fyber.inneractive.sdk.player.controller.n;
import com.fyber.inneractive.sdk.player.controller.t;
import com.fyber.inneractive.sdk.player.enums.VideoClickOrigin;
import com.fyber.inneractive.sdk.util.IAlog;
import com.fyber.inneractive.sdk.util.k0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends n<t.a> implements t {
    public Runnable C;
    public float D;
    public float E;
    public boolean F;
    public boolean G;
    public boolean H;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.h(false);
            j.this.C = null;
        }
    }

    public j(com.fyber.inneractive.sdk.player.c cVar, com.fyber.inneractive.sdk.player.ui.l lVar, a0 a0Var, com.fyber.inneractive.sdk.config.global.s sVar, boolean z, String str, boolean z2) {
        super(cVar, lVar, a0Var, sVar, z, str, z2);
        this.E = 0.0f;
        this.F = false;
        this.G = false;
        this.H = false;
        this.D = ((a0) this.b).b().b().intValue() / 100.0f;
        I();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void A() {
        super.A();
        J();
        this.f2176d.b(false);
        this.F = true;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public boolean B() {
        return false;
    }

    public final void F() {
        if (this.f2179g == 0 || this.H) {
            return;
        }
        H();
        super.l();
        ((t.a) this.f2179g).c();
        IAlog.a("%sopening fullscreen", IAlog.a(this));
        this.H = true;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null) {
            com.fyber.inneractive.sdk.player.e eVar = (com.fyber.inneractive.sdk.player.e) cVar;
            eVar.a(eVar.v, VideoClickOrigin.InvalidOrigin, com.fyber.inneractive.sdk.model.vast.t.EVENT_FULLSCREEN, com.fyber.inneractive.sdk.model.vast.t.EVENT_EXPAND);
        }
    }

    public final void G() {
        com.fyber.inneractive.sdk.player.c cVar;
        g gVar;
        com.fyber.inneractive.sdk.player.ui.l lVar;
        if (this.E < this.D || (cVar = this.a) == null || (gVar = cVar.b) == null || gVar.f2173e.equals(com.fyber.inneractive.sdk.player.enums.b.Completed) || (lVar = this.f2176d) == null || lVar.f() || this.a.b.j == null) {
            return;
        }
        if (((a0) this.b).f1942f.a.booleanValue() || this.F) {
            b(IAConfigManager.M.i.a);
        }
    }

    public final void H() {
        if (this.C != null) {
            IAlog.a("%sCancelling play runnable", IAlog.a(this));
            this.f2176d.removeCallbacks(this.C);
            this.C = null;
        }
    }

    public final void I() {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null || gVar.n) {
            return;
        }
        if (((a0) this.b).f1942f.f1947d.booleanValue()) {
            this.a.b.b(false);
        } else {
            if (t()) {
                return;
            }
            this.a.b.d(false);
        }
    }

    public void J() {
        com.fyber.inneractive.sdk.player.ui.l lVar;
        ImageView imageView;
        if (((a0) this.b).f1942f.i != TapAction.FULLSCREEN && (imageView = (lVar = this.f2176d).v) != null) {
            imageView.setVisibility(0);
            lVar.v.setSelected(false);
        }
        C();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.t
    public void a() {
        g gVar;
        IAlog.a("%sfullscreenExited called", IAlog.a(this));
        this.H = false;
        b(this.G);
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null) {
            return;
        }
        a(gVar.f2173e);
        a(this.a.b.c());
    }

    @Override // com.fyber.inneractive.sdk.player.controller.t
    public void a(float f2) {
        g gVar;
        this.E = f2;
        if (IAlog.a >= 3) {
            IAlog.c("%sonVisibilityChanged called with: %s vfpl = %s vfpa = %s", IAlog.a(this), Float.valueOf(f2), Float.valueOf(this.D), Float.valueOf(1.0f - this.D));
        }
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null) {
            return;
        }
        if (gVar.f2173e != com.fyber.inneractive.sdk.player.enums.b.Playing) {
            G();
            return;
        }
        if (f2 <= this.D) {
            IAlog.a(this);
            if (this.a.b.j != null) {
                this.F = false;
                a(false, (n.f) null);
                H();
                super.pauseVideo();
                g(false);
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void a(k0 k0Var) {
        TapAction tapAction = ((a0) this.b).f1942f.i;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || cVar.b == null || this.E >= this.D) {
            if (tapAction == TapAction.CTR) {
                if (a(false, VideoClickOrigin.CTA, k0Var)) {
                    a(false, (n.f) new k(this));
                }
            } else if (tapAction == TapAction.FULLSCREEN) {
                F();
            } else if (tapAction != TapAction.DO_NOTHING) {
                IAlog.a("%sonVideoClicked called, but we recieved an unknown tap action %s", IAlog.a(this), tapAction);
            } else if (cVar != null) {
                cVar.d();
            }
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.ui.i
    public void a(boolean z) {
        if (z) {
            a(this.E);
        }
        super.a(z);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.b
    public void b(int i) {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || (gVar = cVar.b) == null || gVar.f2173e == com.fyber.inneractive.sdk.player.enums.b.Playing || this.C != null) {
            return;
        }
        IAlog.a("%splayVideo %s", IAlog.a(this), this.f2176d);
        if (i == 0) {
            h(false);
            return;
        }
        a aVar = new a();
        this.C = aVar;
        this.f2176d.postDelayed(aVar, i);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.t
    public void b(boolean z) {
        com.fyber.inneractive.sdk.player.c cVar;
        g gVar;
        this.G = z;
        if (!z || (cVar = this.a) == null || (gVar = cVar.b) == null || gVar.j != null || !this.f2176d.f2650e || gVar.f2173e.equals(com.fyber.inneractive.sdk.player.enums.b.Completed)) {
            return;
        }
        k();
        a(this.E);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.controller.b
    public void d(boolean z) {
        g gVar;
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null && (gVar = cVar.b) != null && !gVar.f2173e.equals(com.fyber.inneractive.sdk.player.enums.b.Completed)) {
            J();
        }
        com.fyber.inneractive.sdk.player.c cVar2 = this.a;
        Bitmap bitmap = cVar2 != null ? cVar2.k : null;
        if (bitmap != null) {
            this.f2176d.b(true);
            this.f2176d.setLastFrameBitmap(bitmap);
        }
        super.d(z);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.controller.b
    public void destroy() {
        H();
        this.f2179g = null;
        super.destroy();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.controller.b
    public boolean e() {
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.ui.i
    public void f() {
        IAlog.a("%sonVideoViewDetachedFromWindow", IAlog.a(this));
        l();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void h(boolean z) {
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || cVar.b == null) {
            return;
        }
        I();
        super.h(z);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    @SuppressLint({"NewApi"})
    public boolean k() {
        super.k();
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar != null && cVar.b != null) {
            IAlog.a("%sconnectToTextureView playing state = %s", IAlog.a(this), this.a.b.f2173e);
            if (this.a.b.j()) {
                this.f2176d.c(!this.a.j);
                com.fyber.inneractive.sdk.player.ui.l lVar = this.f2176d;
                com.fyber.inneractive.sdk.player.ui.c cVar2 = new com.fyber.inneractive.sdk.player.ui.c();
                cVar2.b = false;
                lVar.d(new com.fyber.inneractive.sdk.player.ui.b(cVar2));
                this.f2176d.b(false);
                I();
            }
        }
        a(this.E);
        return true;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void l() {
        H();
        super.l();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public int o() {
        return IAConfigManager.M.u.b.a("VideoAdBufferingTimeout", 5, 1) * 1000;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n, com.fyber.inneractive.sdk.player.controller.b
    public void pauseVideo() {
        H();
        super.pauseVideo();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public int s() {
        return 0;
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void u() {
        IAlog.a("%s onBufferingTimeout reached. Skipping to end card", IAlog.a(this));
        if (this.f2176d.f2650e) {
            this.u = true;
            c(false);
        }
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void w() {
        F();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void x() {
        j();
        this.f2176d.a(false);
        D();
        H();
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void y() {
        com.fyber.inneractive.sdk.player.c cVar = this.a;
        if (cVar == null || cVar.b == null) {
            return;
        }
        k();
        h(false);
    }

    @Override // com.fyber.inneractive.sdk.player.controller.n
    public void z() {
        G();
    }
}
