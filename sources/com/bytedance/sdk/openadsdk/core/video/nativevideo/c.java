package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.WorkerThread;
import com.bykv.vk.openvk.component.video.api.a;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bytedance.sdk.component.utils.h;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.o;
import com.bytedance.sdk.component.utils.v;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGNativeAd;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.g.f;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.nativeexpress.p;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.layout.TTVideoDetailLayout;
import com.bytedance.sdk.openadsdk.layout.TTVideoPlayLayoutForLiveLayout;
import com.bytedance.sdk.openadsdk.utils.aa;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: compiled from: NativeVideoController.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends com.bytedance.sdk.openadsdk.core.video.a.a {
    private long D;
    private long E;
    private final boolean F;
    private final String G;
    private final boolean H;
    private final boolean I;
    private boolean J;
    private WeakReference<c.d> K;
    private WeakReference<a> L;
    private int M;
    private int N;
    private g O;
    private b P;
    private final a.InterfaceC0091a Q;
    private int R;
    private final Runnable S;
    private final v.a T;
    private int U;
    private boolean V;

    /* JADX INFO: compiled from: NativeVideoController.java */
    public interface a {
        void a(int i);

        void f();
    }

    public c(Context context, ViewGroup viewGroup, q qVar, String str, boolean z, boolean z2, boolean z3, g gVar) {
        super(context, qVar, viewGroup);
        this.D = 0L;
        this.E = 0L;
        this.J = true;
        this.M = 0;
        this.N = 0;
        this.Q = new a.InterfaceC0091a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1
            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar) {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.H();
                        com.bytedance.sdk.openadsdk.n.a.e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, 5);
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(9);
                        }
                    }
                });
                c.this.c(4);
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g.au() == null || ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g.au().a() == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g.au().a().d(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).h);
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i) {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).w = false;
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.removeCallbacks(c.this.S);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.8
                    @Override // java.lang.Runnable
                    public void run() {
                        ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.b();
                    }
                });
                com.bytedance.sdk.openadsdk.n.a.e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, 0);
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(5);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i, int i2) {
                h.a().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.6
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.J();
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, int i, int i2, int i3) {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).w = true;
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.q();
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.postDelayed(c.this.S, 8000L);
                        }
                    }
                });
                com.bytedance.sdk.openadsdk.n.a.e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, 2);
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(4);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, long j) {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).w = false;
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.removeCallbacks(c.this.S);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.b();
                        }
                        if (!((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).n || c.this.L == null || c.this.L.get() == null) {
                            return;
                        }
                        ((a) c.this.L.get()).f();
                    }
                });
                c.this.E();
                com.bytedance.sdk.openadsdk.n.a.e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, 0);
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.c();
                }
                c cVar = c.this;
                cVar.a(cVar.O);
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, final long j, final long j2) {
                if (Math.abs(j - ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).h) < 50) {
                    return;
                }
                c cVar = c.this;
                cVar.a(cVar.O);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.9
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.a(j, j2);
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, final com.bykv.vk.openvk.component.video.api.c.a aVar2) {
                l.e(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).a, "onError: " + aVar2.a() + ", " + aVar2.b() + ", " + aVar2.c());
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.4
                    @Override // java.lang.Runnable
                    public void run() {
                        int iA = aVar2.a();
                        int iB = aVar2.b();
                        if (!c.this.z() || iB == -1004) {
                            if (c.this.c(iA, iB)) {
                                l.e(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).a, "Play video error，show result page、、、、、、、");
                                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, (WeakReference<Context>) null, false);
                                c.this.c(true);
                                c.this.d();
                            }
                            if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f != null) {
                                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.b();
                            }
                            if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).z != null) {
                                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).z.b(c.this.E, com.bykv.vk.openvk.component.video.a.e.a.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).h, ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).B));
                            }
                            if (c.this.K == null || c.this.K.get() == null || c.this.z()) {
                                return;
                            }
                            ((c.d) c.this.K.get()).a(iA, iB);
                        }
                    }
                });
                c.this.a(aVar2);
                com.bytedance.sdk.openadsdk.core.g.a aVarAu = ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g.au();
                if (aVarAu != null && aVarAu.a() != null) {
                    aVarAu.a().a(com.bytedance.sdk.openadsdk.core.g.a.a.GENERAL_LINEAR_AD_ERROR);
                }
                com.bytedance.sdk.openadsdk.n.a.e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, 6);
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(14);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void a(com.bykv.vk.openvk.component.video.api.a aVar, boolean z4) {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.b();
                        }
                    }
                });
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void b(com.bykv.vk.openvk.component.video.api.a aVar) {
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.removeCallbacks(c.this.S);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (c.this.K != null && c.this.K.get() != null) {
                            ((c.d) c.this.K.get()).g_();
                        }
                        if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f != null) {
                            ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.b();
                        }
                    }
                });
                if (!c.this.F) {
                    c cVar = c.this;
                    cVar.a(cVar.O);
                }
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(c.this.h(), c.this.n());
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void b(com.bykv.vk.openvk.component.video.api.a aVar, int i) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void c(com.bykv.vk.openvk.component.video.api.a aVar) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void d(com.bykv.vk.openvk.component.video.api.a aVar) {
                com.bytedance.sdk.openadsdk.core.g.a aVarAu = ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g.au();
                if (aVarAu != null && aVarAu.a() != null) {
                    aVarAu.a().b(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).h);
                }
                com.bytedance.sdk.openadsdk.n.a.e.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, 3);
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(0);
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.a.InterfaceC0091a
            public void e(com.bykv.vk.openvk.component.video.api.a aVar) {
                com.bytedance.sdk.openadsdk.core.g.a aVarAu = ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g.au();
                if (aVarAu != null && aVarAu.a() != null) {
                    aVarAu.a().c(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).h);
                }
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).A.a(1);
                }
            }
        };
        this.R = 0;
        this.S = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.4
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f != null) {
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.a(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1697g, (WeakReference<Context>) null, false);
                    ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.b();
                    c.this.c(true);
                    l.e(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).a, "Show result page after error.......showAdCard");
                }
            }
        };
        this.T = new v.a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.6
            @Override // com.bytedance.sdk.component.utils.v.a
            @WorkerThread
            public void a(Context context2, Intent intent, boolean z4, final int i) {
                aa.a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.6.1
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.f(i);
                    }
                });
            }
        };
        this.V = false;
        this.U = o.c(context);
        a(z);
        this.G = str;
        try {
            this.M = viewGroup.getWidth();
            this.N = viewGroup.getHeight();
        } catch (Throwable unused) {
        }
        a(context);
        this.F = Build.VERSION.SDK_INT >= 17;
        this.H = z2;
        this.I = z3;
        if (gVar != null) {
            this.O = gVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H() {
        this.R++;
        e eVar = this.f1696f;
        if (eVar == null) {
            return;
        }
        eVar.b();
        c.a aVar = this.z;
        if (aVar != null) {
            aVar.a(this.E, com.bykv.vk.openvk.component.video.a.e.a.a(this.h, this.B));
        }
        this.E = System.currentTimeMillis() - this.D;
        if (this.J) {
            this.f1696f.a(this.f1697g, (WeakReference<Context>) null, true);
        }
        if (!this.t) {
            this.t = true;
            long j = this.B;
            a(j, j);
            long j2 = this.B;
            this.h = j2;
            this.i = j2;
            b(this.O);
        }
        if (!this.n && this.r) {
            e(this.f1696f, null);
        }
        this.m = true;
    }

    private void I() {
        l.b(this.a, "resumeVideo:  mIsSurfaceValid = ", Boolean.valueOf(this.l));
        com.bytedance.sdk.openadsdk.core.video.c.d dVar = this.f1695e;
        if (dVar != null) {
            if (dVar.g()) {
                if (this.l) {
                    u();
                } else {
                    b(this.C);
                }
                l.b(this.a, "resumeVideo: isPaused = true , mIsSurfaceValid = ", Boolean.valueOf(this.l));
            } else {
                this.f1695e.a(false, this.h, this.o);
            }
        }
        if (this.s.get()) {
            A();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        com.bytedance.sdk.openadsdk.core.video.c.d dVar;
        int i;
        int i2;
        l.b(this.a, "[step-0]  TAG is 'ChangeVideoSize' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>");
        try {
            if (K() != null && (dVar = this.f1695e) != null && this.x != null) {
                int iD = dVar.d();
                int iE = this.f1695e.e();
                final int width = this.x.getWidth();
                final int height = this.x.getHeight();
                if (width > 0 && height > 0 && iE > 0 && iD > 0) {
                    if (iD == iE) {
                        i2 = width > height ? height : width;
                        i = i2;
                    } else if (iD > iE) {
                        i2 = (int) ((((double) width) * 1.0d) / ((double) ((iD * 1.0f) / iE)));
                        i = width;
                    } else {
                        i = (int) ((((double) height) * 1.0d) / ((double) ((iE * 1.0f) / iD)));
                        i2 = height;
                    }
                    if (i2 <= height && i2 > 0) {
                        height = i2;
                    }
                    if (i <= width && i > 0) {
                        width = i;
                    }
                    this.b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.5
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(width, height);
                                layoutParams.addRule(13);
                                if (c.this.K() instanceof TextureView) {
                                    ((TextureView) c.this.K()).setLayoutParams(layoutParams);
                                    l.b(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).a, "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>");
                                } else if (c.this.K() instanceof SurfaceView) {
                                    ((SurfaceView) c.this.K()).setLayoutParams(layoutParams);
                                    l.b(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).a, "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>");
                                }
                            } catch (Throwable unused) {
                                l.b(((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).a, "[step-9] setLayoutParams exception");
                            }
                        }
                    });
                    return;
                }
                l.b(this.a, " container or video exist size <= 0");
                return;
            }
            l.b(this.a, "[step-1] >>>>> mContextRef=" + this.j + ",getIRenderView() =" + K());
            String str = this.a;
            StringBuilder sb = new StringBuilder();
            sb.append("[step-1] >>>>> mMediaPlayerProxy == null:");
            boolean z = true;
            sb.append(this.f1695e == null);
            sb.append(",mMediaPlayerProxy.getMediaPlayer() == null:");
            if (this.f1695e == null) {
                z = false;
            }
            sb.append(z);
            l.b(str, sb.toString());
        } catch (Throwable th) {
            l.b(this.a, "[step-11] >>>>> changeVideoSize error !!!!! ：" + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bykv.vk.openvk.component.video.api.renderview.b K() {
        e eVar;
        if (this.j.getResources().getConfiguration().orientation != 1 || (eVar = this.f1696f) == null) {
            return null;
        }
        return eVar.m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        this.f1697g.c(j);
        this.h = j;
        this.B = j2;
        this.f1696f.a(j, j2);
        this.f1696f.a(com.bykv.vk.openvk.component.video.a.e.a.a(j, j2));
        try {
            c.a aVar = this.z;
            if (aVar != null) {
                aVar.a(j, j2);
            }
        } catch (Throwable th) {
            l.c(this.a, "onProgressUpdate error: ", th);
        }
        com.bytedance.sdk.openadsdk.core.g.a aVarAu = this.f1697g.au();
        if (aVarAu == null || aVarAu.a() == null) {
            return;
        }
        aVarAu.a().a(j, j2, this.A);
    }

    private void a(Context context) {
        ViewGroup tTVideoPlayLayoutForLiveLayout = this.n ? new TTVideoPlayLayoutForLiveLayout(context) : new TTVideoDetailLayout(context);
        if (this.n) {
            this.f1696f = new e(context, tTVideoPlayLayoutForLiveLayout, true, 17, this.f1697g, this, w());
        } else {
            this.f1696f = new d(context, tTVideoPlayLayoutForLiveLayout, true, 17, this.f1697g, this, false);
        }
        this.f1696f.a(this);
    }

    private boolean b(int i, int i2) {
        if (i2 == 0) {
            a();
            this.p = true;
            e eVar = this.f1696f;
            if (eVar != null) {
                eVar.a(this.f1697g, (WeakReference<Context>) null, false);
            }
        }
        if (i2 != 4 && i2 != 0) {
            e eVar2 = this.f1696f;
            if (eVar2 != null) {
                eVar2.a();
            }
            a();
            this.p = true;
            this.q = false;
            e eVar3 = this.f1696f;
            if (eVar3 != null) {
                return eVar3.a(i, this.f1697g.K(), this.I);
            }
        } else if (i2 == 4) {
            this.p = false;
            e eVar4 = this.f1696f;
            if (eVar4 != null) {
                eVar4.o();
            }
        }
        return true;
    }

    private void c(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        l.b(this.a, "[video] playVideo has invoke !");
        cVar.c(0);
        this.f1695e.a(cVar);
        this.D = System.currentTimeMillis();
        this.f1696f.c(8);
        this.f1696f.c(0);
        a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.3
            @Override // java.lang.Runnable
            public void run() {
                if (((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1695e == null) {
                    return;
                }
                c.this.D = System.currentTimeMillis();
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1696f.d(0);
                ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).f1695e.a(true, ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).h, ((com.bytedance.sdk.openadsdk.core.video.a.a) c.this).o);
            }
        });
        if (this.n) {
            r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(int i, int i2) {
        l.b(this.a, "OnError - Error code: " + i + " Extra code: " + i2);
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        if (i2 == 1 || i2 == 700 || i2 == 800) {
            return true;
        }
        return z;
    }

    private void e(int i) {
        if (this.U == i) {
            return;
        }
        this.U = i;
        if (i != 4 && i != 0) {
            this.q = false;
        }
        if (!this.q && !o() && this.H) {
            b(2, i);
        }
        WeakReference<a> weakReference = this.L;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.L.get().a(this.U);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        e(i);
        if (i == 4) {
            this.p = false;
        }
    }

    public void F() {
        if (this.V && this.u) {
            this.V = false;
            v.a(this.T);
        }
    }

    public void G() {
        f fVar = this.A;
        if (fVar != null) {
            fVar.a(13);
        }
    }

    public f a(View view, List<Pair<View, FriendlyObstructionPurpose>> list) {
        if (!this.f1697g.at()) {
            return null;
        }
        if (this.A == null) {
            this.A = f.a();
        }
        this.A.a(view, this.f1697g.au().n());
        if (list != null && list.size() > 0) {
            for (Pair<View, FriendlyObstructionPurpose> pair : list) {
                if (pair != null) {
                    Object obj = pair.second;
                    this.A.a((View) pair.first, obj == null ? FriendlyObstructionPurpose.OTHER : (FriendlyObstructionPurpose) obj);
                }
            }
        }
        return this.A;
    }

    public void a(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return;
        }
        this.M = i;
        this.N = i2;
        l.b(this.a, "width=" + i + "height=" + i2);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
        com.bytedance.sdk.openadsdk.core.video.c.d dVar = this.f1695e;
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
            h(false);
            e eVar = this.f1696f;
            if (eVar != null) {
                eVar.b(false, false);
                return;
            }
            return;
        }
        e eVar2 = this.f1696f;
        if (eVar2 != null) {
            eVar2.c(this.x);
        }
        d(this.h);
        e eVar3 = this.f1696f;
        if (eVar3 != null) {
            eVar3.b(false, false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.a.a
    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, View view, boolean z) {
        f(!this.r);
        if (!(this.j instanceof Activity)) {
            l.b(this.a, "context is not activity, not support this function.");
            return;
        }
        e eVar = this.f1696f;
        if (eVar != null) {
            eVar.b(this.x);
            this.f1696f.c(false);
        }
        a(1);
        WeakReference<c.b> weakReference = this.y;
        c.b bVar2 = weakReference != null ? weakReference.get() : null;
        if (bVar2 != null) {
            bVar2.a(this.r);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.a.a, com.bykv.vk.openvk.component.video.api.d.c
    public void a(c.d dVar) {
        this.K = new WeakReference<>(dVar);
    }

    public void a(PAGNativeAd pAGNativeAd) {
        e eVar;
        if (!this.n || (eVar = this.f1696f) == null) {
            return;
        }
        eVar.a(pAGNativeAd);
    }

    public void a(final NativeVideoTsView.a aVar) {
        e eVar;
        if (!this.n || (eVar = this.f1696f) == null) {
            return;
        }
        eVar.a(new NativeVideoTsView.a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.c.2
            @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.a
            public void a(View view, int i) {
                NativeVideoTsView.a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a(view, i);
                }
            }
        });
    }

    public void a(b bVar) {
        this.P = bVar;
    }

    public void a(a aVar) {
        this.L = new WeakReference<>(aVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(boolean z, int i) {
        if (this.n) {
            c(1);
        }
        if (!this.t && this.s.get()) {
            if (z) {
                o.a aVar = new o.a();
                aVar.a(e());
                aVar.c(h());
                aVar.b(f());
                aVar.c(i);
                aVar.d(g());
                com.bytedance.sdk.openadsdk.b.d.a.a.a(this.f1696f, aVar, this.O);
                this.t = false;
            } else {
                B();
            }
        }
        d();
        f fVar = this.A;
        if (fVar != null) {
            fVar.d();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean a(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (this.f1695e != null) {
            ApmHelper.reportCustomError("", "twice playVideoUrl", new IllegalStateException());
            return true;
        }
        if (TextUtils.isEmpty(cVar.m())) {
            l.e(this.a, "[video] play video stop , because no video info");
            return false;
        }
        b bVar = this.P;
        if (bVar != null) {
            bVar.a();
        }
        c(false);
        l.b(this.a, "url is " + cVar.m());
        b(cVar);
        C();
        f fVar = this.A;
        if (fVar != null) {
            fVar.a(false, 0.0f);
        }
        if (!p.b(this.G) || this.h <= 0) {
            this.h = cVar.g();
        }
        if (cVar.g() <= 0) {
            this.t = false;
            this.s.set(false);
        } else {
            long jG = cVar.g();
            this.h = jG;
            this.i = Math.max(this.i, jG);
        }
        e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a();
            if (this.R == 0) {
                this.f1696f.g();
            }
            this.f1696f.c(cVar.e(), cVar.f());
            this.f1696f.c(this.x);
            this.f1696f.a(cVar.e(), cVar.f());
        }
        if (this.f1695e == null) {
            com.bytedance.sdk.openadsdk.core.video.c.d dVar = new com.bytedance.sdk.openadsdk.core.video.c.d();
            this.f1695e = dVar;
            dVar.a(this.Q);
        }
        s();
        this.E = 0L;
        try {
            c(cVar);
            return true;
        } catch (Exception e2) {
            l.e(this.a, "[video] invoke NativeVideoController#playVideo cause exception :" + e2);
            return false;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b() {
        e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a();
        }
        e eVar2 = this.f1696f;
        if (eVar2 != null) {
            eVar2.r();
        }
        I();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void c() {
        a(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void d() {
        com.bytedance.sdk.openadsdk.core.video.c.d dVar = this.f1695e;
        if (dVar != null) {
            dVar.l();
            this.f1695e = null;
        }
        if (this.J) {
            if ("embeded_ad".equals(this.G)) {
                this.f1696f.t();
            } else {
                this.f1696f.a(this.f1697g, (WeakReference<Context>) null, true);
            }
            this.b.removeCallbacksAndMessages(null);
            this.k.clear();
            if (this.n) {
                F();
            }
        }
    }

    public void d(int i) {
        e(i);
        if (i == 4) {
            this.p = false;
            b();
        }
    }

    public void g(boolean z) {
        this.J = z;
    }

    public void h(boolean z) {
        e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a();
        }
        e eVar2 = this.f1696f;
        if (eVar2 != null && z) {
            eVar2.r();
        }
        I();
    }

    public void r() {
        if (this.V || !this.u) {
            return;
        }
        Context applicationContext = com.bytedance.sdk.openadsdk.core.o.a().getApplicationContext();
        this.V = true;
        v.a(this.T, applicationContext);
    }
}
