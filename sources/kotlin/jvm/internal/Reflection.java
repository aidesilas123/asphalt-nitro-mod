package kotlin.jvm.internal;

import java.util.Arrays;
import java.util.Collections;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.KClass;
import kotlin.reflect.KClassifier;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.KFunction;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.KProperty0;
import kotlin.reflect.KProperty1;
import kotlin.reflect.KProperty2;
import kotlin.reflect.KType;
import kotlin.reflect.KTypeParameter;
import kotlin.reflect.KTypeProjection;
import kotlin.reflect.KVariance;

/* JADX INFO: loaded from: classes5.dex */
public class Reflection {
    private static final m0 a;
    private static final KClass[] b;

    static {
        m0 m0Var = null;
        try {
            m0Var = (m0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (m0Var == null) {
            m0Var = new m0();
        }
        a = m0Var;
        b = new KClass[0];
    }

    public static KClass createKotlinClass(Class cls) {
        return a.a(cls);
    }

    public static KClass createKotlinClass(Class cls, String str) {
        return a.b(cls, str);
    }

    public static KFunction function(q qVar) {
        return a.c(qVar);
    }

    public static KClass getOrCreateKotlinClass(Class cls) {
        return a.d(cls);
    }

    public static KClass getOrCreateKotlinClass(Class cls, String str) {
        return a.e(cls, str);
    }

    public static KClass[] getOrCreateKotlinClasses(Class[] clsArr) {
        int length = clsArr.length;
        if (length == 0) {
            return b;
        }
        KClass[] kClassArr = new KClass[length];
        for (int i = 0; i < length; i++) {
            kClassArr[i] = getOrCreateKotlinClass(clsArr[i]);
        }
        return kClassArr;
    }

    public static KDeclarationContainer getOrCreateKotlinPackage(Class cls) {
        return a.f(cls, "");
    }

    public static KDeclarationContainer getOrCreateKotlinPackage(Class cls, String str) {
        return a.f(cls, str);
    }

    public static KType mutableCollectionType(KType kType) {
        return a.g(kType);
    }

    public static KMutableProperty0 mutableProperty0(u uVar) {
        return a.h(uVar);
    }

    public static KMutableProperty1 mutableProperty1(w wVar) {
        return a.i(wVar);
    }

    public static KMutableProperty2 mutableProperty2(y yVar) {
        return a.j(yVar);
    }

    public static KType nothingType(KType kType) {
        return a.k(kType);
    }

    public static KType nullableTypeOf(Class cls) {
        return a.s(getOrCreateKotlinClass(cls), Collections.emptyList(), true);
    }

    public static KType nullableTypeOf(Class cls, KTypeProjection kTypeProjection) {
        return a.s(getOrCreateKotlinClass(cls), Collections.singletonList(kTypeProjection), true);
    }

    public static KType nullableTypeOf(Class cls, KTypeProjection kTypeProjection, KTypeProjection kTypeProjection2) {
        return a.s(getOrCreateKotlinClass(cls), Arrays.asList(kTypeProjection, kTypeProjection2), true);
    }

    public static KType nullableTypeOf(Class cls, KTypeProjection... kTypeProjectionArr) {
        return a.s(getOrCreateKotlinClass(cls), ArraysKt___ArraysKt.toList(kTypeProjectionArr), true);
    }

    public static KType nullableTypeOf(KClassifier kClassifier) {
        return a.s(kClassifier, Collections.emptyList(), true);
    }

    public static KType platformType(KType kType, KType kType2) {
        return a.l(kType, kType2);
    }

    public static KProperty0 property0(b0 b0Var) {
        return a.m(b0Var);
    }

    public static KProperty1 property1(d0 d0Var) {
        return a.n(d0Var);
    }

    public static KProperty2 property2(f0 f0Var) {
        return a.o(f0Var);
    }

    public static String renderLambdaToString(FunctionBase functionBase) {
        return a.p(functionBase);
    }

    public static String renderLambdaToString(Lambda lambda) {
        return a.q(lambda);
    }

    public static void setUpperBounds(KTypeParameter kTypeParameter, KType kType) {
        a.r(kTypeParameter, Collections.singletonList(kType));
    }

    public static void setUpperBounds(KTypeParameter kTypeParameter, KType... kTypeArr) {
        a.r(kTypeParameter, ArraysKt___ArraysKt.toList(kTypeArr));
    }

    public static KType typeOf(Class cls) {
        return a.s(getOrCreateKotlinClass(cls), Collections.emptyList(), false);
    }

    public static KType typeOf(Class cls, KTypeProjection kTypeProjection) {
        return a.s(getOrCreateKotlinClass(cls), Collections.singletonList(kTypeProjection), false);
    }

    public static KType typeOf(Class cls, KTypeProjection kTypeProjection, KTypeProjection kTypeProjection2) {
        return a.s(getOrCreateKotlinClass(cls), Arrays.asList(kTypeProjection, kTypeProjection2), false);
    }

    public static KType typeOf(Class cls, KTypeProjection... kTypeProjectionArr) {
        return a.s(getOrCreateKotlinClass(cls), ArraysKt___ArraysKt.toList(kTypeProjectionArr), false);
    }

    public static KType typeOf(KClassifier kClassifier) {
        return a.s(kClassifier, Collections.emptyList(), false);
    }

    public static KTypeParameter typeParameter(Object obj, String str, KVariance kVariance, boolean z) {
        return a.t(obj, str, kVariance, z);
    }
}
