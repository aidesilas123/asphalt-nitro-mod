package com.bytedance.sdk.component.g;

import com.bytedance.sdk.component.g.a;
import com.json.o2;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: TTExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
public class f extends e {
    public static c b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f1077e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f1078f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile ThreadPoolExecutor f1079g;
    private static volatile ThreadPoolExecutor h;
    private static volatile ThreadPoolExecutor i;
    private static volatile ThreadPoolExecutor j;
    private static volatile ScheduledExecutorService k;
    public static final int a = Runtime.getRuntime().availableProcessors();
    public static int c = 120;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static boolean f1076d = true;

    public static ExecutorService a(int i2) {
        if (f1078f == null) {
            synchronized (f.class) {
                if (f1078f == null) {
                    f1078f = new a.C0120a().a("io").a(2).b(i2).a(20L).a(TimeUnit.SECONDS).a(new LinkedBlockingQueue()).a(h()).a(e.a().createThreadFactory(i2, "io")).a();
                    f1078f.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f1078f;
    }

    public static void a(c cVar) {
        b = cVar;
    }

    public static void a(h hVar) {
        if (f1077e == null) {
            b();
        }
        if (hVar == null || f1077e == null) {
            return;
        }
        f1077e.execute(hVar);
    }

    public static void a(h hVar, int i2) {
        b(hVar);
    }

    public static void a(h hVar, int i2, int i3) {
        if (f1078f == null) {
            a(i3);
        }
        if (hVar == null || f1078f == null) {
            return;
        }
        hVar.setPriority(i2);
        f1078f.execute(hVar);
    }

    public static void a(boolean z) {
        f1076d = z;
    }

    public static ExecutorService b() {
        if (f1077e == null) {
            synchronized (f.class) {
                if (f1077e == null) {
                    f1077e = new a.C0120a().a(o2.a.f6463e).a(0).b(10).a(5L).a(TimeUnit.SECONDS).a(new SynchronousQueue()).a(h()).a(e.a().createThreadFactory(10, o2.a.f6463e)).a();
                }
            }
        }
        return f1077e;
    }

    public static ExecutorService b(int i2) {
        if (f1079g == null) {
            synchronized (f.class) {
                if (f1079g == null) {
                    f1079g = new a.C0120a().a("ad").a(2).b(i2).a(20L).a(TimeUnit.SECONDS).a(new LinkedBlockingQueue()).a(h()).a(e.a().createThreadFactory(i2, "ad")).a();
                    f1079g.allowCoreThreadTimeOut(true);
                }
            }
        }
        return f1079g;
    }

    public static void b(h hVar) {
        if (f1078f == null) {
            c();
        }
        if (f1078f != null) {
            f1078f.execute(hVar);
        }
    }

    public static void b(h hVar, int i2) {
        if (hVar != null) {
            hVar.setPriority(i2);
        }
        c(hVar);
    }

    public static ExecutorService c() {
        return a(10);
    }

    public static void c(int i2) {
        c = i2;
    }

    public static void c(h hVar) {
        if (h == null) {
            d();
        }
        if (hVar == null || h == null) {
            return;
        }
        h.execute(hVar);
    }

    public static void c(h hVar, int i2) {
        if (hVar != null) {
            hVar.setPriority(i2);
        }
        d(hVar);
    }

    public static ExecutorService d() {
        if (h == null) {
            synchronized (f.class) {
                if (h == null) {
                    h = new a.C0120a().a("log").b(10).a(4).a(20L).a(TimeUnit.SECONDS).a(new PriorityBlockingQueue()).a(h()).a(e.a().createThreadFactory(10, "log")).a();
                    h.allowCoreThreadTimeOut(true);
                }
            }
        }
        return h;
    }

    public static void d(h hVar) {
        if (j == null) {
            e();
        }
        if (hVar == null || j == null) {
            return;
        }
        j.execute(hVar);
    }

    public static ExecutorService e() {
        if (j == null) {
            synchronized (f.class) {
                if (j == null) {
                    j = new a.C0120a().a("aidl").b(10).a(2).a(30L).a(TimeUnit.SECONDS).a(new PriorityBlockingQueue()).a(h()).a(e.a().createThreadFactory(10, "aidl")).a();
                    j.allowCoreThreadTimeOut(true);
                }
            }
        }
        return j;
    }

    public static void e(h hVar) {
        if (f1079g == null) {
            b(5);
        }
        if (hVar == null || f1079g == null) {
            return;
        }
        f1079g.execute(hVar);
    }

    public static ScheduledExecutorService f() {
        if (k == null) {
            synchronized (f.class) {
                if (k == null) {
                    k = Executors.newSingleThreadScheduledExecutor(e.a().createThreadFactory(5, "scheduled"));
                }
            }
        }
        return k;
    }

    public static boolean g() {
        return f1076d;
    }

    public static RejectedExecutionHandler h() {
        return new RejectedExecutionHandler() { // from class: com.bytedance.sdk.component.g.f.1
            @Override // java.util.concurrent.RejectedExecutionHandler
            public void rejectedExecution(Runnable runnable, ThreadPoolExecutor threadPoolExecutor) {
            }
        };
    }

    public static c i() {
        return b;
    }

    public static ExecutorService j() {
        if (i == null) {
            synchronized (f.class) {
                if (i == null) {
                    i = new a.C0120a().a("computation").a(3).b(10).a(20L).a(TimeUnit.SECONDS).a(new PriorityBlockingQueue()).a(h()).a(e.a().createThreadFactory(10, "computation")).a();
                    i.allowCoreThreadTimeOut(true);
                }
            }
        }
        return i;
    }
}
