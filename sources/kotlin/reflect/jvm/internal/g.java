package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.v;

/* JADX INFO: compiled from: KProperty1Impl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g<T, R> extends j<T, R> implements KMutableProperty1<T, R> {
    private final ReflectProperties.b<a<T, R>> o;

    /* JADX INFO: compiled from: KProperty1Impl.kt */
    public static final class a<T, R> extends KPropertyImpl.d<R> implements KMutableProperty1.a<T, R> {
        private final g<T, R> h;

        public a(g<T, R> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            this.h = property;
        }

        @Override // kotlin.reflect.KProperty.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public g<T, R> a() {
            return this.h;
        }

        public void G(T t, R r) throws kotlin.reflect.full.a {
            a().L(t, r);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(Object obj, Object obj2) throws kotlin.reflect.full.a {
            G(obj, obj2);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: KProperty1Impl.kt */
    static final class b extends Lambda implements Function0<a<T, R>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a<T, R> invoke() {
            return new a<>(g.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
        ReflectProperties.b<a<T, R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Setter(this) }");
        this.o = bVarLazy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(KDeclarationContainerImpl container, y descriptor) {
        super(container, descriptor);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        ReflectProperties.b<a<T, R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Setter(this) }");
        this.o = bVarLazy;
    }

    @Override // kotlin.reflect.KMutableProperty1, kotlin.reflect.KMutableProperty
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public a<T, R> getSetter() {
        a<T, R> aVarC = this.o.c();
        Intrinsics.checkExpressionValueIsNotNull(aVarC, "_setter()");
        return aVarC;
    }

    public void L(T t, R r) throws kotlin.reflect.full.a {
        getSetter().call(t, r);
    }
}
