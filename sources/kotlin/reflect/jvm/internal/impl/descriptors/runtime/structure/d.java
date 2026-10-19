package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotationArguments.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d extends c implements kotlin.reflect.jvm.internal.impl.load.java.structure.b {
    private final Annotation c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(Name name, Annotation annotation) {
        super(name);
        Intrinsics.checkParameterIsNotNull(annotation, "annotation");
        this.c = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.b
    public JavaAnnotation a() {
        return new b(this.c);
    }
}
