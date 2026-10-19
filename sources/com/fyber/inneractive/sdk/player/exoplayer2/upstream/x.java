package com.fyber.inneractive.sdk.player.exoplayer2.upstream;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public final class x {
    public final ExecutorService a;
    public b<? extends c> b;
    public IOException c;

    public interface a<T extends c> {
        int a(T t, long j, long j2, IOException iOException);

        void a(T t, long j, long j2);

        void a(T t, long j, long j2, boolean z);
    }

    @SuppressLint({"HandlerLeak"})
    public final class b<T extends c> extends Handler implements Runnable {
        public final T a;
        public final a<T> b;
        public final int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final long f2595d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public IOException f2596e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f2597f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public volatile Thread f2598g;
        public volatile boolean h;

        public b(Looper looper, T t, a<T> aVar, int i, long j) {
            super(looper);
            this.a = t;
            this.b = aVar;
            this.c = i;
            this.f2595d = j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void a(long j) {
            com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(x.this.b == null);
            x xVar = x.this;
            xVar.b = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                this.f2596e = null;
                xVar.a.execute(this);
            }
        }

        public void a(boolean z) {
            this.h = z;
            this.f2596e = null;
            if (hasMessages(0)) {
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                this.a.b();
                if (this.f2598g != null) {
                    this.f2598g.interrupt();
                }
            }
            if (z) {
                x.this.b = null;
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.b.a((c) this.a, jElapsedRealtime, jElapsedRealtime - this.f2595d, true);
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (this.h) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                this.f2596e = null;
                x xVar = x.this;
                xVar.a.execute(xVar.b);
                return;
            }
            if (i == 4) {
                throw ((Error) message.obj);
            }
            x.this.b = null;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.f2595d;
            if (this.a.a()) {
                this.b.a((c) this.a, jElapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                this.b.a((c) this.a, jElapsedRealtime, j, false);
                return;
            }
            if (i2 == 2) {
                this.b.a(this.a, jElapsedRealtime, j);
                return;
            }
            if (i2 != 3) {
                return;
            }
            IOException iOException = (IOException) message.obj;
            this.f2596e = iOException;
            int iA = this.b.a(this.a, jElapsedRealtime, j, iOException);
            if (iA == 3) {
                x.this.c = this.f2596e;
            } else if (iA != 2) {
                this.f2597f = iA == 1 ? 1 : this.f2597f + 1;
                a(Math.min((r12 - 1) * 1000, 5000));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2598g = Thread.currentThread();
                if (!this.a.a()) {
                    com.fyber.inneractive.sdk.player.exoplayer2.util.s.a("load:" + this.a.getClass().getSimpleName());
                    try {
                        this.a.load();
                        com.fyber.inneractive.sdk.player.exoplayer2.util.s.a();
                    } catch (Throwable th) {
                        com.fyber.inneractive.sdk.player.exoplayer2.util.s.a();
                        throw th;
                    }
                }
                if (this.h) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (IOException e2) {
                if (this.h) {
                    return;
                }
                obtainMessage(3, e2).sendToTarget();
            } catch (OutOfMemoryError e3) {
                Log.e("LoadTask", "OutOfMemory error loading stream", e3);
                if (this.h) {
                    return;
                }
                obtainMessage(3, new d(e3)).sendToTarget();
            } catch (Error e4) {
                Log.e("LoadTask", "Unexpected error loading stream", e4);
                if (!this.h) {
                    obtainMessage(4, e4).sendToTarget();
                }
                throw e4;
            } catch (InterruptedException unused) {
                com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(this.a.a());
                if (this.h) {
                    return;
                }
                sendEmptyMessage(2);
            } catch (Exception e5) {
                Log.e("LoadTask", "Unexpected exception loading stream", e5);
                if (this.h) {
                    return;
                }
                obtainMessage(3, new d(e5)).sendToTarget();
            }
        }
    }

    public interface c {
        boolean a();

        void b();

        void load() throws InterruptedException, IOException;
    }

    public static final class d extends IOException {
        public d(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    public x(String str) {
        this.a = com.fyber.inneractive.sdk.player.exoplayer2.util.u.b(str);
    }

    public <T extends c> long a(T t, a<T> aVar, int i) {
        Looper looperMyLooper = Looper.myLooper();
        com.fyber.inneractive.sdk.player.exoplayer2.util.a.b(looperMyLooper != null);
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        new b(looperMyLooper, t, aVar, i, jElapsedRealtime).a(0L);
        return jElapsedRealtime;
    }

    public void a() {
        this.b.a(false);
    }

    public boolean b() {
        return this.b != null;
    }

    public void c() throws IOException {
        IOException iOException = this.c;
        if (iOException != null) {
            throw iOException;
        }
        b<? extends c> bVar = this.b;
        if (bVar != null) {
            int i = bVar.c;
            IOException iOException2 = bVar.f2596e;
            if (iOException2 != null && bVar.f2597f > i) {
                throw iOException2;
            }
        }
    }

    public void d() {
        b<? extends c> bVar = this.b;
        if (bVar != null) {
            bVar.a(true);
        }
        this.a.shutdown();
    }
}
