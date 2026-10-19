package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import kotlin.TypeCastException;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: compiled from: ReflectKotlinClass.kt */
/* JADX INFO: loaded from: classes5.dex */
final class c {
    public static final c a = new c();

    private c() {
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.f a(Class<?> cls) {
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
            Intrinsics.checkExpressionValueIsNotNull(cls, "currentClass.componentType");
        }
        if (!cls.isPrimitive()) {
            ClassId classId = ReflectClassUtilKt.getClassId(cls);
            JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
            FqName fqNameB = classId.b();
            Intrinsics.checkExpressionValueIsNotNull(fqNameB, "javaClassId.asSingleFqName()");
            ClassId classIdU = javaToKotlinClassMap.u(fqNameB);
            if (classIdU != null) {
                classId = classIdU;
            }
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(classId, i);
        }
        if (Intrinsics.areEqual(cls, Void.TYPE)) {
            ClassId classId2 = ClassId.topLevel(KotlinBuiltIns.h.f9042e.l());
            Intrinsics.checkExpressionValueIsNotNull(classId2, "ClassId.topLevel(KotlinB…s.FQ_NAMES.unit.toSafe())");
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(classId2, i);
        }
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.get(cls.getName());
        Intrinsics.checkExpressionValueIsNotNull(jvmPrimitiveType, "JvmPrimitiveType.get(currentClass.name)");
        PrimitiveType primitiveTypeG = jvmPrimitiveType.g();
        Intrinsics.checkExpressionValueIsNotNull(primitiveTypeG, "JvmPrimitiveType.get(cur…Class.name).primitiveType");
        if (i > 0) {
            ClassId classId3 = ClassId.topLevel(primitiveTypeG.e());
            Intrinsics.checkExpressionValueIsNotNull(classId3, "ClassId.topLevel(primitiveType.arrayTypeFqName)");
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(classId3, i - 1);
        }
        ClassId classId4 = ClassId.topLevel(primitiveTypeG.g());
        Intrinsics.checkExpressionValueIsNotNull(classId4, "ClassId.topLevel(primitiveType.typeFqName)");
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(classId4, i);
    }

