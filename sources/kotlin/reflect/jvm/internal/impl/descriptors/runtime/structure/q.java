package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: compiled from: ReflectJavaPrimitiveType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class q extends r implements kotlin.reflect.jvm.internal.impl.load.java.structure.s {
    private final Class<?> b;

    public q(Class<?> reflectType) {
        Intrinsics.checkParameterIsNotNull(reflectType, "reflectType");
        this.b = reflectType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public Class<?> K() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public PrimitiveType getType() {
        if (Intrinsics.areEqual(K(), Void.TYPE)) {
            return null;
        }
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.get(K().getName());
        Intrinsics.checkExpressionValueIsNotNull(jvmPrimitiveType, "JvmPrimitiveType.get(reflectType.name)");
        return jvmPrimitiveType.g();
    }
}
