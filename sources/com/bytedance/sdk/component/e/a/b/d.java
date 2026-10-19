package com.bytedance.sdk.component.e.a.b;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.component.e.a.e.e;
import com.bytedance.sdk.component.e.a.f;
import com.bytedance.sdk.component.e.a.i;
import java.util.Comparator;
import java.util.concurrent.Executor;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: LogThreadCenter.java */
/* JADX INFO: loaded from: classes2.dex */
public class d {
    public static final d a = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final com.bytedance.sdk.component.e.a.b.a.a f1019d = new com.bytedance.sdk.component.e.a.b.a.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final AtomicLong f1020e = new AtomicLong(0);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AtomicLong f1021f = new AtomicLong(0);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final long f1022g = System.currentTimeMillis();
    public static long h = 0;
    public volatile boolean b = false;
    public volatile boolean c = false;
    private volatile com.bytedance.sdk.component.e.a.b.c.c i;
    private volatile Handler j;
    private final Comparator<com.bytedance.sdk.component.e.a.d.a> k;
    private final PriorityBlockingQueue<com.bytedance.sdk.component.e.a.d.a> l;

    private d() {
        Comparator<com.bytedance.sdk.component.e.a.d.a> comparator = new Comparator<com.bytedance.sdk.component.e.a.d.a>() { // from class: com.bytedance.sdk.component.e.a.b.d.1
            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(com.bytedance.sdk.component.e.a.d.a aVar, com.bytedance.sdk.component.e.a.d.a aVar2) {
                return d.this.a(aVar, aVar2);
            }
        };
        this.k = comparator;
        this.l = new PriorityBlockingQueue<>(8, comparator);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int a(com.bytedance.sdk.component.e.a.d.a aVar, com.bytedance.sdk.component.e.a.d.a aVar2) {
        long jA;
        long jB;
        long jB2;
        long jA2;
        if (aVar == null) {
            return aVar2 == null ? 0 : -1;
        }
        if (aVar2 == null) {
            return 1;
        }
        if (aVar.e() != aVar2.e()) {
            return aVar.e() - aVar2.e();
        }
        if (aVar.a() != null) {
            jA = aVar.a().a();
            jB = aVar.a().b();
        } else {
            jA = 0;
            jB = 0;
        }
        if (aVar2.a() != null) {
            jA2 = aVar2.a().a();
            jB2 = aVar2.a().b();
        } else {
            jB2 = 0;
            jA2 = 0;
        }
        if (jA == 0 || jA2 == 0) {
            return 0;
        }
        long j = jA - jA2;
        if (Math.abs(j) > 2147483647L) {
            return 0;
        }
        if (j != 0) {
            return (int) j;
        }
        if (jB == 0 || jB2 == 0) {
            return 0;
        }
        return (int) (jB - jB2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(f fVar, long j) {
        com.bytedance.sdk.component.e.a.b.c.c cVar = this.i;
        if (fVar == null || cVar == null) {
            return;
        }
        com.bytedance.sdk.component.e.a.b.a.a aVar = f1019d;
        cVar.a(fVar.a(aVar.b(j)), true);
        aVar.P();
    }

    private void a(final f fVar, com.bytedance.sdk.component.e.a.d.a aVar) {
        if (fVar != null) {
            try {
                if (fVar.h()) {
                    long jB = 0;
                    if (aVar != null && aVar.a() != null) {
                        jB = aVar.a().b();
                    }
                    final long j = jB;
                    if (j == 1) {
                        h = System.currentTimeMillis();
                    }
                    AtomicLong atomicLongAa = f1019d.aa();
                    com.bytedance.sdk.component.e.a.c.b.a(atomicLongAa, 1);
                    if (atomicLongAa.get() == 200) {
                        if (Looper.getMainLooper() != Looper.myLooper()) {
                            com.bytedance.sdk.component.e.a.c.c.a("==> monitor upload index1:" + j);
                            a(fVar, j);
                            return;
                        }
                        Executor executorE = fVar.e();
                        if (executorE == null) {
                            executorE = fVar.f();
                        }
                        if (executorE != null) {
                            executorE.execute(new e("report") { // from class: com.bytedance.sdk.component.e.a.b.d.2
                                @Override // java.lang.Runnable
                                public void run() {
                                    d.this.a(fVar, j);
                                }
                            });
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public PriorityBlockingQueue<com.bytedance.sdk.component.e.a.d.a> a() {
        return this.l;
    }

    public void a(Handler handler) {
        this.j = handler;
    }

    public void a(com.bytedance.sdk.component.e.a.d.a aVar, int i) {
        d();
        f fVarP = i.g().p();
        com.bytedance.sdk.component.e.a.b.c.c cVar = this.i;
        if (cVar != null) {
            a(fVarP, aVar);
            cVar.a(aVar, aVar.e() == 4);
        }
    }

    public void b() {
        d();
        e();
    }

    public void c() {
        if (this.i == null || !this.i.isAlive()) {
            return;
        }
        synchronized (this) {
            if (this.i != null && this.i.isAlive()) {
                if (this.j != null) {
                    this.j.removeCallbacksAndMessages(null);
                }
                this.i.a(false);
                if (Build.VERSION.SDK_INT >= 18) {
                    this.i.quitSafely();
                } else {
                    this.i.quit();
                }
                this.i = null;
            }
        }
    }

    public boolean d() {
        try {
            if (this.i != null || com.bytedance.sdk.component.e.a.b.b()) {
                return false;
            }
            synchronized (this) {
                if (this.i != null) {
                    return false;
                }
                com.bytedance.sdk.component.e.a.c.c.a("--start LogThread--");
                this.i = new com.bytedance.sdk.component.e.a.b.c.c(this.l);
                this.i.start();
                return true;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.e.a.c.c.d(th.getMessage());
            return false;
        }
    }

    public void e() {
        com.bytedance.sdk.component.e.a.c.b.a(f1019d.H(), 1);
        com.bytedance.sdk.component.e.a.c.c.c("flushMemoryAndDB()");
        final com.bytedance.sdk.component.e.a.b.c.c cVar = this.i;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            if (cVar != null) {
                cVar.c(2);
                return;
            }
            return;
        }
        f fVarP = i.g().p();
        if (fVarP == null) {
            com.bytedance.sdk.component.e.a.c.c.c("discard flush");
            return;
        }
        Executor executorE = fVarP.e();
        if (executorE == null) {
            executorE = fVarP.f();
        }
        if (executorE != null) {
            executorE.execute(new e("flush") { // from class: com.bytedance.sdk.component.e.a.b.d.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.e.a.b.c.c cVar2 = cVar;
                    if (cVar2 != null) {
                        cVar2.c(2);
                    }
                }
            });
        }
    }
}
