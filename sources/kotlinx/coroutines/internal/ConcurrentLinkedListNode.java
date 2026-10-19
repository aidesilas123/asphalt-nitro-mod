package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;

/* JADX INFO: compiled from: ConcurrentLinkedList.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0006\b \u0018\u0000*\u000e\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00018\u0000¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u000eJ\u001e\u0010\u001a\u001a\u0004\u0018\u00018\u00002\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001cH\u0086\b¢\u0006\u0002\u0010\u001eJ\u0006\u0010\u001f\u001a\u00020\u0018J\u0013\u0010 \u001a\u00020\u000e2\u0006\u0010!\u001a\u00028\u0000¢\u0006\u0002\u0010\"R\u0011\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0006X\u0082\u0004R\u0011\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0006X\u0082\u0004R\u0016\u0010\b\u001a\u0004\u0018\u00018\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0014\u0010\u000b\u001a\u00028\u00008BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\nR\u0012\u0010\r\u001a\u00020\u000eX¦\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000fR\u0013\u0010\u0011\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\nR\u0016\u0010\u0013\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0003\u001a\u0004\u0018\u00018\u00008F¢\u0006\u0006\u001a\u0004\b\u0016\u0010\n¨\u0006#"}, d2 = {"Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "N", "", "prev", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V", "_next", "Lkotlinx/atomicfu/AtomicRef;", "_prev", "aliveSegmentLeft", "getAliveSegmentLeft", "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "aliveSegmentRight", "getAliveSegmentRight", "isRemoved", "", "()Z", "isTail", "next", "getNext", "nextOrClosed", "getNextOrClosed", "()Ljava/lang/Object;", "getPrev", "cleanPrev", "", "markAsClosed", "nextOrIfClosed", "onClosedAction", "Lkotlin/Function0;", "", "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;", "remove", "trySetNext", "value", "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {
    private static final /* synthetic */ AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");
    private static final /* synthetic */ AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public ConcurrentLinkedListNode(N n) {
        this._prev$volatile = n;
    }

    private final N c() {
        N n = (N) g();
        while (n != null && n.j()) {
            n = (N) b.get(n);
        }
        return n;
    }

    private final N d() {
        ConcurrentLinkedListNode concurrentLinkedListNodeE;
        if (DebugKt.getASSERTIONS_ENABLED() && !(!k())) {
            throw new AssertionError();
        }
        N n = (N) e();
        Intrinsics.checkNotNull(n);
        while (n.j() && (concurrentLinkedListNodeE = n.e()) != null) {
            n = (N) concurrentLinkedListNodeE;
        }
        return n;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object f() {
        return a.get(this);
    }

    public final void b() {
        b.set(this, null);
    }

    public final N e() {
        Object objF = f();
        if (objF == ConcurrentLinkedListKt.a) {
            return null;
        }
        return (N) objF;
    }

    public final N g() {
        return (N) b.get(this);
    }

    public abstract boolean j();

    public final boolean k() {
        return e() == null;
    }

    public final boolean l() {
        return a.compareAndSet(this, null, ConcurrentLinkedListKt.a);
    }

    public final void m() {
        Object obj;
        if (DebugKt.getASSERTIONS_ENABLED()) {
            if (!(j() || k())) {
                throw new AssertionError();
            }
        }
        if (k()) {
            return;
        }
        while (true) {
            ConcurrentLinkedListNode concurrentLinkedListNodeC = c();
            ConcurrentLinkedListNode concurrentLinkedListNodeD = d();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = b;
            do {
                obj = atomicReferenceFieldUpdater.get(concurrentLinkedListNodeD);
            } while (!atomicReferenceFieldUpdater.compareAndSet(concurrentLinkedListNodeD, obj, ((ConcurrentLinkedListNode) obj) == null ? null : concurrentLinkedListNodeC));
            if (concurrentLinkedListNodeC != null) {
                a.set(concurrentLinkedListNodeC, concurrentLinkedListNodeD);
            }
            if (!concurrentLinkedListNodeD.j() || concurrentLinkedListNodeD.k()) {
                if (concurrentLinkedListNodeC == null || !concurrentLinkedListNodeC.j()) {
                    return;
                }
            }
        }
    }

    public final boolean n(N n) {
        return a.compareAndSet(this, null, n);
    }
}
