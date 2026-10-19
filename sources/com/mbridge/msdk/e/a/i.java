package com.mbridge.msdk.e.a;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: NetworkDispatcher.java */
/* JADX INFO: loaded from: classes4.dex */
public final class i extends Thread {
    private final BlockingQueue<m<?>> a;
    private final h b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q f6948d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f6949e = false;

    public i(BlockingQueue<m<?>> blockingQueue, h hVar, a aVar, q qVar) {
        this.a = blockingQueue;
        this.b = hVar;
        this.c = aVar;
        this.f6948d = qVar;
    }

    public final void a() {
        this.f6949e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m<?> mVarTake = this.a.take();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                mVarTake.a(3);
                try {
                    try {
                        if (mVarTake.l()) {
                            mVarTake.a("network-discard-cancelled");
                            mVarTake.u();
                        } else {
                            TrafficStats.setThreadStatsTag(mVarTake.g());
                            k kVarA = this.b.a(mVarTake);
                            if (kVarA.f6951e && mVarTake.t()) {
                                mVarTake.a("not-modified");
                                mVarTake.u();
                            } else {
                                o<?> oVarA = mVarTake.a(kVarA);
                                if (mVarTake.o() && oVarA.b != null) {
                                    this.c.a(mVarTake.i(), oVarA.b);
                                }
                                mVarTake.s();
                                this.f6948d.a(mVarTake, oVarA);
                                mVarTake.a(oVarA);
                            }
                        }
                    } catch (u e2) {
                        e2.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                        this.f6948d.a(mVarTake, e2);
                        mVarTake.u();
                    } catch (Exception e3) {
                        v.a(e3, "Unhandled exception %s", e3.toString());
                        u uVar = new u(e3);
                        uVar.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                        this.f6948d.a(mVarTake, uVar);
                        mVarTake.u();
                    }
                    mVarTake.a(4);
                } catch (Throwable th) {
                    mVarTake.a(4);
                    throw th;
                }
            } catch (InterruptedException unused) {
                if (this.f6949e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                v.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
