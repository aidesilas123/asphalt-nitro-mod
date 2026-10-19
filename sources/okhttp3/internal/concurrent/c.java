package okhttp3.internal.concurrent;

import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: compiled from: TaskQueue.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"okhttp3/internal/concurrent/TaskQueue$schedule$2", "Lokhttp3/internal/concurrent/Task;", "runOnce", "", "okhttp"}, mv = {1, 6, 0}, xi = 176)
public final class c extends Task {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ String f10667e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ Function0<Long> f10668f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(String str, Function0<Long> function0) {
        super(str, false, 2, null);
        this.f10667e = str;
        this.f10668f = function0;
    }

    @Override // okhttp3.internal.concurrent.Task
    public long f() {
        return this.f10668f.invoke().longValue();
    }
}
