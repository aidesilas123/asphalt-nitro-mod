package kotlinx.coroutines.scheduling;

import com.json.sdk.controller.f;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.l0;
import kotlin.jvm.internal.n;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.v;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;

/*  JADX ERROR: Error in decompile pass: KotlinMetadataDecompile
    kotlin.metadata.InconsistentKotlinMetadataException: Metadata is missing: kotlin.Metadata.data1 must not be an empty array
    	at kotlin.metadata.jvm.internal.JvmExceptionUtilsKt.requireNotEmpty(JvmExceptionUtils.kt:12)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readKmClass$kotlin_metadata_jvm(JvmReadUtils.kt:27)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Class.<init>(KotlinClassMetadata.kt:95)
    	at kotlin.metadata.jvm.internal.JvmReadUtils.readMetadataImpl$kotlin_metadata_jvm(JvmReadUtils.kt:50)
    	at kotlin.metadata.jvm.KotlinClassMetadata$Companion.readLenient(KotlinClassMetadata.kt:418)
    	at jadx.plugins.kotlin.metadata.utils.KotlinMetadataExtKt.getKotlinClassMetadata(KotlinMetadataExt.kt:71)
    	at jadx.plugins.kotlin.metadata.utils.KmClassWrapper$Companion.getWrapper(KmClassWrapper.kt:37)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:35)
    	at jadx.plugins.kotlin.metadata.pass.KotlinMetadataDecompilePass.visit(KotlinMetadataDecompilePass.kt:33)
    */
