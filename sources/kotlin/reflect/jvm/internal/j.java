package kotlin.reflect.jvm.internal;

import java.lang.reflect.Field;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty1;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.y;

/* JADX INFO: compiled from: KProperty1Impl.kt */
/* JADX INFO: loaded from: classes5.dex */
public class j<T, R> extends KPropertyImpl<R> implements KProperty1<T, R> {
    private final ReflectProperties.b<a<T, R>> m;
    private final Lazy<Field> n;

    /* JADX INFO: compiled from: KProperty1Impl.kt */
    public static final class a<T, R> extends KPropertyImpl.c<R> implements KProperty1.a<T, R> {
        private final j<T, R> h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(j<T, ? extends R> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            this.h = property;
        }

        @Override // kotlin.reflect.KProperty.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public j<T, R> a() {
            return this.h;
        }

        @Override // kotlin.jvm.functions.Function1
        public R invoke(T t) {
            return a().get(t);
        }
    }

    /* JADX INFO: compiled from: KProperty1Impl.kt */
    static final class b extends Lambda implements Function0<a<T, ? extends R>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a<T, R> invoke() {
            return new a<>(j.this);
        }
    }

    /* JADX INFO: compiled from: KProperty1Impl.kt */
    static final class c extends Lambda implements Function0<Field> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Field invoke() {
            return j.this.C();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
        ReflectProperties.b<a<T, R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Getter(this) }");
        this.m = bVarLazy;
        this.n = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new c());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(KDeclarationContainerImpl container, y descriptor) {
        super(container, descriptor);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        ReflectProperties.b<a<T, R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Getter(this) }");
        this.m = bVarLazy;
        this.n = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new c());
    }

    @Override // kotlin.reflect.KProperty
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public a<T, R> getGetter() {
        a<T, R> aVarC = this.m.c();
        Intrinsics.checkExpressionValueIsNotNull(aVarC, "_getter()");
        return aVarC;
    }

    @Override // kotlin.reflect.KProperty1
    public Object b(T t) {
        return E(this.n.getValue(), t);
    }

    @Override // kotlin.reflect.KProperty1
    public R get(T t) {
        return getGetter().call(t);
    }

    @Override // kotlin.jvm.functions.Function1
    public R invoke(T t) {
        return get(t);
    }
}
