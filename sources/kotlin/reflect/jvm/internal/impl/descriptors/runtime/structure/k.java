package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class k extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.l {
    private final Enum<?> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(Name name, Enum<?> value) {
        super(name);
        Intrinsics.checkParameterIsNotNull(value, "value");
        this.c = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.l
    public ClassId d() {
        Class<?> enumClass = this.c.getClass();
        if (!enumClass.isEnum()) {
            enumClass = enumClass.getEnclosingClass();
        }
        Intrinsics.checkExpressionValueIsNotNull(enumClass, "enumClass");
        return ReflectClassUtilKt.getClassId(enumClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.l
    public Name e() {
        return Name.identifier(this.c.name());
    }
}
