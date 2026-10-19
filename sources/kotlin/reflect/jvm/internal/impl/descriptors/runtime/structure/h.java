package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r;
import kotlin.reflect.jvm.internal.impl.load.java.structure.JavaAnnotation;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: ReflectJavaClassifierType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h extends r implements kotlin.reflect.jvm.internal.impl.load.java.structure.i {
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.h b;
    private final Type c;

    public h(Type reflectType) {
        kotlin.reflect.jvm.internal.impl.load.java.structure.h reflectJavaClass;
        Intrinsics.checkParameterIsNotNull(reflectType, "reflectType");
        this.c = reflectType;
        Type typeK = K();
        if (typeK instanceof Class) {
            reflectJavaClass = new ReflectJavaClass((Class) typeK);
        } else if (typeK instanceof TypeVariable) {
            reflectJavaClass = new s((TypeVariable) typeK);
        } else {
            if (!(typeK instanceof ParameterizedType)) {
                throw new IllegalStateException("Not a classifier type (" + typeK.getClass() + "): " + typeK);
            }
            Type rawType = ((ParameterizedType) typeK).getRawType();
            if (rawType == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<*>");
            }
            reflectJavaClass = new ReflectJavaClass((Class) rawType);
        }
        this.b = reflectJavaClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.i
    public String B() {
        throw new UnsupportedOperationException("Type not found: " + K());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r
    public Type K() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public JavaAnnotation b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.i
    public kotlin.reflect.jvm.internal.impl.load.java.structure.h d() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public Collection<JavaAnnotation> getAnnotations() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.i
    public boolean o() {
        Type typeK = K();
        if (!(typeK instanceof Class)) {
            return false;
        }
        TypeVariable[] typeParameters = ((Class) typeK).getTypeParameters();
        Intrinsics.checkExpressionValueIsNotNull(typeParameters, "getTypeParameters()");
        return (typeParameters.length == 0) ^ true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.i
    public List<kotlin.reflect.jvm.internal.impl.load.java.structure.t> u() {
        List<Type> parameterizedTypeArguments = ReflectClassUtilKt.getParameterizedTypeArguments(K());
        r.a aVar = r.a;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameterizedTypeArguments, 10));
        Iterator<T> it = parameterizedTypeArguments.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.a((Type) it.next()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c
    public boolean x() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.i
    public String y() {
        return K().toString();
    }
}
