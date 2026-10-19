package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty;
import kotlin.reflect.KProperty2;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.y;

/* JADX INFO: compiled from: KProperty2Impl.kt */
/* JADX INFO: loaded from: classes5.dex */
public class k<D, E, R> extends KPropertyImpl<R> implements KProperty2<D, E, R> {
    private final ReflectProperties.b<a<D, E, R>> m;
    private final Lazy<Field> n;

    /* JADX INFO: compiled from: KProperty2Impl.kt */
    public static final class a<D, E, R> extends KPropertyImpl.c<R> implements KProperty.b, Function2 {
        private final k<D, E, R> h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(k<D, E, ? extends R> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            this.h = property;
        }

        @Override // kotlin.reflect.KProperty.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public k<D, E, R> a() {
            return this.h;
        }

        @Override // kotlin.jvm.functions.Function2
        public R invoke(D d2, E e2) {
            return a().J(d2, e2);
        }
    }

    /* JADX INFO: compiled from: KProperty2Impl.kt */
    static final class b extends Lambda implements Function0<a<D, E, ? extends R>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a<D, E, R> invoke() {
            return new a<>(k.this);
        }
    }

    /* JADX INFO: compiled from: KProperty2Impl.kt */
    static final class c extends Lambda implements Function0<Field> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Field invoke() {
            return k.this.C();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(KDeclarationContainerImpl container, y descriptor) {
        super(container, descriptor);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        ReflectProperties.b<a<D, E, R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Getter(this) }");
        this.m = bVarLazy;
        this.n = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new c());
    }

    public R J(D d2, E e2) {
        return getGetter().call(d2, e2);
    }

    @Override // kotlin.reflect.KProperty
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public a<D, E, R> getGetter() {
        a<D, E, R> aVarC = this.m.c();
        Intrinsics.checkExpressionValueIsNotNull(aVarC, "_getter()");
        return aVarC;
    }

    @Override // kotlin.jvm.functions.Function2
    public R invoke(D d2, E e2) {
        return J(d2, e2);
    }

    @Override // kotlin.reflect.KProperty2
    public Object t(D d2, E e2) {
        return E(this.n.getValue(), d2);
    }
}
