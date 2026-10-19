package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: typeEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
class f {
    private final u a;
    private final int b;
    private final boolean c;

    public f(u type, int i, boolean z) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        this.a = type;
        this.b = i;
        this.c = z;
    }

    public final int a() {
        return this.b;
    }

    public u b() {
        return this.a;
    }

    public final u c() {
        u uVarB = b();
        if (this.c) {
            return uVarB;
        }
        return null;
    }

    public final boolean d() {
        return this.c;
    }
}
