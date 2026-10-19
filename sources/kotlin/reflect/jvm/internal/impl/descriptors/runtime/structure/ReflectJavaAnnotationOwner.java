package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: ReflectJavaAnnotationOwner.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ReflectJavaAnnotationOwner extends kotlin.reflect.jvm.internal.impl.load.java.structure.c {

    /* JADX INFO: compiled from: ReflectJavaAnnotationOwner.kt */
    public static final class DefaultImpls {
        public static b findAnnotation(ReflectJavaAnnotationOwner reflectJavaAnnotationOwner, FqName fqName) {
            Annotation[] declaredAnnotations;
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            AnnotatedElement annotatedElementC = reflectJavaAnnotationOwner.c();
            if (annotatedElementC == null || (declaredAnnotations = annotatedElementC.getDeclaredAnnotations()) == null) {
                return null;
            }
            return ReflectJavaAnnotationOwnerKt.findAnnotation(declaredAnnotations, fqName);
        }

        public static List<b> getAnnotations(ReflectJavaAnnotationOwner reflectJavaAnnotationOwner) {
            Annotation[] declaredAnnotations;
            List<b> annotations;
            AnnotatedElement annotatedElementC = reflectJavaAnnotationOwner.c();
            return (annotatedElementC == null || (declaredAnnotations = annotatedElementC.getDeclaredAnnotations()) == null || (annotations = ReflectJavaAnnotationOwnerKt.getAnnotations(declaredAnnotations)) == null) ? CollectionsKt__CollectionsKt.emptyList() : annotations;
        }

        public static boolean isDeprecatedInJavaDoc(ReflectJavaAnnotationOwner reflectJavaAnnotationOwner) {
            return false;
        }
    }

    AnnotatedElement c();
}
