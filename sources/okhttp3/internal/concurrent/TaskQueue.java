package okhttp3.internal.concurrent;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.v;
import okhttp3.internal.Util;

/* JADX INFO: compiled from: TaskQueue.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u00013B\u0017\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010!\u001a\u00020\"J\r\u0010#\u001a\u00020\u000eH\u0000¢\u0006\u0002\b$J8\u0010%\u001a\u00020\"2\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020\u000e2\u000e\b\u0004\u0010)\u001a\b\u0012\u0004\u0012\u00020\"0*H\u0086\bø\u0001\u0000J\u0006\u0010+\u001a\u00020,J.\u0010-\u001a\u00020\"2\u0006\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010&\u001a\u00020'2\u000e\b\u0004\u0010)\u001a\b\u0012\u0004\u0012\u00020'0*H\u0086\bø\u0001\u0000J\u0018\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020\b2\b\b\u0002\u0010&\u001a\u00020'J%\u0010/\u001a\u00020\u000e2\u0006\u0010.\u001a\u00020\b2\u0006\u0010&\u001a\u00020'2\u0006\u00100\u001a\u00020\u000eH\u0000¢\u0006\u0002\b1J\u0006\u0010\u001c\u001a\u00020\"J\b\u00102\u001a\u00020\u0005H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\b0\u0014X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\b0\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u0016R\u001a\u0010\u001c\u001a\u00020\u000eX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0010\"\u0004\b\u001e\u0010\u0012R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 \u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00064"}, d2 = {"Lokhttp3/internal/concurrent/TaskQueue;", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "name", "", "(Lokhttp3/internal/concurrent/TaskRunner;Ljava/lang/String;)V", "activeTask", "Lokhttp3/internal/concurrent/Task;", "getActiveTask$okhttp", "()Lokhttp3/internal/concurrent/Task;", "setActiveTask$okhttp", "(Lokhttp3/internal/concurrent/Task;)V", "cancelActiveTask", "", "getCancelActiveTask$okhttp", "()Z", "setCancelActiveTask$okhttp", "(Z)V", "futureTasks", "", "getFutureTasks$okhttp", "()Ljava/util/List;", "getName$okhttp", "()Ljava/lang/String;", "scheduledTasks", "", "getScheduledTasks", "shutdown", "getShutdown$okhttp", "setShutdown$okhttp", "getTaskRunner$okhttp", "()Lokhttp3/internal/concurrent/TaskRunner;", "cancelAll", "", "cancelAllAndDecide", "cancelAllAndDecide$okhttp", "execute", "delayNanos", "", "cancelable", "block", "Lkotlin/Function0;", "idleLatch", "Ljava/util/concurrent/CountDownLatch;", "schedule", "task", "scheduleAndDecide", "recurrence", "scheduleAndDecide$okhttp", "toString", "AwaitIdleTask", "okhttp"}, mv = {1, 6, 0}, xi = 48)
public final class TaskQueue {
    private final TaskRunner a;
    private final String b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Task f10656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<Task> f10657e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f10658f;

    public TaskQueue(TaskRunner taskRunner, String name) {
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(name, "name");
        this.a = taskRunner;
        this.b = name;
        this.f10657e = new ArrayList();
    }

    public static /* synthetic */ void execute$default(TaskQueue taskQueue, String name, long j, boolean z, Function0 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        taskQueue.i(new b(name, z, block), j);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, String name, long j, Function0 block, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(block, "block");
        taskQueue.i(new c(name, block), j);
    }

    public static /* synthetic */ void schedule$default(TaskQueue taskQueue, Task task, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        taskQueue.i(task, j);
    }

    public final void a() {
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.a) {
            if (b()) {
                getA().f(this);
            }
            v vVar = v.a;
        }
    }

    public final boolean b() {
        Task task = this.f10656d;
        if (task != null) {
            Intrinsics.checkNotNull(task);
            if (task.getB()) {
                this.f10658f = true;
            }
        }
        boolean z = false;
        int size = this.f10657e.size() - 1;
        if (size >= 0) {
            while (true) {
                int i = size - 1;
                if (this.f10657e.get(size).getB()) {
                    Task task2 = this.f10657e.get(size);
                    if (TaskRunner.a.a().isLoggable(Level.FINE)) {
                        TaskLoggerKt.a(task2, this, "canceled");
                    }
                    this.f10657e.remove(size);
                    z = true;
                }
                if (i < 0) {
                    break;
                }
                size = i;
            }
        }
        return z;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final Task getF10656d() {
        return this.f10656d;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final boolean getF10658f() {
        return this.f10658f;
    }

    public final List<Task> e() {
        return this.f10657e;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final String getB() {
        return this.b;
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final boolean getC() {
        return this.c;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final TaskRunner getA() {
        return this.a;
    }

    public final void i(Task task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        synchronized (this.a) {
            if (!getC()) {
                if (j(task, j, false)) {
                    getA().f(this);
                }
                v vVar = v.a;
            } else if (task.getB()) {
                if (TaskRunner.a.a().isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task, this, "schedule canceled (queue is shutdown)");
                }
            } else {
                if (TaskRunner.a.a().isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task, this, "schedule failed (queue is shutdown)");
                }
                throw new RejectedExecutionException();
            }
        }
    }

    public final boolean j(Task task, long j, boolean z) {
        Intrinsics.checkNotNullParameter(task, "task");
        task.e(this);
        long jNanoTime = this.a.getF10659d().nanoTime();
        long j2 = jNanoTime + j;
        int iIndexOf = this.f10657e.indexOf(task);
        if (iIndexOf != -1) {
            if (task.getF10663d() <= j2) {
                if (TaskRunner.a.a().isLoggable(Level.FINE)) {
                    TaskLoggerKt.a(task, this, "already scheduled");
                }
                return false;
            }
            this.f10657e.remove(iIndexOf);
        }
        task.g(j2);
        if (TaskRunner.a.a().isLoggable(Level.FINE)) {
            TaskLoggerKt.a(task, this, z ? Intrinsics.stringPlus("run again after ", TaskLoggerKt.formatDuration(j2 - jNanoTime)) : Intrinsics.stringPlus("scheduled after ", TaskLoggerKt.formatDuration(j2 - jNanoTime)));
        }
        Iterator<Task> it = this.f10657e.iterator();
        int size = 0;
        while (true) {
            if (!it.hasNext()) {
                size = -1;
                break;
            }
            if (it.next().getF10663d() - jNanoTime > j) {
                break;
            }
            size++;
        }
        if (size == -1) {
            size = this.f10657e.size();
        }
        this.f10657e.add(size, task);
        return size == 0;
    }

    public final void k(Task task) {
        this.f10656d = task;
    }

    public final void l(boolean z) {
        this.f10658f = z;
    }

    public final void m(boolean z) {
        this.c = z;
    }

    public final void n() {
        if (Util.h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        synchronized (this.a) {
            m(true);
            if (b()) {
                getA().f(this);
            }
            v vVar = v.a;
        }
    }

    public String toString() {
        return this.b;
    }
}
