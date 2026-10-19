package kotlin.reflect.jvm;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KCallable;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KType;
import kotlin.reflect.full.KClasses;
import kotlin.reflect.jvm.internal.KCallableImpl;
import kotlin.reflect.jvm.internal.KPackageImpl;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.KTypeImpl;
import kotlin.reflect.jvm.internal.UtilKt;
import kotlin.reflect.jvm.internal.calls.Caller;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.e;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;

/* JADX INFO: compiled from: ReflectJvmMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ReflectJvmMapping {
    /* JADX WARN: Multi-variable type inference failed */
    private static final KDeclarationContainer a(Member member) {
        KotlinClassHeader kotlinClassHeaderC;
        e.a aVar = e.a;
        Class<?> declaringClass = member.getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(declaringClass, "declaringClass");
        e eVarA = aVar.a(declaringClass);
        String str = null;
        Object[] objArr = 0;
        KotlinClassHeader.Kind kindC = (eVarA == null || (kotlinClassHeaderC = eVarA.c()) == null) ? null : kotlinClassHeaderC.c();
        if (kindC == null) {
            return null;
        }
        int i = a.a[kindC.ordinal()];
        int i2 = 2;
        if (i != 1 && i != 2 && i != 3) {
            return null;
        }
        Class<?> declaringClass2 = member.getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(declaringClass2, "declaringClass");
        return new KPackageImpl(declaringClass2, str, i2, objArr == true ? 1 : 0);
    }

    public static final <T> Constructor<T> getJavaConstructor(KFunction<? extends T> javaConstructor) {
        Caller<?> callerW;
        Intrinsics.checkParameterIsNotNull(javaConstructor, "$this$javaConstructor");
        KCallableImpl<?> kCallableImplAsKCallableImpl = UtilKt.asKCallableImpl(javaConstructor);
        Member memberB = (kCallableImplAsKCallableImpl == null || (callerW = kCallableImplAsKCallableImpl.w()) == null) ? null : callerW.b();
        return (Constructor) (memberB instanceof Constructor ? memberB : null);
    }

    public static final Field getJavaField(KProperty<?> javaField) {
        Intrinsics.checkParameterIsNotNull(javaField, "$this$javaField");
        KPropertyImpl<?> kPropertyImplAsKPropertyImpl = UtilKt.asKPropertyImpl(javaField);
        if (kPropertyImplAsKPropertyImpl != null) {
            return kPropertyImplAsKPropertyImpl.H();
        }
        return null;
    }

    public static final Method getJavaGetter(KProperty<?> javaGetter) {
        Intrinsics.checkParameterIsNotNull(javaGetter, "$this$javaGetter");
        return getJavaMethod(javaGetter.getGetter());
    }

    public static final Method getJavaMethod(KFunction<?> javaMethod) {
        Caller<?> callerW;
        Intrinsics.checkParameterIsNotNull(javaMethod, "$this$javaMethod");
        KCallableImpl<?> kCallableImplAsKCallableImpl = UtilKt.asKCallableImpl(javaMethod);
        Member memberB = (kCallableImplAsKCallableImpl == null || (callerW = kCallableImplAsKCallableImpl.w()) == null) ? null : callerW.b();
        return (Method) (memberB instanceof Method ? memberB : null);
    }

    public static final Method getJavaSetter(KMutableProperty<?> javaSetter) {
        Intrinsics.checkParameterIsNotNull(javaSetter, "$this$javaSetter");
        return getJavaMethod(javaSetter.getSetter());
    }

    public static final Type getJavaType(KType javaType) {
        Intrinsics.checkParameterIsNotNull(javaType, "$this$javaType");
        return ((KTypeImpl) javaType).g();
    }

    public static final <T> KFunction<T> getKotlinFunction(Constructor<T> kotlinFunction) {
        T next;
        Intrinsics.checkParameterIsNotNull(kotlinFunction, "$this$kotlinFunction");
        Class<T> declaringClass = kotlinFunction.getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(declaringClass, "declaringClass");
        Iterator<T> it = JvmClassMappingKt.getKotlinClass(declaringClass).f().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (Intrinsics.areEqual(getJavaConstructor((KFunction) next), kotlinFunction)) {
                break;
            }
        }
        return (KFunction) next;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bd A[EDGE_INSN: B:60:0x00bd->B:41:0x00bd BREAK  A[LOOP:2: B:23:0x006f->B:64:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[LOOP:2: B:23:0x006f->B:64:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final kotlin.reflect.KFunction<?> getKotlinFunction(java.lang.reflect.Method r8) {
        /*
            Method dump skipped, instruction units count: 240
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.ReflectJvmMapping.getKotlinFunction(java.lang.reflect.Method):kotlin.reflect.KFunction");
    }

    public static final KProperty<?> getKotlinProperty(Field kotlinProperty) {
        Intrinsics.checkParameterIsNotNull(kotlinProperty, "$this$kotlinProperty");
        Object obj = null;
        if (kotlinProperty.isSynthetic()) {
            return null;
        }
        KDeclarationContainer kDeclarationContainerA = a(kotlinProperty);
        if (kDeclarationContainerA == null) {
            Class<?> declaringClass = kotlinProperty.getDeclaringClass();
            Intrinsics.checkExpressionValueIsNotNull(declaringClass, "declaringClass");
            Iterator it = KClasses.getMemberProperties(JvmClassMappingKt.getKotlinClass(declaringClass)).iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                if (Intrinsics.areEqual(getJavaField((KProperty1) next), kotlinProperty)) {
                    obj = next;
                    break;
                }
            }
            return (KProperty) obj;
        }
        Collection<KCallable<?>> collectionI = kDeclarationContainerA.i();
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : collectionI) {
            if (obj2 instanceof KProperty) {
                arrayList.add(obj2);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            if (Intrinsics.areEqual(getJavaField((KProperty) next2), kotlinProperty)) {
                obj = next2;
                break;
            }
        }
        return (KProperty) obj;
    }

    public static /* synthetic */ void javaConstructor$annotations(KFunction kFunction) {
    }
}
