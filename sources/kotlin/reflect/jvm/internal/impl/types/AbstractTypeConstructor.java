package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.types.checker.KotlinTypeRefinerKt;

/* JADX INFO: compiled from: AbstractTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractTypeConstructor implements f0 {
    private final kotlin.reflect.jvm.internal.impl.storage.e<a> a;

    /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
    private final class ModuleViewTypeConstructor implements f0 {
        private final Lazy a;
        private final kotlin.reflect.jvm.internal.impl.types.checker.d b;
        final /* synthetic */ AbstractTypeConstructor c;

        /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
        static final class a extends Lambda implements Function0<List<? extends u>> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<u> invoke() {
                return KotlinTypeRefinerKt.refineTypes(ModuleViewTypeConstructor.this.b, ModuleViewTypeConstructor.this.c.h());
            }
        }

        public ModuleViewTypeConstructor(AbstractTypeConstructor abstractTypeConstructor, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.c = abstractTypeConstructor;
            this.b = kotlinTypeRefiner;
            this.a = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new a());
        }

        private final List<u> e() {
            return (List) this.a.getValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this.c.a(kotlinTypeRefiner);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f q() {
            return this.c.q();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return this.c.d();
        }

        public boolean equals(Object obj) {
            return this.c.equals(obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public List<u> h() {
            return e();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters = this.c.getParameters();
            Intrinsics.checkExpressionValueIsNotNull(parameters, "this@AbstractTypeConstructor.parameters");
            return parameters;
        }

        public int hashCode() {
            return this.c.hashCode();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public KotlinBuiltIns k() {
            KotlinBuiltIns kotlinBuiltInsK = this.c.k();
            Intrinsics.checkExpressionValueIsNotNull(kotlinBuiltInsK, "this@AbstractTypeConstructor.builtIns");
            return kotlinBuiltInsK;
        }

        public String toString() {
            return this.c.toString();
        }
    }

    /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
    private static final class a {
        private List<? extends u> a;
        private final Collection<u> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Collection<? extends u> allSupertypes) {
            Intrinsics.checkParameterIsNotNull(allSupertypes, "allSupertypes");
            this.b = allSupertypes;
            this.a = CollectionsKt__CollectionsJVMKt.listOf(ErrorUtils.c);
        }

        public final Collection<u> a() {
            return this.b;
        }

        public final List<u> b() {
            return this.a;
        }

        public final void c(List<? extends u> list) {
            Intrinsics.checkParameterIsNotNull(list, "<set-?>");
            this.a = list;
        }
    }

    /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
    static final class b extends Lambda implements Function0<a> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final a invoke() {
            return new a(AbstractTypeConstructor.this.f());
        }
    }

    /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
    static final class c extends Lambda implements Function1<Boolean, a> {
        public static final c a = new c();

        c() {
            super(1);
        }

        public final a c(boolean z) {
            return new a(CollectionsKt__CollectionsJVMKt.listOf(ErrorUtils.c));
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ a invoke(Boolean bool) {
            return c(bool.booleanValue());
        }
    }

    /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
    static final class d extends Lambda implements Function1<a, kotlin.v> {

        /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
        static final class a extends Lambda implements Function1<f0, Collection<? extends u>> {
            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Collection<u> invoke(f0 it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return AbstractTypeConstructor.this.e(it, true);
            }
        }

        /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
        static final class b extends Lambda implements Function1<u, kotlin.v> {
            b() {
                super(1);
            }

            public final void a(u it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                AbstractTypeConstructor.this.m(it);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(u uVar) {
                a(uVar);
                return kotlin.v.a;
            }
        }

        /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
        static final class c extends Lambda implements Function1<f0, Collection<? extends u>> {
            c() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Collection<u> invoke(f0 it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return AbstractTypeConstructor.this.e(it, false);
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$d$d, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractTypeConstructor.kt */
        static final class C0550d extends Lambda implements Function1<u, kotlin.v> {
            C0550d() {
                super(1);
            }

            public final void a(u it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                AbstractTypeConstructor.this.n(it);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(u uVar) {
                a(uVar);
                return kotlin.v.a;
            }
        }

        d() {
            super(1);
        }

        public final void a(a supertypes) {
            Intrinsics.checkParameterIsNotNull(supertypes, "supertypes");
            Collection<u> collectionA = AbstractTypeConstructor.this.j().a(AbstractTypeConstructor.this, supertypes.a(), new c(), new C0550d());
            if (collectionA.isEmpty()) {
                u uVarG = AbstractTypeConstructor.this.g();
                collectionA = uVarG != null ? CollectionsKt__CollectionsJVMKt.listOf(uVarG) : null;
                if (collectionA == null) {
                    collectionA = CollectionsKt__CollectionsKt.emptyList();
                }
            }
            AbstractTypeConstructor.this.j().a(AbstractTypeConstructor.this, collectionA, new a(), new b());
            List<? extends u> list = (List) (collectionA instanceof List ? collectionA : null);
            if (list == null) {
                list = CollectionsKt___CollectionsKt.toList(collectionA);
            }
            supertypes.c(list);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ kotlin.v invoke(a aVar) {
            a(aVar);
            return kotlin.v.a;
        }
    }

    public AbstractTypeConstructor(kotlin.reflect.jvm.internal.impl.storage.h storageManager) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        this.a = storageManager.f(new b(), c.a, new d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<u> e(f0 f0Var, boolean z) {
        List listPlus;
        AbstractTypeConstructor abstractTypeConstructor = (AbstractTypeConstructor) (!(f0Var instanceof AbstractTypeConstructor) ? null : f0Var);
        if (abstractTypeConstructor != null && (listPlus = CollectionsKt___CollectionsKt.plus((Collection) abstractTypeConstructor.a.invoke().a(), (Iterable) abstractTypeConstructor.i(z))) != null) {
            return listPlus;
        }
        Collection<u> supertypes = f0Var.h();
        Intrinsics.checkExpressionValueIsNotNull(supertypes, "supertypes");
        return supertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new ModuleViewTypeConstructor(this, kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: c */
    public abstract kotlin.reflect.jvm.internal.impl.descriptors.f q();

    protected abstract Collection<u> f();

    protected u g() {
        return null;
    }

    protected Collection<u> i(boolean z) {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    protected abstract kotlin.reflect.jvm.internal.impl.descriptors.g0 j();

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public List<u> h() {
        return this.a.invoke().b();
    }

    protected void m(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
    }

    protected void n(u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
    }
}