    private final void c(Class<?> cls, k.d dVar) throws InvocationTargetException {
        Constructor<?>[] constructorArr;
        int i;
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        int length = declaredConstructors.length;
        int i2 = 0;
        while (i2 < length) {
            Constructor<?> constructor = declaredConstructors[i2];
            Name nameSpecial = Name.special("<init>");
            Intrinsics.checkExpressionValueIsNotNull(nameSpecial, "Name.special(\"<init>\")");
            j jVar = j.a;
            Intrinsics.checkExpressionValueIsNotNull(constructor, "constructor");
            k.e eVarB = dVar.b(nameSpecial, jVar.a(constructor));
            if (eVarB != null) {
                for (Annotation annotation : constructor.getDeclaredAnnotations()) {
                    Intrinsics.checkExpressionValueIsNotNull(annotation, "annotation");
                    f(eVarB, annotation);
                }
                Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                Intrinsics.checkExpressionValueIsNotNull(parameterAnnotations, "parameterAnnotations");
                if (!(parameterAnnotations.length == 0)) {
                    int length2 = constructor.getParameterTypes().length - parameterAnnotations.length;
                    int length3 = parameterAnnotations.length;
                    for (int i3 = 0; i3 < length3; i3++) {
                        Annotation[] annotationArr = parameterAnnotations[i3];
                        int length4 = annotationArr.length;
                        int i4 = 0;
                        while (i4 < length4) {
                            Annotation annotation2 = annotationArr[i4];
                            Class<?> javaClass = JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(annotation2));
                            Constructor<?>[] constructorArr2 = declaredConstructors;
                            int i5 = length;
                            ClassId classId = ReflectClassUtilKt.getClassId(javaClass);
                            int i6 = length2;
                            Intrinsics.checkExpressionValueIsNotNull(annotation2, "annotation");
                            k.a aVarB = eVarB.b(i3 + length2, classId, new b(annotation2));
                            if (aVarB != null) {
                                a.h(aVarB, annotation2, javaClass);
                            }
                            i4++;
                            declaredConstructors = constructorArr2;
                            length = i5;
                            length2 = i6;
                        }
                    }
                }
                constructorArr = declaredConstructors;
                i = length;
                eVarB.a();
            } else {
                constructorArr = declaredConstructors;
                i = length;
            }
            i2++;
            declaredConstructors = constructorArr;
            length = i;
        }
    }

    private final void d(Class<?> cls, k.d dVar) throws InvocationTargetException {
        for (Field field : cls.getDeclaredFields()) {
            Intrinsics.checkExpressionValueIsNotNull(field, "field");
            Name nameIdentifier = Name.identifier(field.getName());
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(field.name)");
            k.c cVarA = dVar.a(nameIdentifier, j.a.b(field), null);
            if (cVarA != null) {
                for (Annotation annotation : field.getDeclaredAnnotations()) {
                    Intrinsics.checkExpressionValueIsNotNull(annotation, "annotation");
                    f(cVarA, annotation);
                }
                cVarA.a();
            }
        }
    }

    private final void e(Class<?> cls, k.d dVar) throws InvocationTargetException {
        Method[] methodArr;
        Method[] declaredMethods = cls.getDeclaredMethods();
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method = declaredMethods[i];
            Intrinsics.checkExpressionValueIsNotNull(method, "method");
            Name nameIdentifier = Name.identifier(method.getName());
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(method.name)");
            k.e eVarB = dVar.b(nameIdentifier, j.a.c(method));
            if (eVarB != null) {
                for (Annotation annotation : method.getDeclaredAnnotations()) {
                    Intrinsics.checkExpressionValueIsNotNull(annotation, "annotation");
                    f(eVarB, annotation);
                }
                Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                Intrinsics.checkExpressionValueIsNotNull(parameterAnnotations, "method.parameterAnnotations");
                int length2 = parameterAnnotations.length;
                for (int i2 = 0; i2 < length2; i2++) {
                    Annotation[] annotationArr = parameterAnnotations[i2];
                    int length3 = annotationArr.length;
                    int i3 = 0;
                    while (i3 < length3) {
                        Annotation annotation2 = annotationArr[i3];
                        Class<?> javaClass = JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(annotation2));
                        ClassId classId = ReflectClassUtilKt.getClassId(javaClass);
                        Method[] methodArr2 = declaredMethods;
                        Intrinsics.checkExpressionValueIsNotNull(annotation2, "annotation");
                        k.a aVarB = eVarB.b(i2, classId, new b(annotation2));
                        if (aVarB != null) {
                            a.h(aVarB, annotation2, javaClass);
                        }
                        i3++;
                        declaredMethods = methodArr2;
                    }
                }
                methodArr = declaredMethods;
                eVarB.a();
            } else {
                methodArr = declaredMethods;
            }
            i++;
            declaredMethods = methodArr;
        }
    }

    private final void f(k.c cVar, Annotation annotation) throws InvocationTargetException {
        Class<?> javaClass = JvmClassMappingKt.getJavaClass(JvmClassMappingKt.getAnnotationClass(annotation));
        k.a aVarC = cVar.c(ReflectClassUtilKt.getClassId(javaClass), new b(annotation));
        if (aVarC != null) {
            a.h(aVarC, annotation, javaClass);
        }
    }

    private final void g(k.a aVar, Name name, Object obj) throws InvocationTargetException {
        Class<?> enclosingClass = obj.getClass();
        if (Intrinsics.areEqual(enclosingClass, Class.class)) {
            aVar.d(name, a((Class) obj));
            return;
        }
        if (ReflectKotlinClassKt.a.contains(enclosingClass)) {
            aVar.e(name, obj);
            return;
        }
        if (ReflectClassUtilKt.isEnumClassOrSpecializedEnumEntryClass(enclosingClass)) {
            if (!enclosingClass.isEnum()) {
                enclosingClass = enclosingClass.getEnclosingClass();
            }
            Intrinsics.checkExpressionValueIsNotNull(enclosingClass, "(if (clazz.isEnum) clazz…lse clazz.enclosingClass)");
            ClassId classId = ReflectClassUtilKt.getClassId(enclosingClass);
            Name nameIdentifier = Name.identifier(((Enum) obj).name());
            Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier((value as Enum<*>).name)");
            aVar.b(name, classId, nameIdentifier);
            return;
        }
        if (Annotation.class.isAssignableFrom(enclosingClass)) {
            Class<?>[] interfaces = enclosingClass.getInterfaces();
            Intrinsics.checkExpressionValueIsNotNull(interfaces, "clazz.interfaces");
            Class<?> annotationClass = (Class) kotlin.collections.k.single(interfaces);
            Intrinsics.checkExpressionValueIsNotNull(annotationClass, "annotationClass");
            k.a aVarC = aVar.c(name, ReflectClassUtilKt.getClassId(annotationClass));
            if (aVarC != null) {
                h(aVarC, (Annotation) obj, annotationClass);
                return;
            }
            return;
        }
        if (!enclosingClass.isArray()) {
            throw new UnsupportedOperationException("Unsupported annotation argument value (" + enclosingClass + "): " + obj);
        }
        k.b bVarF = aVar.f(name);
        if (bVarF != null) {
            Class<?> componentType = enclosingClass.getComponentType();
            Intrinsics.checkExpressionValueIsNotNull(componentType, "componentType");
            int i = 0;
            if (componentType.isEnum()) {
                ClassId classId2 = ReflectClassUtilKt.getClassId(componentType);
                Object[] objArr = (Object[]) obj;
                int length = objArr.length;
                while (i < length) {
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type kotlin.Enum<*>");
                    }
                    Name nameIdentifier2 = Name.identifier(((Enum) obj2).name());
                    Intrinsics.checkExpressionValueIsNotNull(nameIdentifier2, "Name.identifier((element as Enum<*>).name)");
                    bVarF.c(classId2, nameIdentifier2);
                    i++;
                }
            } else if (Intrinsics.areEqual(componentType, Class.class)) {
                Object[] objArr2 = (Object[]) obj;
                int length2 = objArr2.length;
                while (i < length2) {
                    Object obj3 = objArr2[i];
                    if (obj3 == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
                    }
                    bVarF.d(a((Class) obj3));
                    i++;
                }
            } else {
                Object[] objArr3 = (Object[]) obj;
                int length3 = objArr3.length;
                while (i < length3) {
                    bVarF.b(objArr3[i]);
                    i++;
                }
            }
            bVarF.a();
        }
    }

    private final void h(k.a aVar, Annotation annotation, Class<?> cls) throws InvocationTargetException {
        for (Method method : cls.getDeclaredMethods()) {
            try {
                Object objInvoke = method.invoke(annotation, new Object[0]);
                if (objInvoke == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(method, "method");
                Name nameIdentifier = Name.identifier(method.getName());
                Intrinsics.checkExpressionValueIsNotNull(nameIdentifier, "Name.identifier(method.name)");
                g(aVar, nameIdentifier, objInvoke);
            } catch (IllegalAccessException unused) {
            }
        }
        aVar.a();
    }

    public final void b(Class<?> klass, k.c visitor) {
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        Intrinsics.checkParameterIsNotNull(visitor, "visitor");
        for (Annotation annotation : klass.getDeclaredAnnotations()) {
            Intrinsics.checkExpressionValueIsNotNull(annotation, "annotation");
            f(visitor, annotation);
        }
        visitor.a();
    }

    public final void i(Class<?> klass, k.d memberVisitor) {
        Intrinsics.checkParameterIsNotNull(klass, "klass");
        Intrinsics.checkParameterIsNotNull(memberVisitor, "memberVisitor");
        e(klass, memberVisitor);
        c(klass, memberVisitor);
        d(klass, memberVisitor);
    }
}
