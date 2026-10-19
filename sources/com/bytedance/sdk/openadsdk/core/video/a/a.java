package com.bytedance.sdk.openadsdk.core.video.a;

import android.app.Activity;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.bykv.vk.openvk.component.video.api.d.c;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.component.utils.x;
import com.bytedance.sdk.openadsdk.b.d.b.o;
import com.bytedance.sdk.openadsdk.b.g;
import com.bytedance.sdk.openadsdk.core.g.f;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.core.video.c.d;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.e;
import com.bytedance.sdk.openadsdk.core.widget.e;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.v;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: BaseController.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements c, x.a, com.bytedance.sdk.openadsdk.core.video.nativevideo.a {
    protected f A;
    protected long B;
    private long D;
    protected SurfaceHolder c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected SurfaceTexture f1694d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected d f1695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected e f1696f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    protected final q f1697g;

    @NonNull
    protected final Context j;
    protected boolean o;
    protected boolean t;
    protected b v;
    protected boolean w;
    protected final ViewGroup x;
    protected WeakReference<c.b> y;
    protected c.a z;
    protected String a = "TTAD.VideoController";
    protected final x b = new x(Looper.getMainLooper(), this);
    protected long h = 0;
    protected long i = 0;
    protected final List<Runnable> k = new ArrayList();
    protected boolean l = false;
    protected boolean m = false;
    protected boolean n = true;
    protected boolean p = false;
    protected boolean q = false;
    protected boolean r = false;
    protected AtomicBoolean s = new AtomicBoolean(false);
    protected boolean u = true;
    protected Runnable C = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.a.a.1
        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            l.b(aVar.a, "resumeVideo: run ", Boolean.valueOf(aVar.l));
            a.this.u();
        }
    };
    private long E = 0;
    private boolean F = true;
    private int G = 1;

    /* JADX INFO: renamed from: com.bytedance.sdk.openadsdk.core.video.a.a$4, reason: invalid class name */
    /* JADX INFO: compiled from: BaseController.java */
    static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[e.a.values().length];
            a = iArr;
            try {
                iArr[e.a.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[e.a.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[e.a.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public a(Context context, @NonNull q qVar, ViewGroup viewGroup) {
        this.f1697g = qVar;
        this.j = context;
        this.x = viewGroup;
        this.a += hashCode();
    }

    private void F() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.d(0);
            this.f1696f.a(false, false);
            this.f1696f.c(false);
            this.f1696f.e();
            this.f1696f.g();
        }
    }

    private void a(long j, boolean z) {
        if (this.f1695e == null) {
            return;
        }
        if (z) {
            F();
        }
        this.f1695e.a(j);
    }

    private boolean d(int i) {
        return this.f1696f.b(i);
    }

    private boolean r() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            return eVar.m() instanceof SSRenderTextureView;
        }
        return false;
    }

    protected final void A() {
        o.a aVar = new o.a();
        aVar.a(e());
        aVar.c(h() / ((long) D()));
        aVar.b(f());
        com.bytedance.sdk.openadsdk.b.d.a.a.b(m(), aVar);
    }

    protected final void B() {
        o.a aVar = new o.a();
        aVar.a(e());
        aVar.c(h() / ((long) D()));
        aVar.b(f());
        com.bytedance.sdk.openadsdk.b.d.a.a.a(this.f1696f, aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void C() {
        com.bytedance.sdk.openadsdk.b.d.a.a.a(this.f1697g, this.f1696f, this.v);
    }

    public int D() {
        return this.G;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void E() {
        com.bytedance.sdk.openadsdk.b.a.d.a(com.bytedance.sdk.openadsdk.n.a.a(this.f1697g.U(), true, this.f1697g));
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void a() {
        d dVar = this.f1695e;
        if (dVar != null) {
            dVar.k();
        }
        if (this.t || !this.s.get()) {
            return;
        }
        B();
    }

    public final void a(int i) {
        Context context = this.j;
        if (context == null) {
            return;
        }
        boolean z = i == 0 || i == 8;
        if (context instanceof Activity) {
            Activity activity = (Activity) context;
            try {
                activity.setRequestedOrientation(i);
            } catch (Throwable unused) {
            }
            if (z) {
                activity.getWindow().clearFlags(1024);
            } else {
                activity.getWindow().setFlags(1024, 1024);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(long j) {
        this.h = j;
        this.i = Math.max(this.i, j);
    }

    @Override // com.bytedance.sdk.component.utils.x.a
    public void a(Message message) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(com.bykv.vk.openvk.component.video.api.c.a aVar) {
        o.a aVar2 = new o.a();
        aVar2.b(f());
        aVar2.c(h() / ((long) D()));
        aVar2.a(e());
        aVar2.a(aVar);
        com.bytedance.sdk.openadsdk.b.d.a.a.c(m(), aVar2);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void a(com.bykv.vk.openvk.component.video.api.d.b bVar, int i) {
        if (this.f1695e == null) {
            return;
        }
        a(this.D, d(i));
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void a(com.bykv.vk.openvk.component.video.api.d.b bVar, int i, boolean z) {
        if (this.j == null) {
            return;
        }
        long jL = (long) (((((long) i) * this.B) * 1.0f) / s.l(r5, "tt_video_progress_max"));
        if (this.B > 0) {
            this.D = (int) jL;
        } else {
            this.D = 0L;
        }
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a(this.D);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, SurfaceTexture surfaceTexture) {
        this.l = true;
        this.f1694d = surfaceTexture;
        d dVar = this.f1695e;
        if (dVar != null) {
            dVar.a(surfaceTexture);
            this.f1695e.a(this.l);
        }
        l.c(this.a, "surfaceTextureCreated: ");
        t();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, SurfaceHolder surfaceHolder) {
        this.l = true;
        this.c = surfaceHolder;
        d dVar = this.f1695e;
        if (dVar == null) {
            return;
        }
        dVar.a(surfaceHolder);
        l.c(this.a, "surfaceCreated: ");
        t();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    public void a(com.bykv.vk.openvk.component.video.api.d.b bVar, View view, boolean z) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void a(com.bykv.vk.openvk.component.video.api.d.b bVar, View view, boolean z, boolean z2) {
        if (this.n) {
            a();
        }
        if (z && !this.n && !y()) {
            this.f1696f.b(!z(), false);
            this.f1696f.a(z2, true, false);
        }
        d dVar = this.f1695e;
        if (dVar == null || !dVar.f()) {
            this.f1696f.f();
        } else {
            this.f1696f.f();
            this.f1696f.e();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void a(c.a aVar) {
        this.z = aVar;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void a(c.b bVar) {
        this.y = new WeakReference<>(bVar);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(c.d dVar) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(g gVar) {
        if (this.s.compareAndSet(false, true)) {
            o.a aVar = new o.a();
            aVar.a(x());
            aVar.c(h());
            com.bytedance.sdk.openadsdk.b.d.a.a.a(com.bytedance.sdk.openadsdk.core.o.a(), this.f1696f, aVar, gVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public final void a(e.a aVar, String str) {
        int i = AnonymousClass4.a[aVar.ordinal()];
        if (i == 1) {
            a();
            return;
        }
        if (i == 2) {
            c();
        } else {
            if (i != 3) {
                return;
            }
            b();
            this.p = false;
            this.q = true;
        }
    }

    protected void a(Runnable runnable) {
        if (this.f1696f.v() && this.l) {
            runnable.run();
        } else {
            b(runnable);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void a(Map<String, Object> map) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void a(boolean z) {
        this.n = z;
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.d(z);
        }
    }

    public void b(int i) {
        this.G = i;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b(long j) {
        this.E = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void b(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        b bVar = (b) cVar;
        this.v = bVar;
        this.o = bVar.h();
        cVar.d(String.valueOf(this.f1697g.aZ()));
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void b(com.bykv.vk.openvk.component.video.api.d.b bVar, int i) {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.f();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void b(com.bykv.vk.openvk.component.video.api.d.b bVar, SurfaceTexture surfaceTexture) {
        this.l = false;
        l.c(this.a, "surfaceTextureDestroyed: ");
        d dVar = this.f1695e;
        if (dVar != null) {
            dVar.a(false);
        }
        this.f1694d = null;
        t();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void b(com.bykv.vk.openvk.component.video.api.d.b bVar, SurfaceHolder surfaceHolder) {
        this.l = false;
        this.c = null;
        d dVar = this.f1695e;
        if (dVar != null) {
            dVar.a(false);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void b(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
        b(bVar, view, false, false);
    }

    public final void b(com.bykv.vk.openvk.component.video.api.d.b bVar, View view, boolean z, boolean z2) {
        f(!this.r);
        Context context = this.j;
        if (context == null) {
            return;
        }
        if (!(context instanceof Activity)) {
            l.b(this.a, "context is not activity, not support this function.");
            return;
        }
        if (this.r) {
            a(z ? 8 : 0);
            com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
            if (eVar != null) {
                eVar.a(this.x);
                this.f1696f.c(false);
            }
        } else {
            a(1);
            com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar2 = this.f1696f;
            if (eVar2 != null) {
                eVar2.b(this.x);
                this.f1696f.c(false);
            }
        }
        WeakReference<c.b> weakReference = this.y;
        c.b bVar2 = weakReference != null ? weakReference.get() : null;
        if (bVar2 != null) {
            bVar2.a(this.r);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void b(g gVar) {
        o.a aVar = new o.a();
        aVar.a(e());
        aVar.c(h() / ((long) D()));
        aVar.b(f());
        aVar.d(g());
        com.bytedance.sdk.openadsdk.b.d.a.a.b(this.f1696f, aVar, gVar);
    }

    protected void b(Runnable runnable) {
        this.k.add(runnable);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void b(final boolean z) {
        this.o = z;
        d dVar = this.f1695e;
        if (dVar != null) {
            dVar.b(z);
        }
        if (this.A != null) {
            if (com.bykv.vk.openvk.component.video.a.c.a.b()) {
                this.A.a(z);
            } else {
                this.b.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.a.a.3
                    @Override // java.lang.Runnable
                    public void run() {
                        a.this.A.a(z);
                    }
                });
            }
        }
    }

    public final void c(int i) {
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void c(long j) {
        this.B = j;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void c(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.i();
        }
        a(true, 3);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void c(boolean z) {
        this.m = z;
    }

    public final void d(long j) {
        this.h = j;
        this.i = Math.max(this.i, j);
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.a();
        }
        d dVar = this.f1695e;
        if (dVar != null) {
            dVar.a(true, this.h, this.o);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void d(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
        if (!this.r) {
            a(true, 3);
            return;
        }
        f(false);
        com.bytedance.sdk.openadsdk.core.video.nativevideo.e eVar = this.f1696f;
        if (eVar != null) {
            eVar.b(this.x);
        }
        a(1);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final void d(boolean z) {
        this.F = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public long e() {
        return this.h;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public final void e(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
        a(bVar, view, false);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public void e(boolean z) {
        this.u = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final long f() {
        d dVar = this.f1695e;
        if (dVar == null) {
            return 0L;
        }
        return dVar.n();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.a
    public void f(com.bykv.vk.openvk.component.video.api.d.b bVar, View view) {
    }

    protected void f(boolean z) {
        this.r = z;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final int g() {
        d dVar = this.f1695e;
        if (dVar == null) {
            return 0;
        }
        return dVar.o();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final long h() {
        d dVar = this.f1695e;
        if (dVar == null) {
            return 0L;
        }
        return dVar.p();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final long i() {
        return e() + f();
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final int j() {
        return com.bykv.vk.openvk.component.video.a.e.a.a(this.i, this.B);
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean k() {
        return this.p;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public com.bykv.vk.openvk.component.video.api.a l() {
        return this.f1695e;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean n() {
        return this.o;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean o() {
        return this.m;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public final boolean p() {
        return this.w;
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    public boolean q() {
        int i = Build.VERSION.SDK_INT;
        if (i < 14) {
            return false;
        }
        q qVar = this.f1697g;
        if (qVar != null && qVar.aK() == 1 && i < 23) {
            return true;
        }
        if ((t.e() && i >= 29) || v.a(this.f1697g) || h.v() || "Pixel 4".equals(Build.MODEL)) {
            return true;
        }
        return h.b().o();
    }

    protected void s() {
        if (this.f1695e == null) {
            return;
        }
        if (r()) {
            SurfaceTexture surfaceTexture = this.f1694d;
            if (surfaceTexture == null || surfaceTexture == this.f1695e.s()) {
                return;
            }
            this.f1695e.a(this.f1694d);
            return;
        }
        SurfaceHolder surfaceHolder = this.c;
        if (surfaceHolder == null || surfaceHolder == this.f1695e.r()) {
            return;
        }
        this.f1695e.a(this.c);
    }

    protected void t() {
        l.c(this.a, "execPendingActions: before ");
        if (this.k.isEmpty()) {
            return;
        }
        l.c(this.a, "execPendingActions:  exec");
        Iterator it = new ArrayList(this.k).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.k.clear();
    }

    protected void u() {
        this.b.postAtFrontOfQueue(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.a.a.2
            @Override // java.lang.Runnable
            public void run() {
                a aVar = a.this;
                if (aVar.f1695e != null) {
                    l.b(aVar.a, "resumeVideo: execResumePlay", Boolean.valueOf(aVar.l));
                    a.this.f1695e.j();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.d.c
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public final com.bytedance.sdk.openadsdk.core.video.nativevideo.e m() {
        return this.f1696f;
    }

    public boolean w() {
        return this.n;
    }

    public boolean x() {
        return this.F;
    }

    public final boolean y() {
        d dVar = this.f1695e;
        return dVar == null || dVar.b();
    }

    public final boolean z() {
        d dVar = this.f1695e;
        return dVar != null && dVar.f();
    }
}
