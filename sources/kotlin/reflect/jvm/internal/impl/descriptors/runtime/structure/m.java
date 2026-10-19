package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class m extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.n {
    private final Object c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(Name name, Object value) {
        super(name);
        Intrinsics.checkParameterIsNotNull(value, "value");
        this.c = value;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.n
    public Object getValue() {
        return this.c;
    }
}
