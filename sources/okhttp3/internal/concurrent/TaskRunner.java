package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.v;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: TaskRunner.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 #2\u00020\u0001:\u0003\"#$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rH\u0002J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0006\u0010\u001c\u001a\u00020\u0016J\u0015\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\tH\u0000¢\u0006\u0002\b\u001fJ\u0006\u0010 \u001a\u00020\tJ\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner;", "", "backend", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "(Lokhttp3/internal/concurrent/TaskRunner$Backend;)V", "getBackend", "()Lokhttp3/internal/concurrent/TaskRunner$Backend;", "busyQueues", "", "Lokhttp3/internal/concurrent/TaskQueue;", "coordinatorWaiting", "", "coordinatorWakeUpAt", "", "nextQueueName", "", "readyQueues", "runnable", "Ljava/lang/Runnable;", "activeQueues", "", "afterRun", "", "task", "Lokhttp3/internal/concurrent/Task;", "delayNanos", "awaitTaskToRun", "beforeRun", "cancelAll", "kickCoordinator", "taskQueue", "kickCoordinator$okhttp", "newQueue", "runTask", "Backend", "Companion", "RealBackend", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class TaskRunner {
    public static final b a = new b(null);
    public static final TaskRunner b = new TaskRunner(new c(Util.threadFactory(Intrinsics.stringPlus(Util.i, " TaskRunner"), true)));
    private static final Logger c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f10659d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f10660e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10661f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f10662g;
    private final List<TaskQueue> h;
    private final List<TaskQueue> i;
    private final Runnable j;

    /* JADX INFO: compiled from: TaskRunner.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\tH&¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Backend;", "", "beforeTask", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "coordinatorNotify", "coordinatorWait", "nanos", "", "execute", "runnable", "Ljava/lang/Runnable;", "nanoTime", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public interface a {
        void a(TaskRunner taskRunner);

        void b(TaskRunner taskRunner, long j);

        void execute(Runnable runnable);

        long nanoTime();
    }

    /* JADX INFO: compiled from: TaskRunner.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Companion;", "", "()V", "INSTANCE", "Lokhttp3/internal/concurrent/TaskRunner;", "logger", "Ljava/util/logging/Logger;", "getLogger", "()Ljava/util/logging/Logger;", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(n nVar) {
            this();
        }

        public final Logger a() {
            return TaskRunner.c;
        }
    }

    /* JADX INFO: compiled from: TaskRunner.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\u0006\u0010\u0013\u001a\u00020\bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$RealBackend;", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "threadFactory", "Ljava/util/concurrent/ThreadFactory;", "(Ljava/util/concurrent/ThreadFactory;)V", "executor", "Ljava/util/concurrent/ThreadPoolExecutor;", "beforeTask", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "coordinatorNotify", "coordinatorWait", "nanos", "", "execute", "runnable", "Ljava/lang/Runnable;", "nanoTime", "shutdown", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class c implements a {
        private final ThreadPoolExecutor a;

        public c(ThreadFactory threadFactory) {
            Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
            this.a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.a
        public void a(TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.a
        public void b(TaskRunner taskRunner, long j) throws InterruptedException {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            long j2 = j / 1000000;
            long j3 = j - (1000000 * j2);
            if (j2 > 0 || j > 0) {
                taskRunner.wait(j2, (int) j3);
            }
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.a
        public void execute(Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            this.a.execute(runnable);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.a
        public long nanoTime() {
            return System.nanoTime();
        }
    }

    /* JADX INFO: compiled from: TaskRunner.kt */
    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"okhttp3/internal/concurrent/TaskRunner$runnable$1", "Ljava/lang/Runnable;", "run", "", "okhttp"}, mv = {1, 6, 0}, xi = 48)
    public static final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Task taskB;
            while (true) {
                TaskRunner taskRunner = TaskRunner.this;
                synchronized (taskRunner) {
                    taskB = taskRunner.b();
                }
                if (taskB == null) {
                    return;
                }
                TaskQueue c = taskB.getC();
                Intrinsics.checkNotNull(c);
                TaskRunner taskRunner2 = TaskRunner.this;
                long jNanoTime = -1;
                boolean zIsLoggable = TaskRunner.a.a().isLoggable(Level.FINE);
                if (zIsLoggable) {
                    jNanoTime = c.getA().getF10659d().nanoTime();
                    TaskLoggerKt.a(taskB, c, "starting");
                }
                try {
                    try {
                        taskRunner2.h(taskB);
                        v vVar = v.a;
                        if (zIsLoggable) {
                            TaskLoggerKt.a(taskB, c, Intrinsics.stringPlus("finished run in ", TaskLoggerKt.formatDuration(c.getA().getF10659d().nanoTime() - jNanoTime)));
                        }
                    } finally {
                    }
                } catch (Throwable th) {
                    if (zIsLoggable) {
                        TaskLoggerKt.a(taskB, c, Intrinsics.stringPlus("failed a run in ", TaskLoggerKt.formatDuration(c.getA().getF10659d().nanoTime() - jNanoTime)));
                    }
                    throw th;
                }
            }
        }
    }

    static {
        Logger logger = Logger.getLogger(TaskRunner.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger, "getLogger(TaskRunner::class.java.name)");
        c = logger;
    }

    public TaskRunner(a backend) {
        Intrinsics.checkNotNullParameter(backend, "backend");
        this.f10659d = backend;
        this.f10660e = 10000;
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new d();
    }

    private final void a(Task task, long j) {
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        TaskQueue c2 = task.getC();
        Intrinsics.checkNotNull(c2);
        if (!(c2.getF10656d() == task)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        boolean f10658f = c2.getF10658f();
        c2.l(false);
        c2.k(null);
        this.h.remove(c2);
        if (j != -1 && !f10658f && !c2.getC()) {
            c2.j(task, j, true);
        }
        if (!c2.e().isEmpty()) {
            this.i.add(c2);
        }
    }

    private final void c(Task task) {
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        task.g(-1L);
        TaskQueue c2 = task.getC();
        Intrinsics.checkNotNull(c2);
        c2.e().remove(task);
        this.i.remove(c2);
        c2.k(task);
        this.h.add(c2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(Task task) {
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(task.getA());
        try {
            long jF = task.f();
            synchronized (this) {
                a(task, jF);
                v vVar = v.a;
            }
            threadCurrentThread.setName(name);
        } catch (Throwable th) {
            synchronized (this) {
                a(task, -1L);
                v vVar2 = v.a;
                threadCurrentThread.setName(name);
                throw th;
            }
        }
    }

    public final Task b() {
        boolean z;
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        while (!this.i.isEmpty()) {
            long jNanoTime = this.f10659d.nanoTime();
            long jMin = Long.MAX_VALUE;
            Iterator<TaskQueue> it = this.i.iterator();
            Task task = null;
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                Task task2 = it.next().e().get(0);
                long jMax = Math.max(0L, task2.getF10663d() - jNanoTime);
                if (jMax > 0) {
                    jMin = Math.min(jMax, jMin);
                } else {
                    if (task != null) {
                        z = true;
                        break;
                    }
                    task = task2;
                }
            }
            if (task != null) {
                c(task);
                if (z || (!this.f10661f && (!this.i.isEmpty()))) {
                    this.f10659d.execute(this.j);
                }
                return task;
            }
            if (this.f10661f) {
                if (jMin < this.f10662g - jNanoTime) {
                    this.f10659d.a(this);
                }
                return null;
            }
            this.f10661f = true;
            this.f10662g = jNanoTime + jMin;
            try {
                try {
                    this.f10659d.b(this, jMin);
                } catch (InterruptedException unused) {
                    d();
                }
            } finally {
                this.f10661f = false;
            }
        }
        return null;
    }

    public final void d() {
        int size = this.h.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                this.h.get(size).b();
                if (i < 0) {
                    break;
                } else {
                    size = i;
                }
            }
        }
        int size2 = this.i.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i2 = size2 - 1;
            TaskQueue taskQueue = this.i.get(size2);
            taskQueue.b();
            if (taskQueue.e().isEmpty()) {
                this.i.remove(size2);
            }
            if (i2 < 0) {
                return;
            } else {
                size2 = i2;
            }
        }
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final a getF10659d() {
        return this.f10659d;
    }

    public final void f(TaskQueue taskQueue) {
        Intrinsics.checkNotNullParameter(taskQueue, "taskQueue");
        if (Util.h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        if (taskQueue.getF10656d() == null) {
            if (!taskQueue.e().isEmpty()) {
                Util.addIfAbsent(this.i, taskQueue);
            } else {
                this.i.remove(taskQueue);
            }
        }
        if (this.f10661f) {
            this.f10659d.a(this);
        } else {
            this.f10659d.execute(this.j);
        }
    }

    public final TaskQueue g() {
        int i;
        synchronized (this) {
            i = this.f10660e;
            this.f10660e = i + 1;
        }
        return new TaskQueue(this, Intrinsics.stringPlus("Q", Integer.valueOf(i)));
    }
}
