package kotlin.reflect.jvm.internal.impl.types;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: StarProjectionImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class StarProjectionImpl extends h0 {
    private final Lazy a;
    private final kotlin.reflect.jvm.internal.impl.descriptors.i0 b;

    /* JADX INFO: compiled from: StarProjectionImpl.kt */
    static final class a extends Lambda implements Function0<u> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final u invoke() {
            return StarProjectionImplKt.starProjectionType(StarProjectionImpl.this.b);
        }
    }

    public StarProjectionImpl(kotlin.reflect.jvm.internal.impl.descriptors.i0 typeParameter) {
        Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
        this.b = typeParameter;
        this.a = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new a());
    }

    private final u d() {
        return (u) this.a.getValue();
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
        return d();
    }
}
