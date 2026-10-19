package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;

/* JADX INFO: renamed from: kotlinx.coroutines.l0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\t\u0010\u0005\u001a\u00020\u0006X\u0082\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/InvokeOnCancelling;", "Lkotlinx/coroutines/JobCancellingNode;", "handler", "Lkotlinx/coroutines/InternalCompletionHandler;", "(Lkotlinx/coroutines/InternalCompletionHandler;)V", "_invoked", "Lkotlinx/atomicfu/AtomicInt;", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final class InvokeOnCancelling extends JobCancellingNode {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f10379e = AtomicIntegerFieldUpdater.newUpdater(InvokeOnCancelling.class, "_invoked$volatile");
    private volatile /* synthetic */ int _invoked$volatile;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final InternalCompletionHandler f10380f;

    public InvokeOnCancelling(InternalCompletionHandler internalCompletionHandler) {
        this.f10380f = internalCompletionHandler;
    }

    @Override // kotlinx.coroutines.InternalCompletionHandler
    public void a(Throwable th) {
        if (f10379e.compareAndSet(this, 0, 1)) {
            this.f10380f.a(th);
        }
    }
}
