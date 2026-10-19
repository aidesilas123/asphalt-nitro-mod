package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;

/* JADX INFO: compiled from: ReflectJavaConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class i extends n implements kotlin.reflect.jvm.internal.impl.load.java.structure.j {
    private final Constructor<?> a;

    public i(Constructor<?> member) {
        Intrinsics.checkParameterIsNotNull(member, "member");
        this.a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.n
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public Constructor<?> K() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.j
    public List<w> g() {
        Type[] realTypes = K().getGenericParameterTypes();
        Intrinsics.checkExpressionValueIsNotNull(realTypes, "types");
        if (realTypes.length == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Class<?> klass = K().getDeclaringClass();
        Intrinsics.checkExpressionValueIsNotNull(klass, "klass");
        if (klass.getDeclaringClass() != null && !Modifier.isStatic(klass.getModifiers())) {
            realTypes = (Type[]) kotlin.collections.k.copyOfRange(realTypes, 1, realTypes.length);
        }
        Annotation[][] realAnnotations = K().getParameterAnnotations();
        if (realAnnotations.length < realTypes.length) {
            throw new IllegalStateException("Illegal generic signature: " + K());
        }
        if (realAnnotations.length > realTypes.length) {
            Intrinsics.checkExpressionValueIsNotNull(realAnnotations, "annotations");
            realAnnotations = (Annotation[][]) kotlin.collections.k.copyOfRange(realAnnotations, realAnnotations.length - realTypes.length, realAnnotations.length);
        }
        Intrinsics.checkExpressionValueIsNotNull(realTypes, "realTypes");
        Intrinsics.checkExpressionValueIsNotNull(realAnnotations, "realAnnotations");
        return L(realTypes, realAnnotations, K().isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.v
    public List<s> getTypeParameters() {
        TypeVariable<Constructor<?>>[] typeParameters = K().getTypeParameters();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Constructor<?>> typeVariable : typeParameters) {
            arrayList.add(new s(typeVariable));
        }
        return arrayList;
    }
}
