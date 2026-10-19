package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaModifierListOwner;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.name.SpecialNames;

/* JADX INFO: compiled from: ReflectJavaMember.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class n extends j implements ReflectJavaAnnotationOwner, ReflectJavaModifierListOwner, kotlin.reflect.jvm.internal.impl.load.java.structure.o {
    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.o
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public ReflectJavaClass I() {
        Class<?> declaringClass = K().getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(declaringClass, "member.declaringClass");
        return new ReflectJavaClass(declaringClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public boolean J() {
        return ReflectJavaModifierListOwner.DefaultImpls.isStatic(this);
    }

    public abstract Member K();

    protected final List<w> L(Type[] parameterTypes, Annotation[][] parameterAnnotations, boolean z) throws IllegalAccessException, InvocationTargetException {
        String str;
        Intrinsics.checkParameterIsNotNull(parameterTypes, "parameterTypes");
        Intrinsics.checkParameterIsNotNull(parameterAnnotations, "parameterAnnotations");
        ArrayList arrayList = new ArrayList(parameterTypes.length);
        List<String> listB = a.b.b(K());
        int size = listB != null ? listB.size() - parameterTypes.length : 0;
        int length = parameterTypes.length;
        int i = 0;
        while (i < length) {
            r rVarA = r.a.a(parameterTypes[i]);
            if (listB != null) {
                str = (String) kotlin.collections.p.getOrNull(listB, i + size);
                if (str == null) {
                    throw new IllegalStateException(("No parameter with index " + i + '+' + size + " (name=" + getName() + " type=" + rVarA + ") in " + listB + "@ReflectJavaMember").toString());
                }
            } else {
                str = null;
            }
            arrayList.add(new t(rVarA, parameterAnnotations[i], str, z && i == ArraysKt___ArraysKt.getLastIndex(parameterTypes)));
            i++;
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaAnnotationOwner
    public AnnotatedElement c() {
        Member memberK = K();
        if (memberK != null) {
            return (AnnotatedElement) memberK;
        }
        throw new TypeCastException("null cannot be cast to non-null type java.lang.reflect.AnnotatedElement");
    }

    public boolean equals(Object obj) {
        return (obj instanceof n) && Intrinsics.areEqual(K(), ((n) obj).K());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaModifierListOwner
    public int getModifiers() {
        return K().getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.q
    public Name getName() {
        Name nameIdentifier;
        String name = K().getName();
        if (name != null && (nameIdentifier = Name.identifier(name)) != null) {
            return nameIdentifier;
        }
        Name name2 = SpecialNames.a;
        Intrinsics.checkExpressionValueIsNotNull(name2, "SpecialNames.NO_NAME_PROVIDED");
        return name2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public m0 getVisibility() {
        return ReflectJavaModifierListOwner.DefaultImpls.getVisibility(this);
    }

    public int hashCode() {
        return K().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public boolean isAbstract() {
        return ReflectJavaModifierListOwner.DefaultImpls.isAbstract(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.p
    public boolean isFinal() {
        return ReflectJavaModifierListOwner.DefaultImpls.isFinal(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public b b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return ReflectJavaAnnotationOwner.DefaultImpls.findAnnotation(this, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return ReflectJavaAnnotationOwner.DefaultImpls.getAnnotations(this);
    }

    public String toString() {
        return getClass().getName() + ": " + K();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public boolean x() {
        return ReflectJavaAnnotationOwner.DefaultImpls.isDeprecatedInJavaDoc(this);
    }
}
