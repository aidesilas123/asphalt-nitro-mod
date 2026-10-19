package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r;

/* JADX INFO: compiled from: ReflectJavaArrayType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f extends r implements kotlin.reflect.jvm.internal.impl.load.java.structure.e {
    private final r b;
    private final Type c;

    public f(Type reflectType) {
        r rVarA;
        Intrinsics.checkParameterIsNotNull(reflectType, "reflectType");
        this.c = reflectType;
        Type typeK = K();
        if (!(typeK instanceof GenericArrayType)) {
            if (typeK instanceof Class) {
                Class cls = (Class) typeK;
                if (cls.isArray()) {
                    r.a aVar = r.a;
                    Class<?> componentType = cls.getComponentType();
                    Intrinsics.checkExpressionValueIsNotNull(componentType, "getComponentType()");
                    rVarA = aVar.a(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + K().getClass() + "): " + K());
        }
        r.a aVar2 = r.a;
        Type genericComponentType = ((GenericArrayType) typeK).getGenericComponentType();
        Intrinsics.checkExpressionValueIsNotNull(genericComponentType, "genericComponentType");
        rVarA = aVar2.a(genericComponentType);
        this.b = rVarA;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r
    protected Type K() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.e
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public r l() {
        return this.b;
    }
}
