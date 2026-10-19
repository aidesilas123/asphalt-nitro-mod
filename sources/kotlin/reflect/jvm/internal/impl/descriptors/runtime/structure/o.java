package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod;
import kotlin.reflect.jvm.internal.impl.load.java.structure.w;

/* JADX INFO: compiled from: ReflectJavaMethod.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class o extends n implements JavaMethod {
    private final Method a;

    public o(Method member) {
        Intrinsics.checkParameterIsNotNull(member, "member");
        this.a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    public boolean G() {
        return JavaMethod.DefaultImpls.getHasAnnotationParameterDefaultValue(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.n
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public Method K() {
        return this.a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
    public r getReturnType() {
        r.a aVar = r.a;
        Type genericReturnType = K().getGenericReturnType();
        Intrinsics.checkExpressionValueIsNotNull(genericReturnType, "member.genericReturnType");
        return aVar.a(genericReturnType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    public List<w> g() {
        Type[] genericParameterTypes = K().getGenericParameterTypes();
        Intrinsics.checkExpressionValueIsNotNull(genericParameterTypes, "member.genericParameterTypes");
        Annotation[][] parameterAnnotations = K().getParameterAnnotations();
        Intrinsics.checkExpressionValueIsNotNull(parameterAnnotations, "member.parameterAnnotations");
        return L(genericParameterTypes, parameterAnnotations, K().isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.v
    public List<s> getTypeParameters() {
        TypeVariable<Method>[] typeParameters = K().getTypeParameters();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Method> typeVariable : typeParameters) {
            arrayList.add(new s(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.JavaMethod
    public kotlin.reflect.jvm.internal.impl.load.java.structure.a n() {
        Object defaultValue = K().getDefaultValue();
        if (defaultValue != null) {
            return c.a.a(defaultValue, null);
        }
        return null;
    }
}
