package kotlin.reflect.jvm.internal;

import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KProperty0;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.y;

/* JADX INFO: compiled from: KProperty0Impl.kt */
/* JADX INFO: loaded from: classes5.dex */
public class i<R> extends KPropertyImpl<R> implements KProperty0<R> {
    private final ReflectProperties.b<a<R>> m;
    private final Lazy<Object> n;

    /* JADX INFO: compiled from: KProperty0Impl.kt */
    public static final class a<R> extends KPropertyImpl.c<R> implements KProperty0.a<R> {
        private final i<R> h;

        /* JADX WARN: Multi-variable type inference failed */
        public a(i<? extends R> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            this.h = property;
        }

        @Override // kotlin.reflect.KProperty.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public i<R> a() {
            return this.h;
        }

        @Override // kotlin.jvm.functions.Function0
        public R invoke() {
            return a().get();
        }
    }

    /* JADX INFO: compiled from: KProperty0Impl.kt */
    static final class b extends Lambda implements Function0<a<? extends R>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a<R> invoke() {
            return new a<>(i.this);
        }
    }

    /* JADX INFO: compiled from: KProperty0Impl.kt */
    static final class c extends Lambda implements Function0<Object> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            i iVar = i.this;
            return iVar.E(iVar.C(), i.this.D());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
        ReflectProperties.b<a<R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Getter(this) }");
        this.m = bVarLazy;
        this.n = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new c());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(KDeclarationContainerImpl container, y descriptor) {
        super(container, descriptor);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        ReflectProperties.b<a<R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Getter(this) }");
        this.m = bVarLazy;
        this.n = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new c());
    }

    @Override // kotlin.reflect.KProperty
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public a<R> getGetter() {
        a<R> aVarC = this.m.c();
        Intrinsics.checkExpressionValueIsNotNull(aVarC, "_getter()");
        return aVarC;
    }

    @Override // kotlin.reflect.KProperty0
    public R get() {
        return G().call(new Object[0]);
    }

    @Override // kotlin.reflect.KProperty0
    public Object getDelegate() {
        return this.n.getValue();
    }

    @Override // kotlin.jvm.functions.Function0
    public R invoke() {
        return get();
    }
}
