package kotlinx.coroutines;

import kotlin.Metadata;

/* JADX INFO: renamed from: kotlinx.coroutines.b0, reason: from Kotlin metadata */
/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/DisposeOnCompletion;", "Lkotlinx/coroutines/JobNode;", "handle", "Lkotlinx/coroutines/DisposableHandle;", "(Lkotlinx/coroutines/DisposableHandle;)V", "invoke", "", "cause", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
public final class DisposeOnCompletion extends JobNode {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final DisposableHandle f10018e;

    public DisposeOnCompletion(DisposableHandle disposableHandle) {
        this.f10018e = disposableHandle;
    }

    @Override // kotlinx.coroutines.InternalCompletionHandler
    public void a(Throwable th) {
        this.f10018e.dispose();
    }
}
