package kotlin.reflect.full;

import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.utils.DFS;

/* JADX INFO: compiled from: KClasses.kt */
/* JADX INFO: loaded from: classes5.dex */
final class d implements DFS.d {
    private final /* synthetic */ Function1 a;

    d(Function1 function1) {
        this.a = function1;
    }

    @Override // kotlin.reflect.jvm.internal.impl.utils.DFS.d
    public final /* synthetic */ Iterable a(Object obj) {
        return (Iterable) this.a.invoke(obj);
    }
}
