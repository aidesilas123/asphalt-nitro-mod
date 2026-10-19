package com.bytedance.sdk.openadsdk.core.video.c;

import android.content.Context;
import android.text.TextUtils;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.webkit.ProxyConfig;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.g.f;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.o;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.video.c.d;
import com.bytedance.sdk.openadsdk.layout.TTVideoPlayLayoutForLiveLayout;
import com.bytedance.sdk.openadsdk.n.a.e;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;

/* JADX INFO: compiled from: BaseVideoController.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends com.bytedance.sdk.openadsdk.core.video.a.a {
    protected long D;
    protected boolean E;
    f F;
    final d.b G;
    private final g H;
    private long I;
    private long J;
    private boolean K;
    private final int L;
    private final Runnable M;

    public a(Context context, ViewGroup viewGroup, q qVar, g gVar) {
        super(context, qVar, viewGroup);
        this.I = 0L;
        this.J = 0L;
        this.K = false;
        this.D = 0L;
        this.E = false;
        this.G = new d.b() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1
            private boolean b = true;

            @Override // com.bytedance.sdk.openadsdk.core.video.c.d.b
            public void a(int i, int i2) {
                a aVar = a.this;
                aVar.b(aVar.H);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).v.f476d = ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1695e.t();
                a.this.C();
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).s.set(false);
                a aVar2 = a.this;
                aVar2.a(aVar2.H);
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "onCompletion: ");
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.L();
                    }
                });
                com.bytedance.sdk.openadsdk.core.g.a aVarAu = ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g.au();
                if (aVarAu != null && aVarAu.a() != null) {
                    long jE = a.this.e();
                    aVarAu.a().d(jE);
                    aVarAu.a().e(jE);
                }
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 5);
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.a(9);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "IVideoPlayerCallback onBufferEnd: " + i);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).w = false;
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.removeCallbacks(a.this.M);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.b();
                        }
                    }
                });
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 0);
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.a(5);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i, int i2) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "IVideoPlayerCallback onVideoSizeChanged: " + i + "x" + i2);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!a.this.M()) {
                            a.this.N();
                            return;
                        }
                        if (o.b(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g) || ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).v.f1698e == 4) {
                            a.this.g(true);
                            return;
                        }
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g.A() == 3) {
                            a.this.g(true);
                        } else if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g.A() == 0) {
                            a.this.Q();
                        } else {
                            a.this.P();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i, int i2, int i3) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "IVideoPlayerCallback onBufferStart: " + i + ", " + i2 + ", " + i3);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).w = true;
                a.this.K();
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.q();
                        }
                    }
                });
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 3);
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.a(4);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, long j) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "onRenderStart: ");
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).w = false;
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.removeCallbacks(a.this.M);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.b();
                        }
                    }
                });
                if (!((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).s.get()) {
                    a aVar2 = a.this;
                    aVar2.D = j;
                    aVar2.a(aVar2.H);
                    a.this.E();
                }
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.c();
                }
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 0);
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, long j, long j2) {
                if (Math.abs(j - ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).h) < 50) {
                    return;
                }
                a aVar2 = a.this;
                aVar2.a(aVar2.H);
                a.this.a(j, j2);
                com.bytedance.sdk.openadsdk.core.g.a aVarAu = ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g.au();
                if (aVarAu != null && aVarAu.a() != null) {
                    aVarAu.a().a(j, j2, a.this.F);
                }
                if (!this.b || j2 - j >= 500) {
                    return;
                }
                this.b = false;
                a(aVar);
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, com.bykv.vk.openvk.component.video.api.c.a aVar2) {
                l.e(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "onError: " + aVar2.a() + "," + aVar2.b() + "," + aVar2.c());
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.removeCallbacks(a.this.M);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.b();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).z != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).z.b(a.this.J, com.bykv.vk.openvk.component.video.a.e.a.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).h, ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).B));
                        }
                    }
                });
                a.this.a(aVar2);
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 6);
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.a(14);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, boolean z) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "onSeekCompletion: " + z);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.removeCallbacks(a.this.M);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.b();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void b(com.bykv.vk.openvk.component.video.api.a aVar) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "onPrepared: ");
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.removeCallbacks(a.this.M);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.b();
                        }
                    }
                });
                a aVar2 = a.this;
                f fVar = aVar2.F;
                if (fVar != null) {
                    fVar.a(aVar2.h(), a.this.n());
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void b(com.bykv.vk.openvk.component.video.api.a aVar, int i) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void c(com.bykv.vk.openvk.component.video.api.a aVar) {
                l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "IVideoPlayerCallback onRelease: ");
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void d(com.bykv.vk.openvk.component.video.api.a aVar) {
                com.bytedance.sdk.openadsdk.core.g.a aVarAu = ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g.au();
                if (aVarAu != null && aVarAu.a() != null) {
                    aVarAu.a().b(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).h);
                }
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 3);
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.a(0);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void e(com.bykv.vk.openvk.component.video.api.a aVar) {
                e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1697g, 0);
                f fVar = a.this.F;
                if (fVar != null) {
                    fVar.a(1);
                }
            }
        };
        this.M = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.3
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).z != null) {
                    a.this.r();
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).z.a();
                }
            }
        };
        this.H = gVar;
        this.L = qVar.aZ();
        if (qVar.at() && qVar.au() != null && this.x != null) {
            if (this.F == null) {
                this.F = f.a();
            }
            this.F.a(this.x, qVar.au().n());
        }
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = new com.bytedance.sdk.openadsdk.core.video.nativevideo.e(context.getApplicationContext(), new TTVideoPlayLayoutForLiveLayout(context), true, 17, this.f1697g, this);
        this.f1696f = eVar;
        eVar.a(this);
    }

    private void J() {
        this.f1695e.c(D());
        this.f1695e.a(this.v);
        this.I = System.currentTimeMillis();
        this.f1696f.c(8);
        this.f1696f.c(0);
        a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.2
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1695e == null) {
                    return;
                }
                a.this.I = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.d(0);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1695e.a(true, ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).h, ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).o);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        int i = this.v.f1698e;
        int iO = (i == 2 || i == 1) ? com.bytedance.sdk.openadsdk.core.o.d().O() * 1000 : i == 4 ? com.bytedance.sdk.openadsdk.core.o.d().i(String.valueOf(this.L)) : 5000;
        this.b.removeCallbacks(this.M);
        this.b.postDelayed(this.M, iO);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void L() {
        if (this.f1696f == null) {
            return;
        }
        this.b.removeCallbacks(this.M);
        this.f1696f.b();
        this.J = System.currentTimeMillis() - this.I;
        if (!this.K) {
            this.K = true;
            long j = this.B;
            a(j, j);
            long j2 = this.B;
            this.h = j2;
            this.i = j2;
            b(this.H);
        }
        c.a aVar = this.z;
        if (aVar != null) {
            aVar.a(this.J, com.bykv.vk.openvk.component.video.a.e.a.a(this.h, this.B));
        }
        this.m = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean M() {
        return this.f1697g.al() == 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        ViewGroup viewGroup;
        try {
            if (H() != null && this.f1695e != null && (viewGroup = this.x) != null) {
                int width = viewGroup.getWidth();
                int height = this.x.getHeight();
                float fD = this.f1695e.d();
                float fE = this.f1695e.e();
                float f2 = width;
                float f3 = height;
                if (fD / (f2 * 1.0f) <= fE / (1.0f * f3)) {
                    f2 = (f3 / fE) * fD;
                } else {
                    f3 = (f2 / fD) * fE;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) f3);
                layoutParams.addRule(13);
                if (H() instanceof TextureView) {
                    ((TextureView) H()).setLayoutParams(layoutParams);
                } else if (H() instanceof SurfaceView) {
                    ((SurfaceView) H()).setLayoutParams(layoutParams);
                }
            }
        } catch (Throwable th) {
            l.c(this.a, "changeVideoSizeSupportInteraction error", th);
        }
    }

    private boolean O() {
        return H() == null || this.f1695e == null || this.f1697g.I() != null || this.f1697g.B() == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        try {
            l.c(this.a, "changeVideoSize start.......slot=" + this.f1697g.D());
            if (O()) {
                return;
            }
            l.c(this.a, "changeVideoSize start check condition complete ... go ..");
            int[] iArrB = ad.b(com.bytedance.sdk.openadsdk.core.o.a());
            boolean z = false;
            boolean z2 = this.f1697g.ak() == 1;
            float f2 = iArrB[0];
            float f3 = iArrB[1];
            float fD = this.f1695e.d();
            float fE = this.f1695e.e();
            if (z2) {
                if (fD > fE) {
                    l.b(this.a, "Separate adaptation for landscape to portrait .....");
                    a(f2, f3, fD, fE, true);
                    return;
                }
            } else if (fD < fE) {
                l.b(this.a, "Separate adaptation for portrait to landscape.....");
                a(f2, f3, fD, fE, false);
                return;
            }
            float f4 = fD / fE;
            float f5 = f2 / f3;
            l.b(this.a, "screenHeight=" + f3 + ",screenWidth=" + f2);
            l.b(this.a, "videoHeight=" + fE + ",videoWidth=" + fD);
            l.b(this.a, "video w/h,videoScale=" + f4 + ",screen  w/h .screenScale=" + f5 + ",VERTICAL_SCALE(9:16)=0.5625,HORIZONTAL_SCALE(16:9) =1.7777778");
            if (z2) {
                if (f5 < 0.5625f && f4 == 0.5625f) {
                    fD = (9.0f * f3) / 16.0f;
                    fE = f3;
                    z = true;
                }
            } else if (f5 > 1.7777778f && f4 == 1.7777778f) {
                fE = (9.0f * f2) / 16.0f;
                fD = f2;
                z = true;
            }
            l.c(this.a, "Width and height after adaptation：videoHeight=" + fE + ",videoWidth=" + fD);
            if (z) {
                f2 = fD;
                f3 = fE;
            } else {
                l.c(this.a, " Screen w/h == Video w/h and in other cases，use screen width and height，videoHeight=" + f3 + "，videoWidth=" + f2);
            }
            int i = (int) f2;
            int i2 = (int) f3;
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
            layoutParams.addRule(13);
            if (H() != null) {
                if (H() instanceof TextureView) {
                    ((TextureView) H()).setLayoutParams(layoutParams);
                } else if (H() instanceof SurfaceView) {
                    ((SurfaceView) H()).setLayoutParams(layoutParams);
                }
                ViewGroup.LayoutParams layoutParams2 = this.x.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.height = i2;
                    layoutParams2.width = i;
                    this.x.setLayoutParams(layoutParams2);
                }
            }
            l.b(this.a, "changeVideoSize .... complete ... end !!!");
        } catch (Throwable th) {
            l.c(this.a, "changeSize error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q() {
        try {
            if (H() != null && this.f1695e != null) {
                boolean z = this.f1697g.ak() == 1;
                int[] iArrB = ad.b(com.bytedance.sdk.openadsdk.core.o.a());
                a(iArrB[0], iArrB[1], this.f1695e.d(), this.f1695e.e(), z);
                l.b(this.a, "changeSize=end");
            }
        } catch (Throwable th) {
            l.a(this.a, "changeSize error", th);
        }
    }

    private void a(float f2, float f3, float f4, float f5, boolean z) {
        RelativeLayout.LayoutParams layoutParams;
        try {
            l.b(this.a, "sWh=" + f2 + "x" + f3 + ", vWH=" + f4 + "x" + f5 + ", " + z);
            if (f4 <= 0.0f || f5 <= 0.0f) {
                f4 = this.f1697g.K().c();
                f5 = this.f1697g.K().b();
            }
            if (f5 > 0.0f && f4 > 0.0f) {
                if (z) {
                    if (f4 < f5) {
                        return;
                    }
                    l.b(this.a, "Vertical screen mode use video width compute scale value");
                    layoutParams = new RelativeLayout.LayoutParams((int) f2, (int) ((f5 * f2) / f4));
                } else {
                    if (f4 > f5) {
                        return;
                    }
                    l.b(this.a, "Landscape screen mode use video height compute scale value");
                    layoutParams = new RelativeLayout.LayoutParams((int) ((f4 * f3) / f5), (int) f3);
                }
                layoutParams.addRule(13);
                if (H() != null) {
                    if (H() instanceof TextureView) {
                        ((TextureView) H()).setLayoutParams(layoutParams);
                    } else if (H() instanceof SurfaceView) {
                        ((SurfaceView) H()).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.x.getLayoutParams();
                    if (!com.bytedance.sdk.component.adexpress.c.b.a(com.bytedance.sdk.openadsdk.core.o.a()) || this.x.getHeight() <= 0 || layoutParams2 == null) {
                        return;
                    }
                    layoutParams2.width = layoutParams.width;
                    layoutParams2.height = layoutParams.height;
                    this.x.setLayoutParams(layoutParams2);
                }
            }
        } catch (Throwable th) {
            l.a(this.a, "changeSize error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final long j, final long j2) {
        this.f1697g.c(j);
        this.h = j;
        this.B = j2;
        final int iA = com.bykv.vk.openvk.component.video.a.e.a.a(j, j2);
        this.b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.c.a.4
            @Override // java.lang.Runnable
            public void run() {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.a(j, j2);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).f1696f.a(iA);
                try {
                    if (((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).z != null) {
                        ((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).z.a(j, j2);
                    }
                } catch (Throwable th) {
                    l.c(((com.bytedance.sdk.openadsdk.core.video.a.a) a.this).a, "onProgressUpdate error: ", th);
                }
            }
        });
    }

    public void F() {
        this.G.a((com.bykv.vk.openvk.component.video.api.a) null, 0, 0);
    }

    public void G() {
        if (this.K || !this.s.get()) {
            return;
        }
        A();
        com.bytedance.sdk.openadsdk.core.g.a aVarAu = this.f1697g.au();
        if (aVarAu == null || aVarAu.a() == null) {
            return;
        }
        aVarAu.a().c(e());
    }

    public com.bykv.vk.openvk.component.video.api.renderview.b H() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            return eVar.m();
        }
        return null;
    }

    public void I() {
        f fVar = this.F;
        if (fVar != null) {
            fVar.a(2);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
        d dVar = this.f1695e;
        if (dVar == null) {
            return;
        }
        if (dVar.f()) {
            a();
            this.f1696f.b(true, false);
            this.f1696f.f();
            return;
        }
        if (this.f1695e.g()) {
            b();
            com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
            if (eVar != null) {
                eVar.b(false, false);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar2 = this.f1696f;
        if (eVar2 != null) {
            eVar2.c(this.x);
        }
        d(this.h);
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar3 = this.f1696f;
        if (eVar3 != null) {
            eVar3.b(false, false);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(boolean z, int i) {
        c();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean a(@NonNull com.bykv.vk.openvk.component.video.api.c.c cVar) {
        View view;
        if (this.f1695e != null) {
            l.e(this.a, "playVideoUrl: already invoked");
            return false;
        }
        l.b(this.a, "video local url " + cVar.m());
        if (TextUtils.isEmpty(cVar.m())) {
            l.e(this.a, "No video info");
            return false;
        }
        b(cVar);
        cVar.c(1);
        this.E = !cVar.m().startsWith(ProxyConfig.MATCH_HTTP);
        if (this.F != null) {
            int iJ = this.v.f1698e == 1 ? com.bytedance.sdk.openadsdk.core.o.d().j(String.valueOf(this.L)) : com.bytedance.sdk.openadsdk.core.o.d().q(String.valueOf(this.L));
            ViewGroup viewGroup = this.x;
            if (viewGroup != null && (view = (View) viewGroup.getParent()) != null) {
                try {
                    View viewFindViewById = view.findViewById(i.l);
                    View viewFindViewById2 = view.findViewById(520093757);
                    View viewFindViewById3 = view.findViewById(i.bs);
                    f fVar = this.F;
                    FriendlyObstructionPurpose friendlyObstructionPurpose = FriendlyObstructionPurpose.OTHER;
                    fVar.a(viewFindViewById, friendlyObstructionPurpose);
                    this.F.a(viewFindViewById3, friendlyObstructionPurpose);
                    this.F.a(viewFindViewById2, friendlyObstructionPurpose);
                } catch (Throwable unused) {
                }
            }
            this.F.a(iJ > 0, iJ / 1000.0f);
        }
        C();
        if (cVar.g() > 0) {
            long jG = cVar.g();
            this.h = jG;
            this.i = Math.max(this.i, jG);
        }
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a();
            this.f1696f.g();
            this.f1696f.c(cVar.e(), cVar.f());
            this.f1696f.c(this.x);
        }
        d dVar = new d();
        this.f1695e = dVar;
        dVar.a(this.G);
        s();
        this.J = 0L;
        J();
        return true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a();
            this.f1696f.o();
            this.f1696f.r();
        }
        l.b(this.a, "resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.l));
        d dVar = this.f1695e;
        if (dVar != null) {
            if (dVar.g()) {
                if (!this.l) {
                    b(this.C);
                } else if (h.v()) {
                    this.f1695e.b(3);
                    d dVar2 = this.f1695e;
                    dVar2.a(false, dVar2.q(), this.o);
                } else {
                    u();
                }
                l.b(this.a, "resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.l));
            } else {
                this.f1695e.a(false, this.h, this.o);
            }
        }
        if (this.K || !this.s.get()) {
            return;
        }
        A();
        com.bytedance.sdk.openadsdk.core.g.a aVarAu = this.f1697g.au();
        if (aVarAu == null || aVarAu.a() == null) {
            return;
        }
        aVarAu.a().c(e());
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void c() {
        d dVar = this.f1695e;
        if (dVar == null) {
            return;
        }
        dVar.l();
        this.f1695e = null;
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.i();
        }
        this.b.removeCallbacks(this.M);
        this.b.removeCallbacksAndMessages(null);
        f fVar = this.F;
        if (fVar != null) {
            fVar.d();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void d() {
        c();
    }

    protected void g(boolean z) {
        try {
            l.c(this.a, "landingPageChangeVideoSize start......." + this.f1697g.D());
            if (!O() || z) {
                l.c(this.a, "landingPageChangeVideoSize start check condition complete ... go ..");
                float fD = this.f1695e.d();
                float fE = this.f1695e.e();
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) fD, (int) fE);
                layoutParams.addRule(13);
                if (H() != null) {
                    if (H() instanceof TextureView) {
                        ((TextureView) H()).setLayoutParams(layoutParams);
                    } else if (H() instanceof SurfaceView) {
                        ((SurfaceView) H()).setLayoutParams(layoutParams);
                    }
                    ViewGroup.LayoutParams layoutParams2 = this.x.getLayoutParams();
                    if (this.x.getHeight() > 0) {
                        float fMin = Math.min(this.x.getWidth() / fD, this.x.getHeight() / fE);
                        if (layoutParams2 != null) {
                            layoutParams.width = (int) (fD * fMin);
                            layoutParams.height = (int) (fE * fMin);
                            if (H() instanceof TextureView) {
                                ((TextureView) H()).setLayoutParams(layoutParams);
                            } else if (H() instanceof SurfaceView) {
                                ((SurfaceView) H()).setLayoutParams(layoutParams);
                            }
                            if (this.v.f1698e == 4) {
                                layoutParams2.width = layoutParams.width;
                                layoutParams2.height = layoutParams.height;
                                this.x.setLayoutParams(layoutParams2);
                            }
                        }
                    }
                }
                l.b(this.a, "changeVideoSize .... complete ... end !!!");
            }
        } catch (Throwable th) {
            l.c(this.a, "changeSize error", th);
        }
    }

    protected void r() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.a.a
    public boolean x() {
        return true;
    }
}
