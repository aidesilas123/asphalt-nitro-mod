package com.apm.insight.runtime;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes.dex */
public class u {
    static final b<d, Runnable> a = new b<d, Runnable>() { // from class: com.apm.insight.runtime.u.1
    };
    static final b<Message, Runnable> b = new b<Message, Runnable>() { // from class: com.apm.insight.runtime.u.2
    };
    private final HandlerThread c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile Handler f329f;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue<d> f327d = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Queue<Message> f328e = new ConcurrentLinkedQueue();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f330g = new Object();

    class a implements Runnable {
        a() {
        }

        void a() {
            while (!u.this.f327d.isEmpty()) {
                d dVar = (d) u.this.f327d.poll();
                if (u.this.f329f != null) {
                    try {
                        u.this.f329f.sendMessageAtTime(dVar.a, dVar.b);
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        void b() {
            while (!u.this.f328e.isEmpty()) {
                if (u.this.f329f != null) {
                    try {
                        u.this.f329f.sendMessageAtFrontOfQueue((Message) u.this.f328e.poll());
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            b();
            a();
        }
    }

    public interface b<A, B> {
    }

    class c extends HandlerThread {
        volatile int a;
        volatile boolean b;

        c(String str) {
            super(str);
            this.a = 0;
            this.b = false;
        }

        @Override // android.os.HandlerThread
        protected void onLooperPrepared() {
            super.onLooperPrepared();
            synchronized (u.this.f330g) {
                u.this.f329f = new Handler();
            }
            u.this.f329f.post(u.this.new a());
            while (true) {
                try {
                    Looper.loop();
                } catch (Throwable th) {
                    try {
                        com.apm.insight.b.g.a(com.apm.insight.i.g()).a().c();
                        if (this.a < 5) {
                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                        } else if (!this.b) {
                            this.b = true;
                            com.apm.insight.c.a().a("NPTH_ERR_MAX", new RuntimeException());
                        }
                        this.a++;
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    static class d {
        Message a;
        long b;

        d(Message message, long j) {
            this.a = message;
            this.b = j;
        }
    }

    public u(String str) {
        this.c = new c(str);
    }

    private Message b(Runnable runnable) {
        return Message.obtain(this.f329f, runnable);
    }

    @Nullable
    public Handler a() {
        return this.f329f;
    }

    public final boolean a(Message message, long j) {
        if (j < 0) {
            j = 0;
        }
        return b(message, SystemClock.uptimeMillis() + j);
    }

    public final boolean a(Runnable runnable) {
        return a(b(runnable), 0L);
    }

    public final boolean a(Runnable runnable, long j) {
        return a(b(runnable), j);
    }

    public void b() {
        this.c.start();
    }

    public final boolean b(Message message, long j) {
        if (this.f329f == null) {
            synchronized (this.f330g) {
                if (this.f329f == null) {
                    this.f327d.add(new d(message, j));
                    return true;
                }
            }
        }
        try {
            return this.f329f.sendMessageAtTime(message, j);
        } catch (Throwable unused) {
            return true;
        }
    }

    public HandlerThread c() {
        return this.c;
    }
}
