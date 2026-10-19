package kotlin.reflect.jvm.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.KMutableProperty0;
import kotlin.reflect.jvm.internal.KPropertyImpl;
import kotlin.reflect.jvm.internal.ReflectProperties;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.v;

/* JADX INFO: compiled from: KProperty0Impl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class f<R> extends i<R> implements KMutableProperty0<R> {
    private final ReflectProperties.b<a<R>> o;

    /* JADX INFO: compiled from: KProperty0Impl.kt */
    public static final class a<R> extends KPropertyImpl.d<R> implements KMutableProperty0.a<R> {
        private final f<R> h;

        public a(f<R> property) {
            Intrinsics.checkParameterIsNotNull(property, "property");
            this.h = property;
        }

        @Override // kotlin.reflect.KProperty.a
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public f<R> a() {
            return this.h;
        }

        public void G(R r) throws kotlin.reflect.full.a {
            D().set(r);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ v invoke(Object obj) throws kotlin.reflect.full.a {
            G(obj);
            return v.a;
        }
    }

    /* JADX INFO: compiled from: KProperty0Impl.kt */
    static final class b extends Lambda implements Function0<a<R>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a<R> invoke() {
            return new a<>(f.this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(KDeclarationContainerImpl container, String name, String signature, Object obj) {
        super(container, name, signature, obj);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signature, "signature");
        ReflectProperties.b<a<R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Setter(this) }");
        this.o = bVarLazy;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(KDeclarationContainerImpl container, y descriptor) {
        super(container, descriptor);
        Intrinsics.checkParameterIsNotNull(container, "container");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        ReflectProperties.b<a<R>> bVarLazy = ReflectProperties.lazy(new b());
        Intrinsics.checkExpressionValueIsNotNull(bVarLazy, "ReflectProperties.lazy { Setter(this) }");
        this.o = bVarLazy;
    }

    @Override // kotlin.reflect.KMutableProperty0, kotlin.reflect.KMutableProperty
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public a<R> getSetter() {
        a<R> aVarC = this.o.c();
        Intrinsics.checkExpressionValueIsNotNull(aVarC, "_setter()");
        return aVarC;
    }

    @Override // kotlin.reflect.KMutableProperty0
    public void set(R r) throws kotlin.reflect.full.a {
        getSetter().call(r);
    }
}
