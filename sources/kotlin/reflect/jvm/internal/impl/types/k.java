package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: TypeSubstitution.kt */
/* JADX INFO: loaded from: classes5.dex */
public class k extends j0 {
    private final j0 c;

    public k(j0 substitution) {
        Intrinsics.checkParameterIsNotNull(substitution, "substitution");
        this.c = substitution;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean a() {
        return this.c.a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public Annotations d(Annotations annotations) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        return this.c.d(annotations);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public g0 e(u key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return this.c.e(key);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean f() {
        return this.c.f();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public u g(u topLevelType, Variance position) {
        Intrinsics.checkParameterIsNotNull(topLevelType, "topLevelType");
        Intrinsics.checkParameterIsNotNull(position, "position");
        return this.c.g(topLevelType, position);
    }
}
