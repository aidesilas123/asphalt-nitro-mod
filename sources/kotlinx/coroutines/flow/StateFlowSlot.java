package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.internal.Concurrent_commonKt;

/* JADX INFO: compiled from: StateFlow.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0002\u0018\u00002\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\b\u001a\u00020\t2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016J\u000e\u0010\u000b\u001a\u00020\fH\u0086@¢\u0006\u0002\u0010\rJ'\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u00100\u000f2\n\u0010\n\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0016¢\u0006\u0002\u0010\u0011J\u0006\u0010\u0012\u001a\u00020\fJ\u0006\u0010\u0013\u001a\u00020\tR\"\u0010\u0004\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\n\u0012\u0006\u0012\u0004\u0018\u00010\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lkotlinx/coroutines/flow/StateFlowSlot;", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "Lkotlinx/coroutines/flow/StateFlowImpl;", "()V", "_state", "Ljava/util/concurrent/atomic/AtomicReference;", "", "Lkotlinx/coroutines/internal/WorkaroundAtomicReference;", "allocateLocked", "", "flow", "awaitPending", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "freeLocked", "", "Lkotlin/coroutines/Continuation;", "(Lkotlinx/coroutines/flow/StateFlowImpl;)[Lkotlin/coroutines/Continuation;", "makePending", "takePending", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final class StateFlowSlot extends AbstractSharedFlowSlot<StateFlowImpl<?>> {
    private final AtomicReference<Object> a = new AtomicReference<>(null);

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(StateFlowImpl<?> stateFlowImpl) {
        if (Concurrent_commonKt.getValue(this.a) != null) {
            return false;
        }
        Concurrent_commonKt.setValue(this.a, StateFlowKt.a);
        return true;
    }

    public final Object d(Continuation<? super kotlin.v> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.E();
        if (DebugKt.getASSERTIONS_ENABLED() && !(!(Concurrent_commonKt.getValue(this.a) instanceof CancellableContinuationImpl))) {
            throw new AssertionError();
        }
        if (!this.a.compareAndSet(StateFlowKt.a, cancellableContinuationImpl)) {
            if (DebugKt.getASSERTIONS_ENABLED()) {
                if (!(Concurrent_commonKt.getValue(this.a) == StateFlowKt.b)) {
                    throw new AssertionError();
                }
            }
            Result.a aVar = Result.a;
            cancellableContinuationImpl.resumeWith(Result.m1238constructorimpl(kotlin.v.a));
        }
        Object objY = cancellableContinuationImpl.y();
        if (objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return objY == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objY : kotlin.v.a;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public Continuation<kotlin.v>[] b(StateFlowImpl<?> stateFlowImpl) {
        Concurrent_commonKt.setValue(this.a, null);
        return kotlinx.coroutines.flow.internal.b.a;
    }

    public final void f() {
        AtomicReference<Object> atomicReference = this.a;
        while (true) {
            Object value = Concurrent_commonKt.getValue(atomicReference);
            if (value == null || value == StateFlowKt.b) {
                return;
            }
            if (value == StateFlowKt.a) {
                if (this.a.compareAndSet(value, StateFlowKt.b)) {
                    return;
                }
            } else if (this.a.compareAndSet(value, StateFlowKt.a)) {
                Result.a aVar = Result.a;
                ((CancellableContinuationImpl) value).resumeWith(Result.m1238constructorimpl(kotlin.v.a));
                return;
            }
        }
    }

    public final boolean g() {
        Object andSet = this.a.getAndSet(StateFlowKt.a);
        Intrinsics.checkNotNull(andSet);
        if (!DebugKt.getASSERTIONS_ENABLED() || (!(andSet instanceof CancellableContinuationImpl))) {
            return andSet == StateFlowKt.b;
        }
        throw new AssertionError();
    }
}
