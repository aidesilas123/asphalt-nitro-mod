package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: util.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h {
    private final u a;
    private final boolean b;

    public h(u type, boolean z) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.a = type;
        this.b = z;
    }

    public final boolean a() {
        return this.b;
    }

    public final u b() {
        return this.a;
    }
}
