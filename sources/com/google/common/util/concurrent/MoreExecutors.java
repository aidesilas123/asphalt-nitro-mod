package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.a0;
import com.google.common.util.concurrent.m;
import com.json.o2;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class MoreExecutors {

    class a implements Executor {
        final /* synthetic */ Executor a;
        final /* synthetic */ m b;

        a(Executor executor, m mVar) {
            this.a = executor;
            this.b = mVar;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                this.a.execute(runnable);
            } catch (RejectedExecutionException e2) {
                this.b.C(e2);
            }
        }
    }

    static class b {

        class a implements Runnable {
            final /* synthetic */ ExecutorService a;
            final /* synthetic */ long b;
            final /* synthetic */ TimeUnit c;

            a(b bVar, ExecutorService executorService, long j, TimeUnit timeUnit) {
                this.a = executorService;
                this.b = j;
                this.c = timeUnit;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.a.shutdown();
                    this.a.awaitTermination(this.b, this.c);
                } catch (InterruptedException unused) {
                }
            }
        }

        b() {
        }

        final void a(ExecutorService executorService, long j, TimeUnit timeUnit) {
            Preconditions.checkNotNull(executorService);
            Preconditions.checkNotNull(timeUnit);
            String strValueOf = String.valueOf(executorService);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 24);
            sb.append("DelayedShutdownHook-for-");
            sb.append(strValueOf);
            b(MoreExecutors.c(sb.toString(), new a(this, executorService, j, timeUnit)));
        }

        void b(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }

        final ExecutorService c(ThreadPoolExecutor threadPoolExecutor) {
            return d(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ExecutorService d(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.e(threadPoolExecutor);
            ExecutorService executorServiceUnconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            a(threadPoolExecutor, j, timeUnit);
            return executorServiceUnconfigurableExecutorService;
        }

        final ScheduledExecutorService e(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return f(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ScheduledExecutorService f(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.e(scheduledThreadPoolExecutor);
            ScheduledExecutorService scheduledExecutorServiceUnconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            a(scheduledThreadPoolExecutor, j, timeUnit);
            return scheduledExecutorServiceUnconfigurableScheduledExecutorService;
        }
    }

    private static final class c extends n {
        private final Object a;
        private int b;
        private boolean c;

        private c() {
            this.a = new Object();
            this.b = 0;
            this.c = false;
        }

        /* synthetic */ c(l0 l0Var) {
            this();
        }

        private void c() {
            synchronized (this.a) {
                int i = this.b - 1;
                this.b = i;
                if (i == 0) {
                    this.a.notifyAll();
                }
            }
        }

        private void d() {
            synchronized (this.a) {
                if (this.c) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.b++;
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j);
            synchronized (this.a) {
                while (true) {
                    if (this.c && this.b == 0) {
                        return true;
                    }
                    if (nanos <= 0) {
                        return false;
                    }
                    long jNanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.a, nanos);
                    nanos -= System.nanoTime() - jNanoTime;
                }
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            d();
            try {
                runnable.run();
            } finally {
                c();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z;
            synchronized (this.a) {
                z = this.c;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z;
            synchronized (this.a) {
                z = this.c && this.b == 0;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.a) {
                this.c = true;
                if (this.b == 0) {
                    this.a.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }
    }

    private static class d extends n {
        private final ExecutorService a;

        d(ExecutorService executorService) {
            this.a = (ExecutorService) Preconditions.checkNotNull(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.a.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.a.execute(runnable);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.a.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.a.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.a.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.a.shutdownNow();
        }

        public final String toString() {
            String string = super.toString();
            String strValueOf = String.valueOf(this.a);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 2 + strValueOf.length());
            sb.append(string);
            sb.append(o2.i.f6490d);
            sb.append(strValueOf);
            sb.append(o2.i.f6491e);
            return sb.toString();
        }
    }

    private static final class e extends d implements k0 {
        final ScheduledExecutorService b;

        private static final class a<V> extends a0.a<V> implements i0<V> {
            private final ScheduledFuture<?> b;

            public a(h0<V> h0Var, ScheduledFuture<?> scheduledFuture) {
                super(h0Var);
                this.b = scheduledFuture;
            }

            @Override // java.lang.Comparable
            /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
            public int compareTo(Delayed delayed) {
                return this.b.compareTo(delayed);
            }

            @Override // com.google.common.util.concurrent.z, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean zCancel = super.cancel(z);
                if (zCancel) {
                    this.b.cancel(z);
                }
                return zCancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.b.getDelay(timeUnit);
            }
        }

        private static final class b extends m.j<Void> implements Runnable {
            private final Runnable h;

            public b(Runnable runnable) {
                this.h = (Runnable) Preconditions.checkNotNull(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.h.run();
                } catch (Throwable th) {
                    C(th);
                    throw Throwables.propagate(th);
                }
            }

            @Override // com.google.common.util.concurrent.m
            protected String y() {
                String strValueOf = String.valueOf(this.h);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 7);
                sb.append("task=[");
                sb.append(strValueOf);
                sb.append(o2.i.f6491e);
                return sb.toString();
            }
        }

        e(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.b = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService);
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public i0<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            t0 t0VarG = t0.G(runnable, null);
            return new a(t0VarG, this.b.schedule(t0VarG, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public <V> i0<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            t0 t0VarH = t0.H(callable);
            return new a(t0VarH, this.b.schedule(t0VarH, j, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public i0<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.b.scheduleAtFixedRate(bVar, j, j2, timeUnit));
        }

        @Override // java.util.concurrent.ScheduledExecutorService
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public i0<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            b bVar = new b(runnable);
            return new a(bVar, this.b.scheduleWithFixedDelay(bVar, j, j2, timeUnit));
        }
    }

    private MoreExecutors() {
    }

    public static void addDelayedShutdownHook(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new b().a(executorService, j, timeUnit);
    }

    private static boolean b() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            Class.forName("com.google.appengine.api.utils.SystemProperty");
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    static Thread c(String str, Runnable runnable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(runnable);
        Thread threadNewThread = platformThreadFactory().newThread(runnable);
        try {
            threadNewThread.setName(str);
        } catch (SecurityException unused) {
        }
        return threadNewThread;
    }

    static Executor d(Executor executor, m<?> mVar) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(mVar);
        return executor == directExecutor() ? executor : new a(executor, mVar);
    }

    public static Executor directExecutor() {
        return DirectExecutor.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new r0().e(true).g(threadPoolExecutor.getThreadFactory()).b());
    }

    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
        return new b().c(threadPoolExecutor);
    }

    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        return new b().d(threadPoolExecutor, j, timeUnit);
    }

    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new b().e(scheduledThreadPoolExecutor);
    }

    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        return new b().f(scheduledThreadPoolExecutor, j, timeUnit);
    }

    public static j0 listeningDecorator(ExecutorService executorService) {
        if (executorService instanceof j0) {
            return (j0) executorService;
        }
        return executorService instanceof ScheduledExecutorService ? new e((ScheduledExecutorService) executorService) : new d(executorService);
    }

    public static k0 listeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        return scheduledExecutorService instanceof k0 ? (k0) scheduledExecutorService : new e(scheduledExecutorService);
    }

    public static j0 newDirectExecutorService() {
        return new c(null);
    }

    public static Executor newSequentialExecutor(Executor executor) {
        return new SequentialExecutor(executor);
    }

    public static ThreadFactory platformThreadFactory() {
        if (!b()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
        } catch (IllegalAccessException e3) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
        } catch (NoSuchMethodException e4) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e4);
        } catch (InvocationTargetException e5) {
            throw Throwables.propagate(e5.getCause());
        }
    }

    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j) / 2;
        executorService.shutdown();
        try {
            TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
            if (!executorService.awaitTermination(nanos, timeUnit2)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, timeUnit2);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }
}
