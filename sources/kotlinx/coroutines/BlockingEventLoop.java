package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: renamed from: kotlinx.coroutines.e, reason: from Kotlin metadata */
/* JADX INFO: compiled from: EventLoop.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/BlockingEventLoop;", "Lkotlinx/coroutines/EventLoopImplBase;", "thread", "Ljava/lang/Thread;", "(Ljava/lang/Thread;)V", "getThread", "()Ljava/lang/Thread;", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class BlockingEventLoop extends EventLoopImplBase {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Thread f10153g;

    public BlockingEventLoop(Thread thread) {
        this.f10153g = thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    /* JADX INFO: renamed from: X, reason: from getter */
    protected Thread getF10153g() {
        return this.f10153g;
    }
}
