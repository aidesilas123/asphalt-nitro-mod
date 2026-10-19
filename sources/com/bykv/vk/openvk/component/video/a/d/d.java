package com.bykv.vk.openvk.component.video.a.d;

import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.SystemClock;
import android.util.SparseIntArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bykv.vk.openvk.component.video.a.d.c;
import com.bykv.vk.openvk.component.video.api.a;
import com.bytedance.sdk.component.g.i;
import com.bytedance.sdk.component.utils.x;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SSMediaPlayerWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements c.a, c.b, c.InterfaceC0090c, c.d, c.e, c.f, c.g, com.bykv.vk.openvk.component.video.api.a, x.a {
    private static final SparseIntArray x = new SparseIntArray();
    private volatile boolean H;
    private SurfaceTexture a;
    private SurfaceHolder b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f465d;
    private boolean i;
    private boolean j;
    private x m;
    private boolean t;
    private ArrayList<Runnable> u;
    private boolean y;
    private int c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f466e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile c f467f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f468g = false;
    private boolean h = false;
    private volatile int k = 201;
    private long l = -1;
    private boolean n = false;
    private long o = 0;
    private long p = Long.MIN_VALUE;
    private long q = 0;
    private long r = 0;
    private long s = 0;
    private int v = 0;
    private String w = "0";
    private final List<WeakReference<a.InterfaceC0091a>> z = new CopyOnWriteArrayList();
    private com.bykv.vk.openvk.component.video.api.c.c A = null;
    private boolean B = false;
    private volatile int C = 200;
    private AtomicBoolean D = new AtomicBoolean(false);
    private Surface E = null;
    private final Runnable F = new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.1
        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f467f == null) {
                return;
            }
            long jQ = d.this.q();
            if (jQ > 0 && Build.VERSION.SDK_INT >= 23 && d.this.f() && d.this.p != Long.MIN_VALUE) {
                try {
                    if (d.this.p == jQ) {
                        if (!d.this.n && d.this.q >= 400) {
                            d.this.b(701, 800);
                            d.this.n = true;
                        }
                        d.this.q += (long) d.this.C;
                    } else {
                        if (d.this.n) {
                            d.this.o += d.this.q;
                            d.this.b(702, 800);
                            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "handleMsg:  bufferingDuration =", Long.valueOf(d.this.o), "  bufferCount =", Integer.valueOf(d.this.c));
                        }
                        d.this.q = 0L;
                        d.this.n = false;
                    }
                } catch (Throwable th) {
                    com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "error:" + th.getMessage());
                }
            }
            if (d.this.p() > 0) {
                if (d.this.p != jQ) {
                    if (com.bykv.vk.openvk.component.video.api.c.e()) {
                        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "run: lastCur = ", Long.valueOf(d.this.p), "  curPosition = ", Long.valueOf(jQ));
                    }
                    d dVar = d.this;
                    dVar.a(jQ, dVar.p());
                }
                d.this.p = jQ;
            }
            if (d.this.b()) {
                d dVar2 = d.this;
                dVar2.a(dVar2.p(), d.this.p());
            } else if (d.this.m != null) {
                d.this.m.postDelayed(this, d.this.C);
            }
        }
    };
    private final a G = new a();
    private long I = 0;
    private long J = 0;
    private boolean K = false;

    /* JADX INFO: compiled from: SSMediaPlayerWrapper.java */
    class a implements Runnable {
        private long b;
        private boolean c;

        a() {
        }

        public void a(long j) {
            this.b = j;
        }

        public void a(boolean z) {
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.f467f != null) {
                try {
                    if (!this.c) {
                        d.this.l = Math.max(this.b, d.this.f467f.i());
                    }
                    com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] MediaPlayerProxy#start, OpStartTask:" + d.this.l);
                } catch (Throwable th) {
                    com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] MediaPlayerProxy#start  error: getCurrentPosition :" + th);
                }
            }
            if (d.this.m != null) {
                d.this.m.sendEmptyMessageDelayed(100, 0L);
            }
            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] MediaPlayerProxy#start not first play ! sendMsg --> OP_START , video start to play !");
        }
    }

    public d() {
        a("SSMediaPlayerWrapper");
    }

    private void A() {
        x xVar = this.m;
        if (xVar != null) {
            xVar.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        d.this.f467f.g();
                        d.this.k = 207;
                        d.this.H = false;
                    } catch (Throwable th) {
                        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "pauseBeforePlayIfNeed error: ", th);
                    }
                }
            });
        }
    }

    private void B() {
        if (this.i) {
            return;
        }
        this.i = true;
        Iterator it = new ArrayList(this.u).iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        this.u.clear();
        this.i = false;
    }

    private void C() {
        ArrayList<Runnable> arrayList = this.u;
        boolean z = arrayList == null || arrayList.isEmpty();
        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "isPendingAction:" + z);
        if (z) {
            return;
        }
        B();
    }

    private void D() {
        ArrayList<Runnable> arrayList = this.u;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        this.u.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, long j2) {
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().a(this, j, j2);
            }
        }
    }

    private void a(Runnable runnable) {
        try {
            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "enqueueAction()");
            if (this.u == null) {
                this.u = new ArrayList<>();
            }
            this.u.add(runnable);
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.c("CSJ_VIDEO_MEDIA", th.getMessage());
        }
    }

    private void a(String str) {
        this.v = 0;
        this.m = com.bytedance.sdk.component.g.a.a.a().a(this, i.THREAD_NAME_PRE + str);
        this.K = Build.VERSION.SDK_INT >= 17;
        u();
    }

    private boolean a(int i, int i2) {
        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "OnError - Error code: " + i + " Extra code: " + i2);
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        if (i2 == 1 || i2 == 700 || i2 == 800) {
            return true;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2) {
        if (i == 701) {
            this.I = SystemClock.elapsedRealtime();
            this.c++;
            for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().a(this, Integer.MAX_VALUE, 0, 0);
                }
            }
            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "bufferCount = ", Integer.valueOf(this.c));
            return;
        }
        if (i == 702) {
            if (this.I > 0) {
                this.J += SystemClock.elapsedRealtime() - this.I;
                this.I = 0L;
            }
            for (WeakReference<a.InterfaceC0091a> weakReference2 : this.z) {
                if (weakReference2 != null && weakReference2.get() != null) {
                    weakReference2.get().a((com.bykv.vk.openvk.component.video.api.a) this, Integer.MAX_VALUE);
                }
            }
            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "bufferCount = ", Integer.valueOf(this.c), " mBufferTotalTime = ", Long.valueOf(this.J));
            return;
        }
        if (this.K && i == 3) {
            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "hasPendingPauseCommand:" + this.H);
            C();
            z();
            b(this.B);
            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "onRenderStart");
        }
    }

    private void b(long j) {
        this.G.a(j);
        if (this.y) {
            b(this.G);
        } else if (b(this.A)) {
            b(this.G);
        } else {
            a(this.G);
        }
    }

    private void b(Runnable runnable) {
        if (runnable == null || h()) {
            return;
        }
        if (this.j) {
            a(runnable);
        } else {
            runnable.run();
        }
    }

    private void b(String str) throws Throwable {
        FileInputStream fileInputStream = new FileInputStream(str);
        this.f467f.a(fileInputStream.getFD());
        fileInputStream.close();
    }

    private boolean b(com.bykv.vk.openvk.component.video.api.c.c cVar) {
        return cVar != null && cVar.d();
    }

    private void t() {
        this.o = 0L;
        this.c = 0;
        this.q = 0L;
        this.n = false;
        this.p = Long.MIN_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u() {
        StringBuilder sb = new StringBuilder();
        sb.append("initMediaPlayer: ");
        sb.append(this.m != null);
        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", sb.toString());
        x xVar = this.m;
        if (xVar != null) {
            xVar.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.10
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.f467f == null) {
                        try {
                            d.this.f467f = new b();
                        } catch (Throwable th) {
                            com.bykv.vk.openvk.component.video.api.f.c.c("CSJ_VIDEO_MEDIA", th.getMessage());
                        }
                        if (d.this.f467f == null) {
                            return;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("initMediaPlayer mMediaPlayer is null :");
                        sb2.append(d.this.f467f == null);
                        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", sb2.toString());
                        d.this.w = "0";
                        d.this.f467f.a((c.e) d.this);
                        d.this.f467f.a((c.b) d.this);
                        d.this.f467f.a((c.InterfaceC0090c) d.this);
                        d.this.f467f.a((c.a) d.this);
                        d.this.f467f.a((c.f) d.this);
                        d.this.f467f.a((c.d) d.this);
                        d.this.f467f.a((c.g) d.this);
                        try {
                            d.this.f467f.c(false);
                        } catch (Throwable th2) {
                            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "setLooping error: ", th2);
                        }
                        d.this.h = false;
                    }
                }
            });
        }
    }

    private void v() {
        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] MediaPlayerProxy#start first play prepare invoke !");
        b(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.14
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.m != null) {
                    d.this.m.sendEmptyMessage(104);
                    com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] MediaPlayerProxy#start first play prepare invoke ! sendMsg --> OP_PREPARE_ASYNC");
                }
            }
        });
    }

    private void w() {
        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "releaseMediaPlayer: ");
        if (this.f467f == null) {
            return;
        }
        try {
            this.f467f.l();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "releaseMediaplayer error1: ", th);
        }
        this.f467f.a((c.b) null);
        this.f467f.a((c.g) null);
        this.f467f.a((c.a) null);
        this.f467f.a((c.d) null);
        this.f467f.a((c.InterfaceC0090c) null);
        this.f467f.a((c.e) null);
        this.f467f.a((c.f) null);
        try {
            this.f467f.k();
        } catch (Throwable th2) {
            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "releaseMediaplayer error2: ", th2);
        }
    }

    private void x() {
        x xVar = this.m;
        if (xVar == null || xVar.getLooper() == null) {
            return;
        }
        this.m.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.6
            @Override // java.lang.Runnable
            public void run() {
                if (d.this.m == null || d.this.m.getLooper() == null) {
                    return;
                }
                try {
                    com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "onDestory............");
                    com.bytedance.sdk.component.g.a.a.a().a(d.this.m);
                    d.this.m = null;
                } catch (Throwable th) {
                    com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "onDestroy error: ", th);
                }
            }
        });
    }

    private void y() {
        SparseIntArray sparseIntArray = x;
        Integer numValueOf = Integer.valueOf(sparseIntArray.get(this.v));
        if (numValueOf == null) {
            sparseIntArray.put(this.v, 1);
        } else {
            sparseIntArray.put(this.v, Integer.valueOf(numValueOf.intValue() + 1).intValue());
        }
    }

    private void z() {
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.s;
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().a(this, jElapsedRealtime);
            }
        }
        this.f466e = true;
    }

    public void a(int i) {
        if (h()) {
            return;
        }
        this.C = i;
    }

    public void a(final long j) {
        if (h()) {
            return;
        }
        if (this.k == 207 || this.k == 206 || this.k == 209) {
            b(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.2
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.m != null) {
                        d.this.m.obtainMessage(106, Long.valueOf(j)).sendToTarget();
                    }
                }
            });
        }
    }

    public void a(final SurfaceTexture surfaceTexture) {
        if (h()) {
            return;
        }
        this.a = surfaceTexture;
        a(true);
        b(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.3
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "setSurface() runnable exec");
                d.this.u();
                if (d.this.m != null) {
                    d.this.m.obtainMessage(111, surfaceTexture).sendToTarget();
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:82:0x0207  */
    @Override // com.bytedance.sdk.component.utils.x.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(android.os.Message r17) {
        /*
            Method dump skipped, instruction units count: 932
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.component.video.a.d.d.a(android.os.Message):void");
    }

    public void a(final SurfaceHolder surfaceHolder) {
        if (h()) {
            return;
        }
        this.b = surfaceHolder;
        a(true);
        b(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.4
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "setDisplay() runnable exec");
                d.this.u();
                if (d.this.m != null) {
                    d.this.m.obtainMessage(110, surfaceHolder).sendToTarget();
                }
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.b
    public void a(c cVar) {
        this.k = 209;
        x.delete(this.v);
        x xVar = this.m;
        if (xVar != null) {
            xVar.removeCallbacks(this.F);
        }
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().a(this);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.a
    public void a(c cVar, int i) {
        if (this.f467f != cVar) {
            return;
        }
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().b(this, i);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.g
    public void a(c cVar, int i, int i2, int i3, int i4) {
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().a((com.bykv.vk.openvk.component.video.api.a) this, i, i2);
            }
        }
    }

    public void a(a.InterfaceC0091a interfaceC0091a) {
        if (interfaceC0091a == null) {
            return;
        }
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() == interfaceC0091a) {
                return;
            }
        }
        this.z.add(new WeakReference<>(interfaceC0091a));
    }

    public void a(final com.bykv.vk.openvk.component.video.api.c.c cVar) {
        if (h()) {
            return;
        }
        this.A = cVar;
        if (cVar != null) {
            this.K = this.K && !cVar.d();
        }
        b(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.5
            @Override // java.lang.Runnable
            public void run() {
                com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "setDataSource() runnable exec ");
                d.this.u();
                if (d.this.m != null) {
                    d.this.m.obtainMessage(107, cVar).sendToTarget();
                }
            }
        });
    }

    public void a(final boolean z) {
        if (h()) {
            return;
        }
        this.y = z;
        if (this.f467f != null) {
            this.f467f.a(z);
            return;
        }
        x xVar = this.m;
        if (xVar != null) {
            xVar.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.9
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.f467f != null) {
                        d.this.f467f.a(z);
                    }
                }
            });
        }
    }

    public void a(boolean z, long j, boolean z2) {
        StringBuilder sb = new StringBuilder();
        sb.append("[video] MediaPlayerProxy#start firstSeekToPosition=");
        sb.append(j);
        sb.append(",isFirst :");
        sb.append(z);
        sb.append(",isPauseOtherMusicVolume=");
        sb.append(z2);
        sb.append(" ");
        sb.append(this.k);
        sb.append(" ");
        sb.append(this.f467f == null);
        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", sb.toString());
        if (h()) {
            return;
        }
        u();
        this.B = z2;
        this.D.set(true);
        this.H = false;
        b(z2);
        if (z) {
            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] first start , SSMediaPlayer  start method !");
            this.l = j;
            v();
        } else {
            b(j);
        }
        x xVar = this.m;
        if (xVar != null) {
            xVar.removeCallbacks(this.F);
            this.m.postDelayed(this.F, this.C);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public boolean a() {
        return this.f466e;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.InterfaceC0090c
    public boolean a(c cVar, int i, int i2) {
        com.bykv.vk.openvk.component.video.api.f.c.c("CSJ_VIDEO_MEDIA", "what=" + i + "extra=" + i2);
        y();
        this.k = 200;
        x xVar = this.m;
        if (xVar != null) {
            xVar.removeCallbacks(this.F);
        }
        if (a(i, i2)) {
            x();
        }
        if (!this.D.get()) {
            return true;
        }
        this.D.set(false);
        com.bykv.vk.openvk.component.video.api.c.a aVar = new com.bykv.vk.openvk.component.video.api.c.a(i, i2);
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().a(this, aVar);
            }
        }
        return true;
    }

    public void b(int i) {
        this.f465d = i;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.e
    public void b(c cVar) {
        if (h()) {
            return;
        }
        this.k = 205;
        try {
            com.bykv.vk.openvk.component.video.api.c.c cVar2 = this.A;
            if (cVar2 != null) {
                float fL = cVar2.l();
                if (fL > 0.0f) {
                    com.bykv.vk.openvk.component.video.api.b bVar = new com.bykv.vk.openvk.component.video.api.b();
                    bVar.a(fL);
                    this.f467f.a(bVar);
                }
            }
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "speed error: ", th);
        }
        if (this.m != null) {
            if (this.H) {
                A();
            } else {
                com.bykv.vk.openvk.component.video.api.f.c.c("CSJ_VIDEO_MEDIA", "onPrepared op_Start");
                x xVar = this.m;
                xVar.sendMessage(xVar.obtainMessage(100, -1, -1));
            }
        }
        x.delete(this.v);
        com.bykv.vk.openvk.component.video.api.f.c.c("CSJ_VIDEO_MEDIA", "onPrepared:" + this.K + " " + this.t);
        if (!this.K && !this.t) {
            z();
            this.t = true;
        }
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().b(this);
            }
        }
    }

    public void b(final boolean z) {
        if (h()) {
            return;
        }
        x xVar = this.m;
        if (xVar == null) {
            com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "quietPlay set opHandler is null");
        } else {
            xVar.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.8
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.h() || d.this.f467f == null) {
                        return;
                    }
                    try {
                        d.this.B = z;
                        d.this.f467f.d(z);
                    } catch (Throwable th) {
                        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "setQuietPlay error: ", th);
                    }
                }
            });
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public boolean b() {
        return this.k == 209;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.d
    public boolean b(c cVar, int i, int i2) {
        com.bykv.vk.openvk.component.video.api.f.c.c("CSJ_VIDEO_MEDIA", "what,extra:" + i + "," + i2);
        if (this.f467f != cVar) {
            return false;
        }
        if (i2 == -1004) {
            com.bykv.vk.openvk.component.video.api.c.a aVar = new com.bykv.vk.openvk.component.video.api.c.a(i, i2);
            for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
                if (weakReference != null && weakReference.get() != null) {
                    weakReference.get().a(this, aVar);
                }
            }
        }
        b(i, i2);
        return false;
    }

    @Override // com.bykv.vk.openvk.component.video.a.d.c.f
    public void c(c cVar) {
        for (WeakReference<a.InterfaceC0091a> weakReference : this.z) {
            if (weakReference != null && weakReference.get() != null) {
                weakReference.get().a((com.bykv.vk.openvk.component.video.api.a) this, true);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public boolean c() {
        return m() || f() || g();
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public int d() {
        if (this.f467f == null || h()) {
            return 0;
        }
        return this.f467f.m();
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public int e() {
        if (this.f467f == null || h()) {
            return 0;
        }
        return this.f467f.n();
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public boolean f() {
        x xVar;
        return (this.k == 206 || ((xVar = this.m) != null && xVar.hasMessages(100))) && !this.H;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public boolean g() {
        x xVar;
        return ((this.k != 207 && !this.H) || (xVar = this.m) == null || xVar.hasMessages(100)) ? false : true;
    }

    @Override // com.bykv.vk.openvk.component.video.api.a
    public boolean h() {
        return this.j;
    }

    public void i() {
        if (h()) {
            return;
        }
        com.bykv.vk.openvk.component.video.api.f.c.a("CSJ_VIDEO_MEDIA", "[video] MediaPlayerProxy#restart:" + this.k);
        if (this.f467f == null) {
            return;
        }
        this.D.set(true);
        if (this.k == 206) {
            return;
        }
        t();
        this.H = false;
        this.G.a(true);
        b(0L);
        x xVar = this.m;
        if (xVar != null) {
            xVar.removeCallbacks(this.F);
            this.m.postDelayed(this.F, this.C);
        }
    }

    public void j() {
        if (h() || this.m == null) {
            return;
        }
        this.D.set(true);
        this.m.post(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.11
            @Override // java.lang.Runnable
            public void run() {
                if (!d.this.g() || d.this.f467f == null) {
                    return;
                }
                try {
                    d.this.f467f.e();
                    com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "resume play exec start ");
                    for (WeakReference weakReference : d.this.z) {
                        if (weakReference != null && weakReference.get() != null) {
                            ((a.InterfaceC0091a) weakReference.get()).e(d.this);
                        }
                    }
                    d.this.k = 206;
                } catch (Throwable th) {
                    com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "play: catch exception ", th.getMessage());
                }
            }
        });
    }

    public void k() {
        x xVar;
        com.bykv.vk.openvk.component.video.api.f.c.b("CSJ_VIDEO_MEDIA", "pause: from outer");
        if (h() || (xVar = this.m) == null) {
            return;
        }
        xVar.removeMessages(100);
        this.H = true;
        if (this.K) {
            if (!this.f466e && !b(this.A)) {
                a(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.13
                    @Override // java.lang.Runnable
                    public void run() {
                        if (d.this.m != null) {
                            d.this.m.sendEmptyMessage(101);
                        }
                    }
                });
                return;
            }
            x xVar2 = this.m;
            if (xVar2 != null) {
                xVar2.sendEmptyMessage(101);
                return;
            }
            return;
        }
        if (!this.t && !b(this.A)) {
            a(new Runnable() { // from class: com.bykv.vk.openvk.component.video.a.d.d.12
                @Override // java.lang.Runnable
                public void run() {
                    if (d.this.m != null) {
                        d.this.m.sendEmptyMessage(101);
                    }
                }
            });
            return;
        }
        x xVar3 = this.m;
        if (xVar3 != null) {
            xVar3.sendEmptyMessage(101);
        }
    }

    public void l() {
        if (h()) {
            return;
        }
        this.j = true;
        D();
        x xVar = this.m;
        if (xVar != null) {
            try {
                xVar.removeCallbacksAndMessages(null);
                if (this.f467f != null) {
                    this.m.sendEmptyMessage(103);
                }
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    public boolean m() {
        return this.k == 205;
    }

    public long n() {
        if (Build.VERSION.SDK_INT < 23) {
            return this.J;
        }
        if (this.n) {
            long j = this.q;
            if (j > 0) {
                return this.o + j;
            }
        }
        return this.o;
    }

    public int o() {
        return this.c;
    }

    public long p() {
        long j = this.r;
        if (j != 0) {
            return j;
        }
        if (this.k == 206 || this.k == 207) {
            try {
                this.r = this.f467f.j();
            } catch (Throwable unused) {
            }
        }
        return this.r;
    }

    public long q() {
        if (h()) {
            return 0L;
        }
        if (this.k == 206 || this.k == 207) {
            try {
                return this.f467f.i();
            } catch (Throwable unused) {
            }
        }
        return 0L;
    }

    public SurfaceHolder r() {
        return this.b;
    }

    public SurfaceTexture s() {
        return this.a;
    }
}
