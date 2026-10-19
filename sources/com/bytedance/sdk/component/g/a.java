package com.bytedance.sdk.component.g;

import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.component.utils.l;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: ADThreadPoolExecutor.java */
/* JADX INFO: loaded from: classes2.dex */
class a extends ThreadPoolExecutor {
    private String a;

    /* JADX INFO: renamed from: com.bytedance.sdk.component.g.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ADThreadPoolExecutor.java */
    public static class C0120a {
        private RejectedExecutionHandler h;
        private String a = "io";
        private int b = 1;
        private long c = 30;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private TimeUnit f1067d = TimeUnit.SECONDS;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f1068e = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private BlockingQueue<Runnable> f1069f = null;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private ThreadFactory f1070g = null;
        private int i = 5;

        public C0120a a(int i) {
            this.b = i;
            return this;
        }

        public C0120a a(long j) {
            this.c = j;
            return this;
        }

        public C0120a a(String str) {
            this.a = str;
            return this;
        }

        public C0120a a(BlockingQueue<Runnable> blockingQueue) {
            this.f1069f = blockingQueue;
            return this;
        }

        public C0120a a(RejectedExecutionHandler rejectedExecutionHandler) {
            this.h = rejectedExecutionHandler;
            return this;
        }

        public C0120a a(ThreadFactory threadFactory) {
            this.f1070g = threadFactory;
            return this;
        }

        public C0120a a(TimeUnit timeUnit) {
            this.f1067d = timeUnit;
            return this;
        }

        public a a() {
            if (this.f1070g == null) {
                this.f1070g = e.a().createThreadFactory(this.i, this.a);
            }
            if (this.h == null) {
                this.h = f.h();
            }
            if (this.f1069f == null) {
                this.f1069f = new LinkedBlockingQueue();
            }
            return new a(this.a, this.b, this.f1068e, this.c, this.f1067d, this.f1069f, this.f1070g, this.h);
        }

        public C0120a b(int i) {
            this.i = i;
            return this;
        }
    }

    public a(String str, int i, int i2, long j, TimeUnit timeUnit, BlockingQueue<Runnable> blockingQueue, ThreadFactory threadFactory, RejectedExecutionHandler rejectedExecutionHandler) {
        super(i, i2, j, timeUnit, blockingQueue, threadFactory, rejectedExecutionHandler);
        this.a = str;
    }

    private void a(Runnable runnable) {
        try {
            super.execute(runnable);
        } catch (OutOfMemoryError e2) {
            a(runnable, e2);
        } catch (Throwable th) {
            a(runnable, th);
        }
    }

    private void a(Runnable runnable, OutOfMemoryError outOfMemoryError) {
        a(runnable, (Throwable) outOfMemoryError);
    }

    private void a(Runnable runnable, Throwable th) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return;
        }
        try {
            runnable.run();
        } catch (Throwable th2) {
            l.c("", "try exc failed", th2);
        }
    }

    private void a(BlockingQueue<Runnable> blockingQueue, int i) {
        if (getCorePoolSize() == i || blockingQueue == null || blockingQueue.size() > 0) {
            return;
        }
        try {
            setCorePoolSize(i);
            l.b("ADThreadPoolExecutor", "reduceCoreThreadSize: reduce poolType =  ", this.a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
        } catch (Exception e2) {
            l.c("ADThreadPoolExecutor", e2.getMessage());
        }
    }

    private void a(BlockingQueue<Runnable> blockingQueue, int i, int i2) {
        if (getCorePoolSize() == i || blockingQueue == null || blockingQueue.size() < i2) {
            return;
        }
        try {
            setCorePoolSize(i);
            l.b("ADThreadPoolExecutor", "increaseCoreThreadSize: increase poolType =  ", this.a, " coreSize=", Integer.valueOf(getCorePoolSize()), "  maxSize=", Integer.valueOf(getMaximumPoolSize()));
        } catch (Exception e2) {
            l.c("ADThreadPoolExecutor", e2.getMessage());
        }
    }

    public String a() {
        return this.a;
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        BlockingQueue<Runnable> queue;
        super.afterExecute(runnable, th);
        if (!f.g() || TextUtils.isEmpty(this.a) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.a;
        str.hashCode();
        switch (str) {
            case "io":
                a(queue, 2);
                break;
            case "log":
                a(queue, 4);
                break;
            case "aidl":
                a(queue, 2);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        BlockingQueue<Runnable> queue;
        if (runnable instanceof h) {
            a(new b((h) runnable, this));
        } else {
            a(new b(new h("unknown") { // from class: com.bytedance.sdk.component.g.a.1
                @Override // java.lang.Runnable
                public void run() {
                    runnable.run();
                }
            }, this));
        }
        if (!f.g() || TextUtils.isEmpty(this.a) || (queue = getQueue()) == null) {
            return;
        }
        String str = this.a;
        str.hashCode();
        switch (str) {
            case "io":
                a(queue, f.a + 2, getCorePoolSize() * 2);
                break;
            case "log":
                a(queue, 8, 8);
                break;
            case "aidl":
                a(queue, 5, 5);
                break;
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public void shutdown() {
        if ("io".equals(this.a) || "aidl".equals(this.a)) {
            return;
        }
        super.shutdown();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return ("io".equals(this.a) || "aidl".equals(this.a)) ? Collections.emptyList() : super.shutdownNow();
    }
}
