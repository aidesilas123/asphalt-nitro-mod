package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KMutableProperty;
import kotlin.reflect.KMutableProperty2;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.v;

/* JADX INFO: compiled from: KProperty2Impl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h<D, E, R> extends k<D, E, R> implements KMutableProperty2<D, E, R> {
    private final ReflectProperties.b<a<D, E, R>> o;

    /* JADX INFO: compiled from: KProperty2Impl.kt */
    public static final class a<D, E, R> extends KPropertyImpl.d<R> implements KMutableProperty.a, Function3 {
        private final h<D, E, R> h;

        public a(h<D, E, R> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            this.h = property;
        }

        @Override // kotlin.reflect.KProperty.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public h<D, E, R> a() {
            return this.h;
        }

        public void G(D d2, E e2, R r) throws kotlin.reflect.full.a {
            a().M(d2, e2, r);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2, Object obj3) throws kotlin.reflect.full.a {
            G(obj, obj2, obj3);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: KProperty2Impl.kt */
    static final class b extends Lambda implements Function0<a<D, E, R>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a<D, E, R> invoke() {
            return new a<>(h.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(KDeclarationContainerImpl container, y descriptor) {
        super(container, descriptor);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        ReflectProperties.b<a<D, E, R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Setter(this) }");
        this.o = bVarLazy;
    }

    @Override // kotlin.reflect.KMutableProperty
    /* JADX INFO: renamed from: L, reason: merged with bridge method [inline-methods] */
    public a<D, E, R> getSetter() {
        a<D, E, R> aVarC = this.o.c();
        Intrinsics.checkExpressionValueIsNotNull(aVarC, "_setter()");
        return aVarC;
    }

    public void M(D d2, E e2, R r) throws kotlin.reflect.full.a {
        getSetter().call(d2, e2, r);
    }
}
