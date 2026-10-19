package com.mbridge.msdk.e.a;

import android.os.Process;
import com.mbridge.msdk.e.a.a;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: compiled from: CacheDispatcher.java */
/* JADX INFO: loaded from: classes4.dex */
public final class b extends Thread {
    private final BlockingQueue<m<?>> a;
    private final BlockingQueue<m<?>> b;
    private final a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q f6944d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f6945e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final w f6946f;

    public b(BlockingQueue<m<?>> blockingQueue, BlockingQueue<m<?>> blockingQueue2, a aVar, q qVar) {
        this.a = blockingQueue;
        this.b = blockingQueue2;
        this.c = aVar;
        this.f6944d = qVar;
        this.f6946f = new w(this, blockingQueue2, qVar);
    }

    public final void a() {
        this.f6945e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        this.c.a();
        while (true) {
            try {
                final m<?> mVarTake = this.a.take();
                mVarTake.a(1);
                try {
                    if (mVarTake.l()) {
                        mVarTake.a("cache-discard-canceled");
                    } else {
                        a.C0396a c0396aA = this.c.a(mVarTake.i());
                        if (c0396aA != null) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            if (c0396aA.a(jCurrentTimeMillis)) {
                                mVarTake.a(c0396aA);
                                if (!this.f6946f.b(mVarTake)) {
                                    this.b.put(mVarTake);
                                }
                            } else {
                                o<?> oVarA = mVarTake.a(new k(200, c0396aA.a, false, 0L, c0396aA.h));
                                p pVarJ = mVarTake.j();
                                if (!(pVarJ == null || pVarJ.a(oVarA, mVarTake))) {
                                    this.c.a(mVarTake.i(), true);
                                    mVarTake.a((a.C0396a) null);
                                    if (!this.f6946f.b(mVarTake)) {
                                        this.b.put(mVarTake);
                                    }
                                } else if (oVarA.a()) {
                                    if (c0396aA.f6938f < jCurrentTimeMillis) {
                                        mVarTake.a(c0396aA);
                                        oVarA.f6963d = true;
                                        if (this.f6946f.b(mVarTake)) {
                                            this.f6944d.a(mVarTake, oVarA);
                                        } else {
                                            this.f6944d.a(mVarTake, oVarA, new Runnable() { // from class: com.mbridge.msdk.e.a.b.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    try {
                                                        b.this.b.put(mVarTake);
                                                    } catch (InterruptedException unused) {
                                                        Thread.currentThread().interrupt();
                                                    }
                                                }
                                            });
                                        }
                                    } else {
                                        this.f6944d.a(mVarTake, oVarA);
                                    }
                                } else {
                                    this.c.a(mVarTake.i(), true);
                                    mVarTake.a((a.C0396a) null);
                                    if (!this.f6946f.b(mVarTake)) {
                                        this.b.put(mVarTake);
                                    }
                                }
                            }
                        } else if (!this.f6946f.b(mVarTake)) {
                            this.b.put(mVarTake);
                        }
                    }
                    mVarTake.a(2);
                } catch (Throwable th) {
                    mVarTake.a(2);
                    throw th;
                }
            } catch (InterruptedException unused) {
                if (this.f6945e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                v.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
