package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;

/* JADX INFO: compiled from: TypeSystemCommonBackendContext.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface TypeSystemCommonBackendContext extends TypeSystemContext {

    /* JADX INFO: compiled from: TypeSystemCommonBackendContext.kt */
    public static final class DefaultImpls {
        public static boolean isMarkedNullable(TypeSystemCommonBackendContext typeSystemCommonBackendContext, kotlin.reflect.jvm.internal.impl.types.model.f isMarkedNullable) {
            Intrinsics.checkParameterIsNotNull(isMarkedNullable, "$this$isMarkedNullable");
            return (isMarkedNullable instanceof kotlin.reflect.jvm.internal.impl.types.model.g) && typeSystemCommonBackendContext.n((kotlin.reflect.jvm.internal.impl.types.model.g) isMarkedNullable);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f makeNullable(TypeSystemCommonBackendContext typeSystemCommonBackendContext, kotlin.reflect.jvm.internal.impl.types.model.f makeNullable) {
            kotlin.reflect.jvm.internal.impl.types.model.g gVarO;
            Intrinsics.checkParameterIsNotNull(makeNullable, "$this$makeNullable");
            kotlin.reflect.jvm.internal.impl.types.model.g gVarA = typeSystemCommonBackendContext.a(makeNullable);
            return (gVarA == null || (gVarO = typeSystemCommonBackendContext.O(gVarA, true)) == null) ? makeNullable : gVarO;
        }
    }

    PrimitiveType C(kotlin.reflect.jvm.internal.impl.types.model.j jVar);

    kotlin.reflect.jvm.internal.impl.types.model.f D(kotlin.reflect.jvm.internal.impl.types.model.k kVar);

    FqNameUnsafe J(kotlin.reflect.jvm.internal.impl.types.model.j jVar);

    kotlin.reflect.jvm.internal.impl.types.model.f Q(kotlin.reflect.jvm.internal.impl.types.model.f fVar);

    boolean V(kotlin.reflect.jvm.internal.impl.types.model.f fVar, FqName fqName);

    boolean W(kotlin.reflect.jvm.internal.impl.types.model.f fVar);

    boolean c(kotlin.reflect.jvm.internal.impl.types.model.j jVar);

    kotlin.reflect.jvm.internal.impl.types.model.f c0(kotlin.reflect.jvm.internal.impl.types.model.f fVar);

    kotlin.reflect.jvm.internal.impl.types.model.k h(kotlin.reflect.jvm.internal.impl.types.model.j jVar);

    boolean p(kotlin.reflect.jvm.internal.impl.types.model.j jVar);

    PrimitiveType s(kotlin.reflect.jvm.internal.impl.types.model.j jVar);
}
