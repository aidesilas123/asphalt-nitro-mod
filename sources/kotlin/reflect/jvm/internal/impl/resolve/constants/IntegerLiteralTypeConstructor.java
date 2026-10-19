package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.i0;

/* JADX INFO: compiled from: IntegerLiteralTypeConstructor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class IntegerLiteralTypeConstructor implements f0 {
    public static final Companion a = new Companion(null);
    private final long b;
    private final ModuleDescriptor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<kotlin.reflect.jvm.internal.impl.types.u> f9756d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.types.y f9757e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Lazy f9758f;

    /* JADX INFO: compiled from: IntegerLiteralTypeConstructor.kt */
    public static final class Companion {

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: compiled from: IntegerLiteralTypeConstructor.kt */
        enum Mode {
            COMMON_SUPER_TYPE,
            INTERSECTION_TYPE
        }

        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        private final kotlin.reflect.jvm.internal.impl.types.y a(Collection<? extends kotlin.reflect.jvm.internal.impl.types.y> collection, Mode mode) {
            if (collection.isEmpty()) {
                return null;
            }
            Iterator<T> it = collection.iterator();
            if (!it.hasNext()) {
                throw new UnsupportedOperationException("Empty collection can't be reduced.");
            }
            Object next = it.next();
            while (it.hasNext()) {
                kotlin.reflect.jvm.internal.impl.types.y yVar = (kotlin.reflect.jvm.internal.impl.types.y) it.next();
                next = IntegerLiteralTypeConstructor.a.e((kotlin.reflect.jvm.internal.impl.types.y) next, yVar, mode);
            }
            return (kotlin.reflect.jvm.internal.impl.types.y) next;
        }

        private final kotlin.reflect.jvm.internal.impl.types.y c(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, IntegerLiteralTypeConstructor integerLiteralTypeConstructor2, Mode mode) {
            Set setIntersect;
            int i = n.a[mode.ordinal()];
            if (i == 1) {
                setIntersect = CollectionsKt___CollectionsKt.intersect(integerLiteralTypeConstructor.f(), integerLiteralTypeConstructor2.f());
            } else {
                if (i != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                setIntersect = CollectionsKt___CollectionsKt.union(integerLiteralTypeConstructor.f(), integerLiteralTypeConstructor2.f());
            }
            return KotlinTypeFactory.integerLiteralType(Annotations.e0.b(), new IntegerLiteralTypeConstructor(integerLiteralTypeConstructor.b, integerLiteralTypeConstructor.c, setIntersect, null), false);
        }

        private final kotlin.reflect.jvm.internal.impl.types.y d(IntegerLiteralTypeConstructor integerLiteralTypeConstructor, kotlin.reflect.jvm.internal.impl.types.y yVar) {
            if (integerLiteralTypeConstructor.f().contains(yVar)) {
                return yVar;
            }
            return null;
        }

        private final kotlin.reflect.jvm.internal.impl.types.y e(kotlin.reflect.jvm.internal.impl.types.y yVar, kotlin.reflect.jvm.internal.impl.types.y yVar2, Mode mode) {
            if (yVar == null || yVar2 == null) {
                return null;
            }
            f0 f0VarH0 = yVar.H0();
            f0 f0VarH02 = yVar2.H0();
            boolean z = f0VarH0 instanceof IntegerLiteralTypeConstructor;
            if (z && (f0VarH02 instanceof IntegerLiteralTypeConstructor)) {
                return c((IntegerLiteralTypeConstructor) f0VarH0, (IntegerLiteralTypeConstructor) f0VarH02, mode);
            }
            if (z) {
                return d((IntegerLiteralTypeConstructor) f0VarH0, yVar2);
            }
            if (f0VarH02 instanceof IntegerLiteralTypeConstructor) {
                return d((IntegerLiteralTypeConstructor) f0VarH02, yVar);
            }
            return null;
        }

        public final kotlin.reflect.jvm.internal.impl.types.y b(Collection<? extends kotlin.reflect.jvm.internal.impl.types.y> types) {
            Intrinsics.checkParameterIsNotNull(types, "types");
            return a(types, Mode.INTERSECTION_TYPE);
        }
    }

    /* JADX INFO: compiled from: IntegerLiteralTypeConstructor.kt */
    static final class a extends Lambda implements Function0<List<kotlin.reflect.jvm.internal.impl.types.y>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<kotlin.reflect.jvm.internal.impl.types.y> invoke() {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarX = IntegerLiteralTypeConstructor.this.k().x();
            Intrinsics.checkExpressionValueIsNotNull(dVarX, "builtIns.comparable");
            kotlin.reflect.jvm.internal.impl.types.y yVarN = dVarX.n();
            Intrinsics.checkExpressionValueIsNotNull(yVarN, "builtIns.comparable.defaultType");
            List<kotlin.reflect.jvm.internal.impl.types.y> listMutableListOf = CollectionsKt__CollectionsKt.mutableListOf(TypeSubstitutionKt.replace$default(yVarN, CollectionsKt__CollectionsJVMKt.listOf(new i0(Variance.IN_VARIANCE, IntegerLiteralTypeConstructor.this.f9757e)), (Annotations) null, 2, (Object) null));
            if (!IntegerLiteralTypeConstructor.this.i()) {
                listMutableListOf.add(IntegerLiteralTypeConstructor.this.k().L());
            }
            return listMutableListOf;
        }
    }

    /* JADX INFO: compiled from: IntegerLiteralTypeConstructor.kt */
    static final class b extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.u, String> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final String invoke(kotlin.reflect.jvm.internal.impl.types.u it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return it.toString();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private IntegerLiteralTypeConstructor(long j, ModuleDescriptor moduleDescriptor, Set<? extends kotlin.reflect.jvm.internal.impl.types.u> set) {
        this.f9757e = KotlinTypeFactory.integerLiteralType(Annotations.e0.b(), this, false);
        this.f9758f = LazyKt__LazyJVMKt.lazy(new a());
        this.b = j;
        this.c = moduleDescriptor;
        this.f9756d = set;
    }

    public /* synthetic */ IntegerLiteralTypeConstructor(long j, ModuleDescriptor moduleDescriptor, Set set, kotlin.jvm.internal.n nVar) {
        this(j, moduleDescriptor, set);
    }

    private final List<kotlin.reflect.jvm.internal.impl.types.u> g() {
        return (List) this.f9758f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean i() {
        Collection<kotlin.reflect.jvm.internal.impl.types.u> allSignedLiteralTypes = PrimitiveTypeUtilKt.getAllSignedLiteralTypes(this.c);
        if ((allSignedLiteralTypes instanceof Collection) && allSignedLiteralTypes.isEmpty()) {
            return true;
        }
        Iterator<T> it = allSignedLiteralTypes.iterator();
        while (it.hasNext()) {
            if (!(!this.f9756d.contains((kotlin.reflect.jvm.internal.impl.types.u) it.next()))) {
                return false;
            }
        }
        return true;
    }

    private final String j() {
        return '[' + CollectionsKt___CollectionsKt.joinToString$default(this.f9756d, ",", null, null, 0, null, b.a, 30, null) + ']';
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public f0 a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public kotlin.reflect.jvm.internal.impl.descriptors.f c() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public boolean d() {
        return false;
    }

    public final boolean e(f0 constructor) {
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Set<kotlin.reflect.jvm.internal.impl.types.u> set = this.f9756d;
        if ((set instanceof Collection) && set.isEmpty()) {
            return false;
        }
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            if (Intrinsics.areEqual(((kotlin.reflect.jvm.internal.impl.types.u) it.next()).H0(), constructor)) {
                return true;
            }
        }
        return false;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.types.u> f() {
        return this.f9756d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> getParameters() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public Collection<kotlin.reflect.jvm.internal.impl.types.u> h() {
        return g();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public KotlinBuiltIns k() {
        return this.c.k();
    }

    public String toString() {
        return "IntegerLiteralType" + j();
    }
}
