package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: CapturedTypeApproximation.kt */
/* JADX INFO: loaded from: classes5.dex */
final class c {
    private final i0 a;
    private final u b;
    private final u c;

    public c(i0 typeParameter, u inProjection, u outProjection) {
        Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
        Intrinsics.checkParameterIsNotNull(inProjection, "inProjection");
        Intrinsics.checkParameterIsNotNull(outProjection, "outProjection");
        this.a = typeParameter;
        this.b = inProjection;
        this.c = outProjection;
    }

    public final u a() {
        return this.b;
    }

    public final u b() {
        return this.c;
    }

    public final i0 c() {
        return this.a;
    }

    public final boolean d() {
        return kotlin.reflect.jvm.internal.impl.types.checker.c.a.d(this.b, this.c);
    }
}
