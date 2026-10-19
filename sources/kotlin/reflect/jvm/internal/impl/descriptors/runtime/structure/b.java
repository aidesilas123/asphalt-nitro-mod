package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.c;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ReflectJavaAnnotation.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends j implements JavaAnnotation {
    private final Annotation a;

    public b(Annotation annotation) {
        Intrinsics.checkParameterIsNotNull(annotation, "annotation");
        this.a = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public ClassId a() {
        return ReflectClassUtilKt.getClassId(JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(this.a)));
    }

    public boolean equals(Object obj) {
        return (obj instanceof b) && Intrinsics.areEqual(this.a, ((b) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public boolean i() {
        return JavaAnnotation.DefaultImpls.isIdeExternalAnnotation(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> k() throws IllegalAccessException, InvocationTargetException {
        Method[] declaredMethods = JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(this.a)).getDeclaredMethods();
        Intrinsics.checkExpressionValueIsNotNull(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            c.a aVar = c.a;
            Object objInvoke = method.invoke(this.a, new Object[0]);
            Intrinsics.checkExpressionValueIsNotNull(objInvoke, "method.invoke(annotation)");
            Intrinsics.checkExpressionValueIsNotNull(method, "method");
            arrayList.add(aVar.a(objInvoke, Name.identifier(method.getName())));
        }
        return arrayList;
    }

    public final Annotation l() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public ReflectJavaClass p() {
        return new ReflectJavaClass(JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(this.a)));
    }

    public String toString() {
        return b.class.getName() + ": " + this.a;
    }
}
