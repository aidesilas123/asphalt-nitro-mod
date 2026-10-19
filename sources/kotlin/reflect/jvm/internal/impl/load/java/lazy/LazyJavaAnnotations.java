package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Iterator;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: compiled from: LazyJavaAnnotations.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaAnnotations implements Annotations {
    private final kotlin.reflect.jvm.internal.impl.storage.c<JavaAnnotation, AnnotationDescriptor> a;
    private final d b;
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.c c;

    /* JADX INFO: compiled from: LazyJavaAnnotations.kt */
    static final class a extends Lambda implements Function1<JavaAnnotation, AnnotationDescriptor> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AnnotationDescriptor invoke(JavaAnnotation annotation) {
            Intrinsics.checkParameterIsNotNull(annotation, "annotation");
            return kotlin.reflect.jvm.internal.impl.load.java.components.b.k.e(annotation, LazyJavaAnnotations.this.b);
        }
    }

    public LazyJavaAnnotations(d c, kotlin.reflect.jvm.internal.impl.load.java.structure.c annotationOwner) {
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(annotationOwner, "annotationOwner");
        this.b = c;
        this.c = annotationOwner;
        this.a = c.a().s().g(new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean N(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return Annotations.DefaultImpls.hasAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public AnnotationDescriptor b(FqName fqName) {
        AnnotationDescriptor annotationDescriptorInvoke;
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        JavaAnnotation javaAnnotationB = this.c.b(fqName);
        return (javaAnnotationB == null || (annotationDescriptorInvoke = this.a.invoke(javaAnnotationB)) == null) ? kotlin.reflect.jvm.internal.impl.load.java.components.b.k.a(fqName, this.c, this.b) : annotationDescriptorInvoke;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations
    public boolean isEmpty() {
        return this.c.getAnnotations().isEmpty() && !this.c.x();
    }

    @Override // java.lang.Iterable
    public Iterator<AnnotationDescriptor> iterator() {
        Sequence map = SequencesKt___SequencesKt.map(CollectionsKt___CollectionsKt.asSequence(this.c.getAnnotations()), this.a);
        kotlin.reflect.jvm.internal.impl.load.java.components.b bVar = kotlin.reflect.jvm.internal.impl.load.java.components.b.k;
        FqName fqName = KotlinBuiltIns.h.x;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.deprecated");
        return SequencesKt___SequencesKt.filterNotNull(SequencesKt___SequencesKt.plus((Sequence<? extends AnnotationDescriptor>) map, bVar.a(fqName, this.c, this.b))).iterator();
    }
}
