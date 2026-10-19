package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;

/* JADX INFO: compiled from: ReflectJavaWildcardType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class u extends r implements x {
    private final WildcardType b;

    public u(WildcardType reflectType) {
        Intrinsics.checkParameterIsNotNull(reflectType, "reflectType");
        this.b = reflectType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.x
    public boolean F() {
        Intrinsics.checkExpressionValueIsNotNull(K().getUpperBounds(), "reflectType.upperBounds");
        return !Intrinsics.areEqual((Type) kotlin.collections.k.firstOrNull(r0), Object.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.x
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public r s() {
        Type[] upperBounds = K().getUpperBounds();
        Type[] lowerBounds = K().getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException("Wildcard types with many bounds are not yet supported: " + K());
        }
        if (lowerBounds.length == 1) {
            r.a aVar = r.a;
            Intrinsics.checkExpressionValueIsNotNull(lowerBounds, "lowerBounds");
            Object objSingle = kotlin.collections.k.single(lowerBounds);
            Intrinsics.checkExpressionValueIsNotNull(objSingle, "lowerBounds.single()");
            return aVar.a((Type) objSingle);
        }
        if (upperBounds.length != 1) {
            return null;
        }
        Intrinsics.checkExpressionValueIsNotNull(upperBounds, "upperBounds");
        Type ub = (Type) kotlin.collections.k.single(upperBounds);
        if (!(!Intrinsics.areEqual(ub, Object.class))) {
            return null;
        }
        r.a aVar2 = r.a;
        Intrinsics.checkExpressionValueIsNotNull(ub, "ub");
        return aVar2.a(ub);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public WildcardType K() {
        return this.b;
    }
}
