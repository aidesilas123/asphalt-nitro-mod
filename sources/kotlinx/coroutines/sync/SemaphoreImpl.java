package kotlinx.coroutines.sync;

import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.selects.SelectInstance;

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
/* JADX INFO: compiled from: Semaphore.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0010\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0016\u001a\u00020\u0014H\u0096@¢\u0006\u0002\u0010\u0017Jb\u0010\u0016\u001a\u00020\u0014\"\u0004\b\u0000\u0010\u00182\u0006\u0010\u0019\u001a\u0002H\u00182!\u0010\u001a\u001a\u001d\u0012\u0013\u0012\u0011H\u0018¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u001d0\u00122!\u0010\u001e\u001a\u001d\u0012\u0013\u0012\u0011H\u0018¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u0019\u0012\u0004\u0012\u00020\u00140\u0012H\u0083\b¢\u0006\u0002\u0010\u001fJ\u0016\u0010\u0016\u001a\u00020\u00142\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00140 H\u0005J\u000e\u0010!\u001a\u00020\u0014H\u0082@¢\u0006\u0002\u0010\u0017J\u0010\u0010\"\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020#H\u0002J\b\u0010$\u001a\u00020\u0014H\u0002J\b\u0010%\u001a\u00020\u0003H\u0002J\u001e\u0010&\u001a\u00020\u00142\n\u0010'\u001a\u0006\u0012\u0002\b\u00030(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0004J\b\u0010+\u001a\u00020\u0014H\u0016J\b\u0010,\u001a\u00020\u001dH\u0016J\b\u0010-\u001a\u00020\u001dH\u0002J\f\u0010.\u001a\u00020\u001d*\u00020*H\u0002R\t\u0010\u0006\u001a\u00020\u0007X\u0082\u0004R\u0014\u0010\b\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\t\u0010\u000b\u001a\u00020\fX\u0082\u0004R\t\u0010\r\u001a\u00020\fX\u0082\u0004R\u000f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00140\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fX\u0082\u0004¨\u0006/"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreImpl;", "Lkotlinx/coroutines/sync/Semaphore;", "permits", "", "acquiredPermits", "(II)V", "_availablePermits", "Lkotlinx/atomicfu/AtomicInt;", "availablePermits", "getAvailablePermits", "()I", "deqIdx", "Lkotlinx/atomicfu/AtomicLong;", "enqIdx", TtmlNode.TAG_HEAD, "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/sync/SemaphoreSegment;", "onCancellationRelease", "Lkotlin/Function1;", "", "", "tail", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "W", "waiter", "suspend", "Lkotlin/ParameterName;", "name", "", "onAcquired", "(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V", "Lkotlinx/coroutines/CancellableContinuation;", "acquireSlowPath", "addAcquireToQueue", "Lkotlinx/coroutines/Waiter;", "coerceAvailablePermitsAtMaximum", "decPermits", "onAcquireRegFunction", "select", "Lkotlinx/coroutines/selects/SelectInstance;", "ignoredParam", "", "release", "tryAcquire", "tryResumeNextFromQueue", "tryResumeAcquire", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public class SemaphoreImpl implements Semaphore {
    private static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head$volatile");
    private static final /* synthetic */ AtomicLongFieldUpdater b = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f10436d = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f10437e = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f10438f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Function1<Throwable, v> f10439g;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    /* JADX INFO: compiled from: Semaphore.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class a extends r implements Function2<Long, SemaphoreSegment, SemaphoreSegment> {
        public static final a a = new a();

        a() {
            super(2, SemaphoreKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        public final SemaphoreSegment a(long j, SemaphoreSegment semaphoreSegment) {
            return SemaphoreKt.a(j, semaphoreSegment);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ SemaphoreSegment invoke(Long l, SemaphoreSegment semaphoreSegment) {
            return a(l.longValue(), semaphoreSegment);
        }
    }

    /* JADX INFO: compiled from: Semaphore.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "", "invoke"}, mv = {1, 9, 0}, xi = 48)
    static final class b extends Lambda implements Function1<Throwable, v> {
        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Throwable th) {
            invoke2(th);
            return v.a;
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Throwable th) {
            SemaphoreImpl.this.release();
        }
    }

    /* JADX INFO: compiled from: Semaphore.kt */
    @Metadata(mv = {1, 9, 0}, xi = 48)
    /* synthetic */ class c extends r implements Function2<Long, SemaphoreSegment, SemaphoreSegment> {
        public static final c a = new c();

        c() {
            super(2, SemaphoreKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
        }

        public final SemaphoreSegment a(long j, SemaphoreSegment semaphoreSegment) {
            return SemaphoreKt.a(j, semaphoreSegment);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ SemaphoreSegment invoke(Long l, SemaphoreSegment semaphoreSegment) {
            return a(l.longValue(), semaphoreSegment);
        }
    }

    public SemaphoreImpl(int i, int i2) {
        this.f10438f = i;
        if (!(i > 0)) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i).toString());
        }
        if (!(i2 >= 0 && i2 <= i)) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i).toString());
        }
        SemaphoreSegment semaphoreSegment = new SemaphoreSegment(0L, null, 2);
        this.head$volatile = semaphoreSegment;
        this.tail$volatile = semaphoreSegment;
        this._availablePermits$volatile = i - i2;
        this.f10439g = new b();
    }

    static /* synthetic */ Object f(SemaphoreImpl semaphoreImpl, Continuation<? super v> continuation) {
        Object objG;
        return (semaphoreImpl.j() <= 0 && (objG = semaphoreImpl.g(continuation)) == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) ? objG : v.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object g(Continuation<? super v> continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            if (!h(orCreateCancellableContinuation)) {
                e(orCreateCancellableContinuation);
            }
            Object objY = orCreateCancellableContinuation.y();
            if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objY : v.a;
        } catch (Throwable th) {
            orCreateCancellableContinuation.P();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean h(Waiter waiter) {
        Object objFindSegmentInternal;
        boolean z;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) c.get(this);
        long andIncrement = f10436d.getAndIncrement(this);
        a aVar = a.a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
        long j = andIncrement / ((long) SemaphoreKt.f10442f);
        do {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(semaphoreSegment, j, aVar);
            if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
                break;
            }
            Segment segmentM1794getSegmentimpl = SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.f10376d >= segmentM1794getSegmentimpl.f10376d) {
                    break;
                }
                if (!segmentM1794getSegmentimpl.t()) {
                    z = false;
                    break;
                }
                if (atomicReferenceFieldUpdater.compareAndSet(this, segment, segmentM1794getSegmentimpl)) {
                    if (segment.o()) {
                        segment.m();
                    }
                } else if (segmentM1794getSegmentimpl.o()) {
                    segmentM1794getSegmentimpl.m();
                }
            }
            z = true;
        } while (!z);
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
        int i = (int) (andIncrement % ((long) SemaphoreKt.f10442f));
        if (semaphoreSegment2.getF10444e().compareAndSet(i, null, waiter)) {
            waiter.c(semaphoreSegment2, i);
            return true;
        }
        if (!semaphoreSegment2.getF10444e().compareAndSet(i, SemaphoreKt.b, SemaphoreKt.c)) {
            if (!DebugKt.getASSERTIONS_ENABLED()) {
                return false;
            }
            if (semaphoreSegment2.getF10444e().get(i) == SemaphoreKt.f10440d) {
                return false;
            }
            throw new AssertionError();
        }
        if (waiter instanceof CancellableContinuation) {
            Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((CancellableContinuation) waiter).u(v.a, this.f10439g);
            return true;
        }
        if (waiter instanceof SelectInstance) {
            ((SelectInstance) waiter).e(v.a);
            return true;
        }
        throw new IllegalStateException(("unexpected: " + waiter).toString());
    }

    private final void i() {
        int i;
        do {
            i = f10437e.get(this);
            if (i <= this.f10438f) {
                return;
            }
        } while (!f10437e.compareAndSet(this, i, this.f10438f));
    }

    private final int j() {
        int andDecrement;
        do {
            andDecrement = f10437e.getAndDecrement(this);
        } while (andDecrement > this.f10438f);
        return andDecrement;
    }

    private final boolean r(Object obj) {
        if (!(obj instanceof CancellableContinuation)) {
            if (obj instanceof SelectInstance) {
                return ((SelectInstance) obj).g(this, v.a);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        CancellableContinuation cancellableContinuation = (CancellableContinuation) obj;
        Object objF = cancellableContinuation.F(v.a, null, this.f10439g);
        if (objF == null) {
            return false;
        }
        cancellableContinuation.O(objF);
        return true;
    }

    private final boolean s() {
        Object objFindSegmentInternal;
        boolean z;
        SemaphoreSegment semaphoreSegment = (SemaphoreSegment) a.get(this);
        long andIncrement = b.getAndIncrement(this);
        long j = andIncrement / ((long) SemaphoreKt.f10442f);
        c cVar = c.a;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        do {
            objFindSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(semaphoreSegment, j, cVar);
            if (SegmentOrClosed.m1796isClosedimpl(objFindSegmentInternal)) {
                break;
            }
            Segment segmentM1794getSegmentimpl = SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
            while (true) {
                Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                if (segment.f10376d >= segmentM1794getSegmentimpl.f10376d) {
                    break;
                }
                if (!segmentM1794getSegmentimpl.t()) {
                    z = false;
                    break;
                }
                if (atomicReferenceFieldUpdater.compareAndSet(this, segment, segmentM1794getSegmentimpl)) {
                    if (segment.o()) {
                        segment.m();
                    }
                } else if (segmentM1794getSegmentimpl.o()) {
                    segmentM1794getSegmentimpl.m();
                }
            }
            z = true;
        } while (!z);
        SemaphoreSegment semaphoreSegment2 = (SemaphoreSegment) SegmentOrClosed.m1794getSegmentimpl(objFindSegmentInternal);
        semaphoreSegment2.b();
        if (semaphoreSegment2.f10376d > j) {
            return false;
        }
        int i = (int) (andIncrement % ((long) SemaphoreKt.f10442f));
        Object andSet = semaphoreSegment2.getF10444e().getAndSet(i, SemaphoreKt.b);
        if (andSet != null) {
            if (andSet == SemaphoreKt.f10441e) {
                return false;
            }
            return r(andSet);
        }
        int i2 = SemaphoreKt.a;
        for (int i3 = 0; i3 < i2; i3++) {
            if (semaphoreSegment2.getF10444e().get(i) == SemaphoreKt.c) {
                return true;
            }
        }
        return !semaphoreSegment2.getF10444e().compareAndSet(i, SemaphoreKt.b, SemaphoreKt.f10440d);
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public Object b(Continuation<? super v> continuation) {
        return f(this, continuation);
    }

    protected final void e(CancellableContinuation<? super v> cancellableContinuation) {
        while (j() <= 0) {
            Intrinsics.checkNotNull(cancellableContinuation, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (h((Waiter) cancellableContinuation)) {
                return;
            }
        }
        cancellableContinuation.u(v.a, this.f10439g);
    }

    public int k() {
        return Math.max(f10437e.get(this), 0);
    }

    public boolean q() {
        while (true) {
            int i = f10437e.get(this);
            if (i > this.f10438f) {
                i();
            } else {
                if (i <= 0) {
                    return false;
                }
                if (f10437e.compareAndSet(this, i, i - 1)) {
                    return true;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.Semaphore
    public void release() {
        do {
            int andIncrement = f10437e.getAndIncrement(this);
            if (andIncrement >= this.f10438f) {
                i();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f10438f).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!s());
    }
}
