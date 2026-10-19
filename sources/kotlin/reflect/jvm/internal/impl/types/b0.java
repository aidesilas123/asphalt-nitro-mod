package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;

/* JADX INFO: compiled from: StarProjectionImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b0 extends h0 {
    private final u a;

    public b0(KotlinBuiltIns kotlinBuiltIns) {
        Intrinsics.checkParameterIsNotNull(kotlinBuiltIns, "kotlinBuiltIns");
        y yVarI = kotlinBuiltIns.I();
        Intrinsics.checkExpressionValueIsNotNull(yVarI, "kotlinBuiltIns.nullableAnyType");
        this.a = yVarI;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public g0 a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public boolean b() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public Variance c() {
        return Variance.OUT_VARIANCE;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.g0
    public u getType() {
        return this.a;
    }
}
