package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.lang.annotation.Annotation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.e0;

/* JADX INFO: compiled from: ReflectAnnotationSource.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b implements d0 {
    private final Annotation b;

    public b(Annotation annotation) {
        Intrinsics.checkParameterIsNotNull(annotation, "annotation");
        this.b = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d0
    public e0 b() {
        e0 e0Var = e0.a;
        Intrinsics.checkExpressionValueIsNotNull(e0Var, "SourceFile.NO_SOURCE_FILE");
        return e0Var;
    }

    public final Annotation d() {
        return this.b;
    }
}
