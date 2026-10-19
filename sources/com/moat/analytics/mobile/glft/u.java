package com.moat.analytics.mobile.glft;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import com.moat.analytics.mobile.glft.t;
import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class u {
    private static u a;
    private static final Queue<c> b = new ConcurrentLinkedQueue();
    private Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile d f7665d = d.OFF;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f7666e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f7667f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile int f7668g = 200;
    private final AtomicBoolean h = new AtomicBoolean(false);
    private volatile long i = 0;
    private final AtomicInteger j = new AtomicInteger(0);
    private final AtomicBoolean k = new AtomicBoolean(false);
    private long l = 1800000;
    private long m = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;

    private class a implements Runnable {
        private final Handler b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final e f7669d;

        private a(String str, Handler handler, e eVar) {
            this.f7669d = eVar;
            this.b = handler;
            this.c = "https://z.moatads.com/" + str + "/android/0bbafd1/status.json";
        }

        private void a() {
            String strB = b();
            final k kVar = new k(strB);
            u.this.f7666e = kVar.a();
            u.this.f7667f = kVar.b();
            u.this.f7668g = kVar.c();
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.moat.analytics.mobile.glft.u.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        a.this.f7669d.a(kVar);
                    } catch (Exception e2) {
                        l.a(e2);
                    }
                }
            });
            u.this.i = System.currentTimeMillis();
            u.this.k.compareAndSet(true, false);
            if (strB != null) {
                u.this.j.set(0);
            } else if (u.this.j.incrementAndGet() < 10) {
                u uVar = u.this;
                uVar.a(uVar.m);
            }
        }

        private String b() {
            try {
                return o.a(this.c + "?ts=" + System.currentTimeMillis() + "&v=2.1.0").b();
            } catch (Exception unused) {
                return null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Exception e2) {
                l.a(e2);
            }
            this.b.removeCallbacks(this);
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper != null) {
                looperMyLooper.quit();
            }
        }
    }

    interface b {
        void b();

        void c();
    }

    private class c {
        final Long a;
        final b b;

        c(Long l, b bVar) {
            this.a = l;
            this.b = bVar;
        }
    }

    enum d {
        OFF,
        ON
    }

    interface e {
        void a(k kVar);
    }

    u() {
        try {
            this.c = new Handler(Looper.getMainLooper());
        } catch (Exception e2) {
            l.a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final long j) {
        if (this.k.compareAndSet(false, true)) {
            if (this.f7666e) {
                Log.d("MoatOnOff", "Performing status check.");
            }
            new Thread() { // from class: com.moat.analytics.mobile.glft.u.1
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    Looper.prepare();
                    Handler handler = new Handler();
                    handler.postDelayed(new a("GLFT", handler, new e() { // from class: com.moat.analytics.mobile.glft.u.1.1
                        @Override // com.moat.analytics.mobile.glft.u.e
                        public void a(k kVar) {
                            synchronized (u.b) {
                                if (u.this.f7665d != kVar.d()) {
                                    u.this.f7665d = kVar.d();
                                    if (u.this.f7665d == d.ON && u.this.f7666e) {
                                        Log.d("MoatOnOff", "Moat enabled - Version 2.1.0");
                                    }
                                    for (c cVar : u.b) {
                                        if (u.this.f7665d == d.ON) {
                                            cVar.b.b();
                                        } else {
                                            cVar.b.c();
                                        }
                                    }
                                }
                                while (!u.b.isEmpty()) {
                                    u.b.remove();
                                }
                            }
                        }
                    }), j);
                    Looper.loop();
                }
            }.start();
        }
    }

    static synchronized u d() {
        if (a == null) {
            try {
                a = new u();
            } catch (Exception e2) {
                l.a(e2);
                a = new t.e();
            }
        }
        return a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        Queue<c> queue = b;
        synchronized (queue) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            Iterator<c> it = queue.iterator();
            while (it.hasNext()) {
                if (jCurrentTimeMillis - it.next().a.longValue() >= ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS) {
                    it.remove();
                }
            }
            if (b.size() >= 15) {
                for (int i = 0; i < 5; i++) {
                    b.remove();
                }
            }
        }
    }

    private void i() {
        if (this.h.compareAndSet(false, true)) {
            this.c.postDelayed(new Runnable() { // from class: com.moat.analytics.mobile.glft.u.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (u.b.size() > 0) {
                            u.this.h();
                            u.this.c.postDelayed(this, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
                        } else {
                            u.this.h.compareAndSet(true, false);
                            u.this.c.removeCallbacks(this);
                        }
                    } catch (Exception e2) {
                        l.a(e2);
                    }
                }
            }, ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS);
        }
    }

    public d a() {
        return this.f7665d;
    }

    public void a(b bVar) {
        if (this.f7665d == d.ON) {
            bVar.b();
            return;
        }
        h();
        b.add(new c(Long.valueOf(System.currentTimeMillis()), bVar));
        i();
    }

    public boolean b() {
        return this.f7666e;
    }

    public int c() {
        return this.f7668g;
    }

    boolean e() {
        return this.f7667f;
    }

    public void f() {
        if (System.currentTimeMillis() - this.i > this.l) {
            a(0L);
        }
    }
}
