package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: ReflectJavaAnnotationOwner.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectJavaAnnotationOwnerKt {
    public static final b findAnnotation(Annotation[] findAnnotation, FqName fqName) {
        Annotation annotation;
        Intrinsics.checkParameterIsNotNull(findAnnotation, "$this$findAnnotation");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        int length = findAnnotation.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                annotation = null;
                break;
            }
            annotation = findAnnotation[i];
            if (Intrinsics.areEqual(ReflectClassUtilKt.getClassId(JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(annotation))).b(), fqName)) {
                break;
            }
            i++;
        }
        if (annotation != null) {
            return new b(annotation);
        }
        return null;
    }

    public static final List<b> getAnnotations(Annotation[] getAnnotations) {
        Intrinsics.checkParameterIsNotNull(getAnnotations, "$this$getAnnotations");
        ArrayList arrayList = new ArrayList(getAnnotations.length);
        for (Annotation annotation : getAnnotations) {
            arrayList.add(new b(annotation));
        }
        return arrayList;
    }
}