/* JADX INFO: compiled from: CoroutineScheduler.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\b\u0000\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0003IJKB)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0011\u0010\r\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0086\bJ\u0011\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\bJ\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0004H\u0002J\u001a\u0010&\u001a\u00020 2\n\u0010'\u001a\u00060(j\u0002`)2\u0006\u0010*\u001a\u00020+J\u0011\u0010\u0012\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\bJ\u000e\u0010,\u001a\b\u0018\u00010\u001dR\u00020\u0000H\u0002J\t\u0010-\u001a\u00020$H\u0082\bJ\t\u0010.\u001a\u00020\u0004H\u0082\bJ&\u0010/\u001a\u00020$2\n\u0010'\u001a\u00060(j\u0002`)2\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u00100\u001a\u00020\u0018J\u0014\u00101\u001a\u00020$2\n\u00102\u001a\u00060(j\u0002`)H\u0016J\t\u00103\u001a\u00020\u0007H\u0082\bJ\t\u00104\u001a\u00020\u0004H\u0082\bJ\u0014\u00105\u001a\u00020\u00042\n\u00106\u001a\u00060\u001dR\u00020\u0000H\u0002J\u000e\u00107\u001a\b\u0018\u00010\u001dR\u00020\u0000H\u0002J\u0012\u00108\u001a\u00020\u00182\n\u00106\u001a\u00060\u001dR\u00020\u0000J\"\u00109\u001a\u00020$2\n\u00106\u001a\u00060\u001dR\u00020\u00002\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u0004J\t\u0010<\u001a\u00020\u0007H\u0082\bJ\u000e\u0010=\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020\u0007J\u0018\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0018H\u0002J\u0006\u0010C\u001a\u00020$J\b\u0010D\u001a\u00020\tH\u0016J\t\u0010E\u001a\u00020\u0018H\u0082\bJ\u0012\u0010F\u001a\u00020\u00182\b\b\u0002\u0010!\u001a\u00020\u0007H\u0002J\b\u0010G\u001a\u00020\u0018H\u0002J$\u0010H\u001a\u0004\u0018\u00010 *\b\u0018\u00010\u001dR\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u00100\u001a\u00020\u0018H\u0002R\t\u0010\u000b\u001a\u00020\fX\u0082\u0004R\u0015\u0010\r\u001a\u00020\u00048Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\t\u0010\u0010\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0012\u001a\u00020\u00048Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0010\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0019R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\t\u0010\u001a\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\f\u0012\b\u0012\u00060\u001dR\u00020\u00000\u001c8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006L"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "corePoolSize", "", "maxPoolSize", "idleWorkerKeepAliveNs", "", "schedulerName", "", "(IIJLjava/lang/String;)V", "_isTerminated", "Lkotlinx/atomicfu/AtomicBoolean;", "availableCpuPermits", "getAvailableCpuPermits", "()I", "controlState", "Lkotlinx/atomicfu/AtomicLong;", "createdWorkers", "getCreatedWorkers", "globalBlockingQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "isTerminated", "", "()Z", "parkedWorkersStack", "workers", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "addToGlobalQueue", "task", "Lkotlinx/coroutines/scheduling/Task;", "state", "blockingTasks", "close", "", "createNewWorker", "createTask", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "taskContext", "Lkotlinx/coroutines/scheduling/TaskContext;", "currentWorker", "decrementBlockingTasks", "decrementCreatedWorkers", "dispatch", "tailDispatch", "execute", f.b.COMMAND, "incrementBlockingTasks", "incrementCreatedWorkers", "parkedWorkersStackNextIndex", "worker", "parkedWorkersStackPop", "parkedWorkersStackPush", "parkedWorkersStackTopUpdate", "oldIndex", "newIndex", "releaseCpuPermit", "runSafely", "shutdown", "timeout", "signalBlockingWork", "stateSnapshot", "skipUnpark", "signalCpuWork", "toString", "tryAcquireCpuPermit", "tryCreateWorker", "tryUnpark", "submitToLocalQueue", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class CoroutineScheduler implements Executor, Closeable {
    public static final a a = new a(null);
    private static final /* synthetic */ AtomicLongFieldUpdater b = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater c = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f10386d = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Symbol f10387e = new Symbol("NOT_IN_STACK");
    private volatile /* synthetic */ int _isTerminated$volatile;
    private volatile /* synthetic */ long controlState$volatile;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f10388f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f10389g;
    public final long h;
    public final String i;
    public final GlobalQueue j;
    public final GlobalQueue k;
    public final ResizableAtomicArray<Worker> l;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0005J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010'\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020 H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010 2\u0006\u0010+\u001a\u00020\u000eH\u0002J\n\u0010,\u001a\u0004\u0018\u00010 H\u0002J\n\u0010-\u001a\u0004\u0018\u00010 H\u0002J\u0010\u0010.\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010/\u001a\u00020%2\u0006\u00100\u001a\u00020\u0003H\u0002J\b\u00101\u001a\u00020\u000eH\u0002J\u0006\u00102\u001a\u00020\u000eJ\u000e\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0003J\b\u00105\u001a\u00020%H\u0002J\n\u00106\u001a\u0004\u0018\u00010 H\u0002J\b\u00107\u001a\u00020%H\u0016J\u0006\u00108\u001a\u00020\u0010J\b\u00109\u001a\u00020%H\u0002J\b\u0010:\u001a\u00020\u000eH\u0002J\b\u0010;\u001a\u00020%H\u0002J\u000e\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u001dJ\u0016\u0010>\u001a\u0004\u0018\u00010 2\n\u0010?\u001a\u00060\u0003j\u0002`@H\u0002J\b\u0010A\u001a\u00020%H\u0002R$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0012\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0006\u0010\"\u001a\u00020#¨\u0006B"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "index", "", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "indexInArray", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "mayHaveLocalTasks", "", "minDelayUntilStealableTaskNs", "", "nextParkedWorker", "", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "rngState", "scheduler", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "stolenTask", "Lkotlin/jvm/internal/Ref$ObjectRef;", "Lkotlinx/coroutines/scheduling/Task;", "terminationDeadline", "workerCtl", "Lkotlinx/atomicfu/AtomicInt;", "afterTask", "", "taskMode", "beforeTask", "executeTask", "task", "findAnyTask", "scanLocalQueue", "findBlockingTask", "findCpuTask", "findTask", "idleReset", "mode", "inStack", "isIo", "nextInt", "upperBound", "park", "pollGlobalQueues", "run", "runSingleTask", "runWorker", "tryAcquireCpuPermit", "tryPark", "tryReleaseCpu", "newState", "trySteal", "stealingMode", "Lkotlinx/coroutines/scheduling/StealingMode;", "tryTerminateWorker", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    public final class Worker extends Thread {
        private static final /* synthetic */ AtomicIntegerFieldUpdater a = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        public final WorkQueue b;
        private final l0<Task> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public WorkerState f10390d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f10391e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f10392f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f10393g;
        public boolean h;
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        private Worker() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.b = new WorkQueue();
            this.c = new l0<>();
            this.f10390d = WorkerState.f10394d;
            this.nextParkedWorker = CoroutineScheduler.f10387e;
            int iNanoTime = (int) System.nanoTime();
            this.f10393g = iNanoTime == 0 ? 42 : iNanoTime;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            r(i);
        }

        private final void a(int i) {
            if (i == 0) {
                return;
            }
            CoroutineScheduler.h().addAndGet(CoroutineScheduler.this, -2097152L);
            WorkerState workerState = this.f10390d;
            if (workerState != WorkerState.f10395e) {
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (!(workerState == WorkerState.b)) {
                        throw new AssertionError();
                    }
                }
                this.f10390d = WorkerState.f10394d;
            }
        }

        private final void b(int i) {
            if (i != 0 && v(WorkerState.b)) {
                CoroutineScheduler.this.s();
            }
        }

        private final void c(Task task) {
            int a2 = task.b.getA();
            j(a2);
            b(a2);
            CoroutineScheduler.this.p(task);
            a(a2);
        }

        private final Task d(boolean z) {
            Task taskO;
            Task taskO2;
            if (z) {
                boolean z2 = m(CoroutineScheduler.this.f10388f * 2) == 0;
                if (z2 && (taskO2 = o()) != null) {
                    return taskO2;
                }
                Task taskK = this.b.k();
                if (taskK != null) {
                    return taskK;
                }
                if (!z2 && (taskO = o()) != null) {
                    return taskO;
                }
            } else {
                Task taskO3 = o();
                if (taskO3 != null) {
                    return taskO3;
                }
            }
            return w(3);
        }

        private final Task e() {
            Task taskL = this.b.l();
            if (taskL != null) {
                return taskL;
            }
            Task taskE = CoroutineScheduler.this.k.e();
            return taskE == null ? w(1) : taskE;
        }

        private final Task f() {
            Task taskN = this.b.n();
            if (taskN != null) {
                return taskN;
            }
            Task taskE = CoroutineScheduler.this.k.e();
            return taskE == null ? w(2) : taskE;
        }

        private final void j(int i) {
            this.f10391e = 0L;
            if (this.f10390d == WorkerState.c) {
                if (DebugKt.getASSERTIONS_ENABLED()) {
                    if (!(i == 1)) {
                        throw new AssertionError();
                    }
                }
                this.f10390d = WorkerState.b;
            }
        }

        private final boolean k() {
            return this.nextParkedWorker != CoroutineScheduler.f10387e;
        }

        private final void n() {
            if (this.f10391e == 0) {
                this.f10391e = System.nanoTime() + CoroutineScheduler.this.h;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.h);
            if (System.nanoTime() - this.f10391e >= 0) {
                this.f10391e = 0L;
                x();
            }
        }

        private final Task o() {
            if (m(2) == 0) {
                Task taskE = CoroutineScheduler.this.j.e();
                return taskE != null ? taskE : CoroutineScheduler.this.k.e();
            }
            Task taskE2 = CoroutineScheduler.this.k.e();
            return taskE2 != null ? taskE2 : CoroutineScheduler.this.j.e();
        }

        private final void q() {
            loop0: while (true) {
                boolean z = false;
                while (!CoroutineScheduler.this.isTerminated() && this.f10390d != WorkerState.f10395e) {
                    Task taskG = g(this.h);
                    if (taskG != null) {
                        this.f10392f = 0L;
                        c(taskG);
                    } else {
                        this.h = false;
                        if (this.f10392f == 0) {
                            u();
                        } else if (z) {
                            v(WorkerState.c);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f10392f);
                            this.f10392f = 0L;
                        } else {
                            z = true;
                        }
                    }
                }
                break loop0;
            }
            v(WorkerState.f10395e);
        }

        private final boolean t() {
            boolean z;
            if (this.f10390d != WorkerState.a) {
                CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
                AtomicLongFieldUpdater atomicLongFieldUpdaterH = CoroutineScheduler.h();
                while (true) {
                    long j = atomicLongFieldUpdaterH.get(coroutineScheduler);
                    if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                        z = false;
                        break;
                    }
                    if (CoroutineScheduler.h().compareAndSet(coroutineScheduler, j, j - 4398046511104L)) {
                        z = true;
                        break;
                    }
                }
                if (!z) {
                    return false;
                }
                this.f10390d = WorkerState.a;
            }
            return true;
        }

        private final void u() {
            if (!k()) {
                CoroutineScheduler.this.m(this);
                return;
            }
            a.set(this, -1);
            while (k() && a.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.f10390d != WorkerState.f10395e) {
                v(WorkerState.c);
                Thread.interrupted();
                n();
            }
        }

        private final Task w(int i) {
            int i2 = (int) (CoroutineScheduler.h().get(CoroutineScheduler.this) & 2097151);
            if (i2 < 2) {
                return null;
            }
            int iM = m(i2);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i3 = 0; i3 < i2; i3++) {
                iM++;
                if (iM > i2) {
                    iM = 1;
                }
                Worker workerB = coroutineScheduler.l.b(iM);
                if (workerB != null && workerB != this) {
                    long jS = workerB.b.s(i, this.c);
                    if (jS == -1) {
                        l0<Task> l0Var = this.c;
                        Task task = l0Var.a;
                        l0Var.a = null;
                        return task;
                    }
                    if (jS > 0) {
                        jMin = Math.min(jMin, jS);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f10392f = jMin;
            return null;
        }

        private final void x() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.l) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (CoroutineScheduler.h().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.f10388f) {
                    return;
                }
                if (a.compareAndSet(this, -1, 1)) {
                    int i = this.indexInArray;
                    r(0);
                    coroutineScheduler.o(this, i, 0);
                    int andDecrement = (int) (CoroutineScheduler.h().getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != i) {
                        Worker workerB = coroutineScheduler.l.b(andDecrement);
                        Intrinsics.checkNotNull(workerB);
                        Worker worker = workerB;
                        coroutineScheduler.l.c(i, worker);
                        worker.r(i);
                        coroutineScheduler.o(worker, andDecrement, i);
                    }
                    coroutineScheduler.l.c(andDecrement, null);
                    v vVar = v.a;
                    this.f10390d = WorkerState.f10395e;
                }
            }
        }

        public final Task g(boolean z) {
            return t() ? d(z) : e();
        }

        /* JADX INFO: renamed from: h, reason: from getter */
        public final int getIndexInArray() {
            return this.indexInArray;
        }

        /* JADX INFO: renamed from: i, reason: from getter */
        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final boolean l() {
            return this.f10390d == WorkerState.b;
        }

        public final int m(int i) {
            int i2 = this.f10393g;
            int i3 = i2 ^ (i2 << 13);
            int i4 = i3 ^ (i3 >> 17);
            int i5 = i4 ^ (i4 << 5);
            this.f10393g = i5;
            int i6 = i - 1;
            return (i6 & i) == 0 ? i5 & i6 : (i5 & Integer.MAX_VALUE) % i;
        }

        public final long p() {
            WorkerState workerState = this.f10390d;
            boolean z = workerState == WorkerState.a;
            Task taskF = z ? f() : e();
            if (taskF == null) {
                long j = this.f10392f;
                if (j == 0) {
                    return -1L;
                }
                return j;
            }
            CoroutineScheduler.this.p(taskF);
            if (!z) {
                CoroutineScheduler.h().addAndGet(CoroutineScheduler.this, -2097152L);
            }
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(this.f10390d == workerState)) {
                    throw new AssertionError();
                }
            }
            return 0L;
        }

        public final void r(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.i);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            q();
        }

        public final void s(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean v(WorkerState workerState) {
            WorkerState workerState2 = this.f10390d;
            boolean z = workerState2 == WorkerState.a;
            if (z) {
                CoroutineScheduler.h().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f10390d = workerState;
            }
            return z;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    public static final class WorkerState {
        public static final WorkerState a = new WorkerState("CPU_ACQUIRED", 0);
        public static final WorkerState b = new WorkerState("BLOCKING", 1);
        public static final WorkerState c = new WorkerState("PARKING", 2);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final WorkerState f10394d = new WorkerState("DORMANT", 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final WorkerState f10395e = new WorkerState("TERMINATED", 4);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final /* synthetic */ WorkerState[] f10396f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final /* synthetic */ EnumEntries f10397g;

        static {
            WorkerState[] workerStateArrE = e();
            f10396f = workerStateArrE;
            f10397g = EnumEntriesKt.enumEntries(workerStateArrE);
        }

        private WorkerState(String str, int i) {
        }

        private static final /* synthetic */ WorkerState[] e() {
            return new WorkerState[]{a, b, c, f10394d, f10395e};
        }

        public static EnumEntries<WorkerState> getEntries() {
            return f10397g;
        }

        public static WorkerState valueOf(String str) {
            return (WorkerState) Enum.valueOf(WorkerState.class, str);
        }

        public static WorkerState[] values() {
            return (WorkerState[]) f10396f.clone();
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0080T¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;", "", "()V", "BLOCKING_MASK", "", "BLOCKING_SHIFT", "", "CLAIMED", "CPU_PERMITS_MASK", "CPU_PERMITS_SHIFT", "CREATED_MASK", "MAX_SUPPORTED_POOL_SIZE", "MIN_SUPPORTED_POOL_SIZE", "NOT_IN_STACK", "Lkotlinx/coroutines/internal/Symbol;", "PARKED", "PARKED_INDEX_MASK", "PARKED_VERSION_INC", "PARKED_VERSION_MASK", "TERMINATED", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: CoroutineScheduler.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.c.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.b.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.a.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.f10394d.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.f10395e.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.f10388f = i;
        this.f10389g = i2;
        this.h = j;
        this.i = str;
        if (!(i >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        if (!(i2 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.j = new GlobalQueue();
        this.k = new GlobalQueue();
        this.l = new ResizableAtomicArray<>((i + 1) * 2);
        this.controlState$volatile = ((long) i) << 42;
        this._isTerminated$volatile = 0;
    }

    private final boolean a(Task task) {
        return task.b.getA() == 1 ? this.k.a(task) : this.j.a(task);
    }

    private final int d() {
        synchronized (this.l) {
            if (isTerminated()) {
                return -1;
            }
            long j = c.get(this);
            int i = (int) (j & 2097151);
            int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i - ((int) ((j & 4398044413952L) >> 21)), 0);
            if (iCoerceAtLeast >= this.f10388f) {
                return 0;
            }
            if (i >= this.f10389g) {
                return 0;
            }
            int i2 = ((int) (h().get(this) & 2097151)) + 1;
            if (!(i2 > 0 && this.l.b(i2) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Worker worker = new Worker(this, i2);
            this.l.c(i2, worker);
            if (!(i2 == ((int) (2097151 & c.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int i3 = iCoerceAtLeast + 1;
            worker.start();
            return i3;
        }
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, TaskContext taskContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            taskContext = TasksKt.f10401g;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        coroutineScheduler.g(runnable, taskContext, z);
    }

    private final Worker f() {
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater h() {
        return c;
    }

    private final int k(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != f10387e) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    private final Worker l() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            Worker workerB = this.l.b((int) (2097151 & j));
            if (workerB == null) {
                return null;
            }
            long j2 = (2097152 + j) & (-2097152);
            int iK = k(workerB);
            if (iK >= 0 && b.compareAndSet(this, j, ((long) iK) | j2)) {
                workerB.s(f10387e);
                return workerB;
            }
        }
    }

    private final void r(long j, boolean z) {
        if (z || w() || u(j)) {
            return;
        }
        w();
    }

    private final Task t(Worker worker, Task task, boolean z) {
        if (worker == null || worker.f10390d == WorkerState.f10395e) {
            return task;
        }
        if (task.b.getA() == 0 && worker.f10390d == WorkerState.b) {
            return task;
        }
        worker.h = true;
        return worker.b.a(task, z);
    }

    private final boolean u(long j) {
        if (RangesKt___RangesKt.coerceAtLeast(((int) (2097151 & j)) - ((int) ((j & 4398044413952L) >> 21)), 0) < this.f10388f) {
            int iD = d();
            if (iD == 1 && this.f10388f > 1) {
                d();
            }
            if (iD > 0) {
                return true;
            }
        }
        return false;
    }

    static /* synthetic */ boolean v(CoroutineScheduler coroutineScheduler, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = c.get(coroutineScheduler);
        }
        return coroutineScheduler.u(j);
    }

    private final boolean w() {
        Worker workerL;
        do {
            workerL = l();
            if (workerL == null) {
                return false;
            }
        } while (!Worker.a.compareAndSet(workerL, -1, 0));
        LockSupport.unpark(workerL);
        return true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        q(10000L);
    }

    public final Task e(Runnable runnable, TaskContext taskContext) {
        long jA = TasksKt.f10400f.a();
        if (!(runnable instanceof Task)) {
            return new TaskImpl(runnable, jA, taskContext);
        }
        Task task = (Task) runnable;
        task.a = jA;
        task.b = taskContext;
        return task;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        dispatch$default(this, runnable, null, false, 6, null);
    }

    public final void g(Runnable runnable, TaskContext taskContext, boolean z) {
        if (AbstractTimeSourceKt.a != null) {
            throw null;
        }
        Task taskE = e(runnable, taskContext);
        boolean z2 = false;
        boolean z3 = taskE.b.getA() == 1;
        long jAddAndGet = z3 ? c.addAndGet(this, 2097152L) : 0L;
        Worker workerF = f();
        Task taskT = t(workerF, taskE, z);
        if (taskT != null && !a(taskT)) {
            throw new RejectedExecutionException(this.i + " was terminated");
        }
        if (z && workerF != null) {
            z2 = true;
        }
        if (z3) {
            r(jAddAndGet, z2);
        } else {
            if (z2) {
                return;
            }
            s();
        }
    }

    public final boolean isTerminated() {
        return f10386d.get(this) != 0;
    }

    public final boolean m(Worker worker) {
        long j;
        long j2;
        int indexInArray;
        if (worker.getNextParkedWorker() != f10387e) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        do {
            j = atomicLongFieldUpdater.get(this);
            int i = (int) (2097151 & j);
            j2 = (2097152 + j) & (-2097152);
            indexInArray = worker.getIndexInArray();
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(indexInArray != 0)) {
                    throw new AssertionError();
                }
            }
            worker.s(this.l.b(i));
        } while (!b.compareAndSet(this, j, ((long) indexInArray) | j2));
        return true;
    }

    public final void o(Worker worker, int i, int i2) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = b;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            int iK = (int) (2097151 & j);
            long j2 = (2097152 + j) & (-2097152);
            if (iK == i) {
                iK = i2 == 0 ? k(worker) : i2;
            }
            if (iK >= 0 && b.compareAndSet(this, j, j2 | ((long) iK))) {
                return;
            }
        }
    }

    public final void p(Task task) {
        try {
            task.run();
            if (AbstractTimeSourceKt.a != null) {
                throw null;
            }
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                if (AbstractTimeSourceKt.a != null) {
                    throw null;
                }
            } catch (Throwable th2) {
                if (AbstractTimeSourceKt.a == null) {
                    throw th2;
                }
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void q(long r9) throws java.lang.InterruptedException {
        /*
            Method dump skipped, instruction units count: 208
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.CoroutineScheduler.q(long):void");
    }

    public final void s() {
        if (w() || v(this, 0L, 1, null)) {
            return;
        }
        w();
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.l.a();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < iA; i6++) {
            Worker workerB = this.l.b(i6);
            if (workerB != null) {
                int i7 = workerB.b.i();
                int i8 = b.a[workerB.f10390d.ordinal()];
                if (i8 == 1) {
                    i3++;
                } else if (i8 == 2) {
                    i2++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i7);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i8 == 3) {
                    i++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i7);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i8 == 4) {
                    i4++;
                    if (i7 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i7);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (i8 == 5) {
                    i5++;
                }
            }
        }
        long j = c.get(this);
        return this.i + '@' + DebugStringsKt.getHexAddress(this) + "[Pool Size {core = " + this.f10388f + ", max = " + this.f10389g + "}, Worker States {CPU = " + i + ", blocking = " + i2 + ", parked = " + i3 + ", dormant = " + i4 + ", terminated = " + i5 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.j.c() + ", global blocking queue size = " + this.k.c() + ", Control State {created workers= " + ((int) (2097151 & j)) + ", blocking tasks = " + ((int) ((4398044413952L & j) >> 21)) + ", CPUs acquired = " + (this.f10388f - ((int) ((9223367638808264704L & j) >> 42))) + "}]";
    }
}
