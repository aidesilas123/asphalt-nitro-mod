package kotlinx.coroutines.scheduling;

import kotlin.Metadata;

/* JADX INFO: renamed from: kotlinx.coroutines.scheduling.j, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Tasks.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/TaskContextImpl;", "Lkotlinx/coroutines/scheduling/TaskContext;", "taskMode", "", "(I)V", "getTaskMode", "()I", "afterTask", "", "kotlinx-coroutines-core"}, mv = {1, 9, 0}, xi = 48)
final class TaskContextImpl implements TaskContext {
    private final int a;

    public TaskContextImpl(int i) {
        this.a = i;
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    public void o() {
    }

    @Override // kotlinx.coroutines.scheduling.TaskContext
    /* JADX INFO: renamed from: p, reason: from getter */
    public int getA() {
        return this.a;
    }
}
