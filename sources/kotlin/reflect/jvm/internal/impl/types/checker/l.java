package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes5.dex */
final class l {
    private final u a;
    private final l b;

    public l(u type, l lVar) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.a = type;
        this.b = lVar;
    }

    public final l a() {
        return this.b;
    }

    public final u b() {
        return this.a;
    }
}
