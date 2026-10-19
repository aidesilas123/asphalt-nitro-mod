package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.g {
    private final Class<?> c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(Name name, Class<?> klass) {
        super(name);
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        this.c = klass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public kotlin.reflect.jvm.internal.impl.load.java.structure.t b() {
        return r.a.a(this.c);
    }
}
