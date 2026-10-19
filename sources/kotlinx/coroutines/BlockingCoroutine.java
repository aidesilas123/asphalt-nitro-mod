package kotlinx.coroutines;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: kotlinx.coroutines.d, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Builders.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ\u0012\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0014J\u000b\u0010\u0011\u001a\u00028\u0000¢\u0006\u0002\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000b8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\f¨\u0006\u0013"}, d2 = {"Lkotlinx/coroutines/BlockingCoroutine;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lkotlinx/coroutines/AbstractCoroutine;", "parentContext", "Lkotlin/coroutines/CoroutineContext;", "blockedThread", "Ljava/lang/Thread;", "eventLoop", "Lkotlinx/coroutines/EventLoop;", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Thread;Lkotlinx/coroutines/EventLoop;)V", "isScopedCoroutine", "", "()Z", "afterCompletion", "", "state", "", "joinBlocking", "()Ljava/lang/Object;", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final class BlockingCoroutine<T> extends AbstractCoroutine<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Thread f10137d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final EventLoop f10138e;

    public BlockingCoroutine(CoroutineContext coroutineContext, Thread thread, EventLoop eventLoop) {
        super(coroutineContext, true, true);
        this.f10137d = thread;
        this.f10138e = eventLoop;
    }

    @Override // kotlinx.coroutines.JobSupport
    protected void R(Object obj) {
        if (Intrinsics.areEqual(Thread.currentThread(), this.f10137d)) {
            return;
        }
        Thread thread = this.f10137d;
        if (AbstractTimeSourceKt.a != null) {
            throw null;
        }
        LockSupport.unpark(thread);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final T d1() throws Throwable {
        if (AbstractTimeSourceKt.a != null) {
            throw null;
        }
        try {
            EventLoop eventLoop = this.f10138e;
            if (eventLoop != null) {
                EventLoop.incrementUseCount$default(eventLoop, false, 1, null);
            }
            while (!Thread.interrupted()) {
                try {
                    EventLoop eventLoop2 = this.f10138e;
                    long jU = eventLoop2 != null ? eventLoop2.U() : Long.MAX_VALUE;
                    if (d()) {
                        if (AbstractTimeSourceKt.a != null) {
                            throw null;
                        }
                        T t = (T) JobSupportKt.unboxState(o0());
                        completedExceptionally = t instanceof CompletedExceptionally ? (CompletedExceptionally) t : null;
                        if (completedExceptionally == null) {
                            return t;
                        }
                        throw completedExceptionally.b;
                    }
                    if (AbstractTimeSourceKt.a != null) {
                        throw null;
                    }
                    LockSupport.parkNanos(this, jU);
                } finally {
                    EventLoop eventLoop3 = this.f10138e;
                    if (eventLoop3 != null) {
                        EventLoop.decrementUseCount$default(eventLoop3, false, 1, null);
                    }
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            U(interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            if (AbstractTimeSourceKt.a != null) {
                throw null;
            }
            throw th;
        }
    }

    @Override // kotlinx.coroutines.JobSupport
    protected boolean v0() {
        return true;
    }
}
