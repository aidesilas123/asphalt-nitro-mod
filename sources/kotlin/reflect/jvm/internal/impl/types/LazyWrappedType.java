package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: SpecialTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyWrappedType extends n0 {
    private final kotlin.reflect.jvm.internal.impl.storage.e<u> b;
    private final kotlin.reflect.jvm.internal.impl.storage.h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function0<u> f9835d;

    /* JADX INFO: compiled from: SpecialTypes.kt */
    static final class a extends Lambda implements Function0<u> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.types.checker.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            super(0);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final u invoke() {
            return this.b.g((u) LazyWrappedType.this.f9835d.invoke());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LazyWrappedType(kotlin.reflect.jvm.internal.impl.storage.h storageManager, Function0<? extends u> computation) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(computation, "computation");
        this.c = storageManager;
        this.f9835d = computation;
        this.b = storageManager.c(computation);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.n0
    protected u L0() {
        return this.b.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.n0
    public boolean M0() {
        return this.b.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.u
    /* JADX INFO: renamed from: N0, reason: merged with bridge method [inline-methods] */
    public LazyWrappedType R0(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new LazyWrappedType(this.c, new a(kotlinTypeRefiner));
    }
}
