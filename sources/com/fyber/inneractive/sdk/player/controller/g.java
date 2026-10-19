package com.fyber.inneractive.sdk.player.controller;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewGroup;
import com.fyber.inneractive.sdk.player.mediaplayer.a;
import com.fyber.inneractive.sdk.util.IAlog;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public abstract class g implements a.k {
    public final Context a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InterfaceC0172g f2172d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f2174f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f2175g;
    public final Handler i;
    public TextureView j;
    public SurfaceTexture k;
    public Surface l;
    public TextureView.SurfaceTextureListener m;
    public boolean o;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public com.fyber.inneractive.sdk.player.enums.b f2173e = com.fyber.inneractive.sdk.player.enums.b.Idle;
    public boolean n = false;
    public final List<f> b = new CopyOnWriteArrayList();
    public final List<e> c = new CopyOnWriteArrayList();
    public com.fyber.inneractive.sdk.player.d h = new com.fyber.inneractive.sdk.player.d(this);

    public class a implements Runnable {
        public final /* synthetic */ Exception a;

        public a(Exception exc) {
            this.a = exc;
        }

        @Override // java.lang.Runnable
        public void run() {
            g gVar = g.this;
            if (gVar.f2175g) {
                return;
            }
            try {
                Iterator<f> it = gVar.b.iterator();
                while (it.hasNext()) {
                    it.next().a(this.a);
                }
            } catch (Exception e2) {
                if (IAlog.a <= 3) {
                    g gVar2 = g.this;
                    gVar2.getClass();
                    IAlog.a("%sonPlayerError callback threw an exception!", e2, IAlog.a(gVar2));
                }
            }
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ int a;

        public b(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Iterator<e> it = g.this.c.iterator();
                while (it.hasNext()) {
                    it.next().a(this.a);
                }
            } catch (Exception e2) {
                if (IAlog.a <= 3) {
                    g gVar = g.this;
                    gVar.getClass();
                    IAlog.a("%sonPlayerProgress callback threw an exception!", e2, IAlog.a(gVar));
                }
            }
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ com.fyber.inneractive.sdk.player.enums.b a;

        public c(com.fyber.inneractive.sdk.player.enums.b bVar) {
            this.a = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextureView textureView;
            g gVar;
            TextureView textureView2;
            com.fyber.inneractive.sdk.player.enums.b bVar;
            TextureView textureView3;
            try {
                try {
                    Iterator<f> it = g.this.b.iterator();
                    while (it.hasNext()) {
                        it.next().a(this.a);
                    }
                    bVar = this.a;
                } catch (Exception e2) {
                    if (IAlog.a <= 3) {
                        g gVar2 = g.this;
                        gVar2.getClass();
                        IAlog.a("%sonPlayerStateChanged callback threw an exception!", e2, IAlog.a(gVar2));
                    }
                    com.fyber.inneractive.sdk.player.enums.b bVar2 = this.a;
                    if (bVar2 != com.fyber.inneractive.sdk.player.enums.b.Idle && bVar2 != com.fyber.inneractive.sdk.player.enums.b.Error && bVar2 != com.fyber.inneractive.sdk.player.enums.b.Completed) {
                        return;
                    }
                    g gVar3 = g.this;
                    if (gVar3.k != null && (textureView2 = gVar3.j) != null && textureView2.getParent() != null) {
                        ((ViewGroup) g.this.j.getParent()).removeView(g.this.j);
                    }
                    gVar = g.this;
                    gVar.j = null;
                }
                if (bVar == com.fyber.inneractive.sdk.player.enums.b.Idle || bVar == com.fyber.inneractive.sdk.player.enums.b.Error || bVar == com.fyber.inneractive.sdk.player.enums.b.Completed) {
                    g gVar4 = g.this;
                    if (gVar4.k != null && (textureView3 = gVar4.j) != null && textureView3.getParent() != null) {
                        ((ViewGroup) g.this.j.getParent()).removeView(g.this.j);
                    }
                    gVar = g.this;
                    gVar.j = null;
                    gVar.k = null;
                }
            } catch (Throwable th) {
                com.fyber.inneractive.sdk.player.enums.b bVar3 = this.a;
                if (bVar3 == com.fyber.inneractive.sdk.player.enums.b.Idle || bVar3 == com.fyber.inneractive.sdk.player.enums.b.Error || bVar3 == com.fyber.inneractive.sdk.player.enums.b.Completed) {
                    g gVar5 = g.this;
                    if (gVar5.k != null && (textureView = gVar5.j) != null && textureView.getParent() != null) {
                        ((ViewGroup) g.this.j.getParent()).removeView(g.this.j);
                    }
                    g gVar6 = g.this;
                    gVar6.j = null;
                    gVar6.k = null;
                }
                throw th;
            }
        }
    }

    public interface d {
    }

    public interface e {
        void a(int i);
    }

    public interface f {
        void a(com.fyber.inneractive.sdk.player.enums.b bVar);

        void a(Exception exc);

        void e(boolean z);

        void g();
    }

    /* JADX INFO: renamed from: com.fyber.inneractive.sdk.player.controller.g$g, reason: collision with other inner class name */
    public interface InterfaceC0172g {
    }

    public g(Context context) {
        this.a = context.getApplicationContext();
        this.i = new Handler(context.getMainLooper());
        a(true);
    }

    public void a(int i) {
        this.i.post(new b(i));
    }

    public abstract void a(int i, boolean z);

    public abstract void a(Surface surface);

    public void a(com.fyber.inneractive.sdk.player.enums.b bVar) {
        if (bVar == this.f2173e) {
            return;
        }
        this.f2173e = bVar;
        if (bVar == com.fyber.inneractive.sdk.player.enums.b.Playing) {
            com.fyber.inneractive.sdk.player.d dVar = this.h;
            if (dVar != null && dVar.b == null) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                dVar.b = scheduledThreadPoolExecutor;
                scheduledThreadPoolExecutor.scheduleAtFixedRate(dVar.c, 100, 1000, TimeUnit.MILLISECONDS);
            }
        } else if (bVar == com.fyber.inneractive.sdk.player.enums.b.Paused || bVar == com.fyber.inneractive.sdk.player.enums.b.Idle || bVar == com.fyber.inneractive.sdk.player.enums.b.Completed) {
            m();
        }
        this.i.post(new c(bVar));
    }

    public void a(Exception exc) {
        a(com.fyber.inneractive.sdk.player.enums.b.Error);
        IAlog.a("%sonPlayerError called with: %s for onPlayerError", IAlog.a(this), exc);
        this.i.post(new a(exc));
        m();
    }

    public abstract void a(String str, int i);

    public abstract void a(boolean z);

    public abstract boolean a();

    @SuppressLint({"NewApi"})
    public void b() {
        IAlog.a("%sdestroy started", IAlog.a(this));
        m();
        this.h = null;
        this.i.removeCallbacksAndMessages(null);
        this.b.clear();
        this.f2174f = null;
        this.f2175g = true;
        IAlog.a("%sdestroy finished", IAlog.a(this));
    }

    public abstract void b(boolean z);

    public abstract int c();

    public final void c(boolean z) {
        com.fyber.inneractive.sdk.measurement.d dVar;
        d dVar2 = this.f2174f;
        if (dVar2 == null || (dVar = com.fyber.inneractive.sdk.player.c.this.h) == null) {
            return;
        }
        if (z) {
            if (dVar.c != null) {
                IAlog.a("%s mute", "OMVideo");
                try {
                    dVar.c.volumeChange(0.0f);
                    return;
                } catch (Throwable th) {
                    dVar.a(th);
                    return;
                }
            }
            return;
        }
        if (dVar.c != null) {
            IAlog.a("%s unMute", "OMVideo");
            try {
                dVar.c.volumeChange(1.0f);
            } catch (Throwable th2) {
                dVar.a(th2);
            }
        }
    }

    public abstract int d();

    public abstract void d(boolean z);

    public abstract Bitmap e();

    public abstract String f();

    public abstract int g();

    public abstract int h();

    public abstract boolean i();

    public boolean j() {
        return this.f2173e == com.fyber.inneractive.sdk.player.enums.b.Playing;
    }

    public abstract void k();

    public abstract void l();

    public void m() {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        com.fyber.inneractive.sdk.player.d dVar = this.h;
        if (dVar == null || (scheduledThreadPoolExecutor = dVar.b) == null) {
            return;
        }
        scheduledThreadPoolExecutor.shutdownNow();
        dVar.b = null;
    }
}
