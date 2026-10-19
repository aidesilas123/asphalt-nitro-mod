package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;
import kotlin.reflect.jvm.internal.impl.load.java.structure.v;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: resolvers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaTypeParameterResolver implements h {
    private final Map<u, Integer> a;
    private final kotlin.reflect.jvm.internal.impl.storage.c<u, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e> b;
    private final d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final i f9212d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f9213e;

    /* JADX INFO: compiled from: resolvers.kt */
    static final class a extends Lambda implements Function1<u, kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e> {
        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e invoke(u typeParameter) {
            Intrinsics.checkParameterIsNotNull(typeParameter, "typeParameter");
            Integer num = (Integer) LazyJavaTypeParameterResolver.this.a.get(typeParameter);
            if (num == null) {
                return null;
            }
            return new kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e(ContextKt.child(LazyJavaTypeParameterResolver.this.c, LazyJavaTypeParameterResolver.this), typeParameter, LazyJavaTypeParameterResolver.this.f9213e + num.intValue(), LazyJavaTypeParameterResolver.this.f9212d);
        }
    }

    public LazyJavaTypeParameterResolver(d c, i containingDeclaration, v typeParameterOwner, int i) {
        Intrinsics.checkParameterIsNotNull(c, "c");
        Intrinsics.checkParameterIsNotNull(containingDeclaration, "containingDeclaration");
        Intrinsics.checkParameterIsNotNull(typeParameterOwner, "typeParameterOwner");
        this.c = c;
        this.f9212d = containingDeclaration;
        this.f9213e = i;
        this.a = CollectionsKt.mapToIndex(typeParameterOwner.getTypeParameters());
        this.b = c.e().g(new a());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.h
    public i0 a(u javaTypeParameter) {
        Intrinsics.checkParameterIsNotNull(javaTypeParameter, "javaTypeParameter");
        kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.e eVarInvoke = this.b.invoke(javaTypeParameter);
        return eVarInvoke != null ? eVarInvoke : this.c.f().a(javaTypeParameter);
    }
}
