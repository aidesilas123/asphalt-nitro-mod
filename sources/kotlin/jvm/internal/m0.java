package kotlin.jvm.internal;

import java.util.List;
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

/* JADX INFO: compiled from: ReflectionFactory.java */
/* JADX INFO: loaded from: classes5.dex */
public class m0 {
    public KClass a(Class cls) {
        return new ClassReference(cls);
    }

    public KClass b(Class cls, String str) {
        return new ClassReference(cls);
    }

    public KFunction c(q qVar) {
        return qVar;
    }

    public KClass d(Class cls) {
        return new ClassReference(cls);
    }

    public KClass e(Class cls, String str) {
        return new ClassReference(cls);
    }

    public KDeclarationContainer f(Class cls, String str) {
        return new PackageReference(cls, str);
    }

    public KType g(KType kType) {
        TypeReference typeReference = (TypeReference) kType;
        return new TypeReference(kType.d(), kType.k(), typeReference.o(), typeReference.l() | 2);
    }

    public KMutableProperty0 h(u uVar) {
        return uVar;
    }

    public KMutableProperty1 i(w wVar) {
        return wVar;
    }

    public KMutableProperty2 j(y yVar) {
        return yVar;
    }

    public KType k(KType kType) {
        TypeReference typeReference = (TypeReference) kType;
        return new TypeReference(kType.d(), kType.k(), typeReference.o(), typeReference.l() | 4);
    }

    public KType l(KType kType, KType kType2) {
        return new TypeReference(kType.d(), kType.k(), kType2, ((TypeReference) kType).l());
    }

    public KProperty0 m(b0 b0Var) {
        return b0Var;
    }

    public KProperty1 n(d0 d0Var) {
        return d0Var;
    }

    public KProperty2 o(f0 f0Var) {
        return f0Var;
    }

    public String p(FunctionBase functionBase) {
        String string = functionBase.getClass().getGenericInterfaces()[0].toString();
        return string.startsWith("kotlin.jvm.functions.") ? string.substring(21) : string;
    }

    public String q(Lambda lambda) {
        return p(lambda);
    }

    public void r(KTypeParameter kTypeParameter, List<KType> list) {
        ((TypeParameterReference) kTypeParameter).a(list);
    }

    public KType s(KClassifier kClassifier, List<KTypeProjection> list, boolean z) {
        return new TypeReference(kClassifier, list, z);
    }

    public KTypeParameter t(Object obj, String str, KVariance kVariance, boolean z) {
        return new TypeParameterReference(obj, str, kVariance, z);
    }
}
