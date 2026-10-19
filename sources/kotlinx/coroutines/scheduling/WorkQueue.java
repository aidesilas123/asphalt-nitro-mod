package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.l0;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: compiled from: WorkQueue.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u0004\u0018\u00010\u0007J\b\u0010\u001c\u001a\u0004\u0018\u00010\u0007J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u00072\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0016\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0010$\u001a\u00060\tj\u0002`%H\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010\u00072\u0006\u0010'\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0015H\u0002J\"\u0010(\u001a\u00020)2\n\u0010$\u001a\u00060\tj\u0002`%2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070+J$\u0010,\u001a\u00020)2\n\u0010$\u001a\u00060\tj\u0002`%2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070+H\u0002J\u000e\u0010-\u001a\u00020\u0018*\u0004\u0018\u00010\u0007H\u0002R\t\u0010\u0003\u001a\u00020\u0004X\u0082\u0004R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\t\u0010\f\u001a\u00020\u0004X\u0082\u0004R\u0011\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000eX\u0082\u0004R\t\u0010\u000f\u001a\u00020\u0004X\u0082\u0004R\u0014\u0010\u0010\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000b¨\u0006."}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "", "()V", "blockingTasksInBuffer", "Lkotlinx/atomicfu/AtomicInt;", "buffer", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Lkotlinx/coroutines/scheduling/Task;", "bufferSize", "", "getBufferSize", "()I", "consumerIndex", "lastScheduledTask", "Lkotlinx/atomicfu/AtomicRef;", "producerIndex", "size", "getSize$kotlinx_coroutines_core", "add", "task", "fair", "", "addLast", "offloadAllWorkTo", "", "globalQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "poll", "pollBlocking", "pollBuffer", "pollCpu", "pollTo", "queue", "pollWithExclusiveMode", "onlyBlocking", "stealWithExclusiveMode", "stealingMode", "Lkotlinx/coroutines/scheduling/StealingMode;", "tryExtractFromTheMiddle", "index", "trySteal", "", "stolenTaskRef", "Lkotlin/jvm/internal/Ref$ObjectRef;", "tryStealLastScheduled", "decrementIfBlocking", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class WorkQueue {
    private static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex$volatile");
    private static final /* synthetic */ AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f10402d = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer$volatile");
    private volatile /* synthetic */ int blockingTasksInBuffer$volatile;
    private volatile /* synthetic */ int consumerIndex$volatile;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicReferenceArray<Task> f10403e = new AtomicReferenceArray<>(128);
    private volatile /* synthetic */ Object lastScheduledTask$volatile;
    private volatile /* synthetic */ int producerIndex$volatile;

    public static /* synthetic */ Task add$default(WorkQueue workQueue, Task task, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return workQueue.a(task, z);
    }

    private final Task b(Task task) {
        if (e() == 127) {
            return task;
        }
        if (task.b.getA() == 1) {
            f10402d.incrementAndGet(this);
        }
        int i = b.get(this) & 127;
        while (this.f10403e.get(i) != null) {
            Thread.yield();
        }
        this.f10403e.lazySet(i, task);
        b.incrementAndGet(this);
        return null;
    }

    private final void c(Task task) {
        if (task != null) {
            if (task.b.getA() == 1) {
                int iDecrementAndGet = f10402d.decrementAndGet(this);
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (!(iDecrementAndGet >= 0)) {
                        throw new AssertionError();
                    }
                }
            }
        }
    }

    private final int e() {
        return b.get(this) - c.get(this);
    }

    private final Task m() {
        Task andSet;
        while (true) {
            int i = c.get(this);
            if (i - b.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (c.compareAndSet(this, i, i + 1) && (andSet = this.f10403e.getAndSet(i2, null)) != null) {
                c(andSet);
                return andSet;
            }
        }
    }

    private final boolean o(GlobalQueue globalQueue) {
        Task taskM = m();
        if (taskM == null) {
            return false;
        }
        globalQueue.a(taskM);
        return true;
    }

    private final Task p(boolean z) {
        Task task;
        do {
            task = (Task) a.get(this);
            if (task != null) {
                if ((task.b.getA() == 1) == z) {
                }
            }
            int i = c.get(this);
            int i2 = b.get(this);
            while (i != i2) {
                if (z && f10402d.get(this) == 0) {
                    return null;
                }
                i2--;
                Task taskR = r(i2, z);
                if (taskR != null) {
                    return taskR;
                }
            }
            return null;
        } while (!a.compareAndSet(this, task, null));
        return task;
    }

    private final Task q(int i) {
        int i2 = c.get(this);
        int i3 = b.get(this);
        boolean z = i == 1;
        while (i2 != i3) {
            if (z && f10402d.get(this) == 0) {
                return null;
            }
            int i4 = i2 + 1;
            Task taskR = r(i2, z);
            if (taskR != null) {
                return taskR;
            }
            i2 = i4;
        }
        return null;
    }

    private final Task r(int i, boolean z) {
        int i2 = i & 127;
        Task task = this.f10403e.get(i2);
        if (task != null) {
            if ((task.b.getA() == 1) == z && this.f10403e.compareAndSet(i2, task, null)) {
                if (z) {
                    f10402d.decrementAndGet(this);
                }
                return task;
            }
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.h] */
    private final long t(int i, l0<Task> l0Var) {
        ?? r0;
        do {
            r0 = (Task) a.get(this);
            if (r0 == 0) {
                return -2L;
            }
            if (((r0.b.getA() == 1 ? 1 : 2) & i) == 0) {
                return -2L;
            }
            long jA = TasksKt.f10400f.a() - r0.a;
            long j = TasksKt.b;
            if (jA < j) {
                return j - jA;
            }
        } while (!a.compareAndSet(this, r0, null));
        l0Var.a = r0;
        return -1L;
    }

    public final Task a(Task task, boolean z) {
        if (z) {
            return b(task);
        }
        Task task2 = (Task) a.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return b(task2);
    }

    public final int i() {
        return a.get(this) != null ? e() + 1 : e();
    }

    public final void j(GlobalQueue globalQueue) {
        Task task = (Task) a.getAndSet(this, null);
        if (task != null) {
            globalQueue.a(task);
        }
        while (o(globalQueue)) {
        }
    }

    public final Task k() {
        Task task = (Task) a.getAndSet(this, null);
        return task == null ? m() : task;
    }

    public final Task l() {
        return p(true);
    }

    public final Task n() {
        return p(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long s(int i, l0<Task> l0Var) {
        T tM = i == 3 ? m() : q(i);
        if (tM == 0) {
            return t(i, l0Var);
        }
        l0Var.a = tM;
        return -1L;
    }
}
