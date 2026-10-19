package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: NewCapturedType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class NewCapturedTypeConstructor implements kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b {
    private final Lazy a;
    private final g0 b;
    private Function0<? extends List<? extends m0>> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final NewCapturedTypeConstructor f9846d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i0 f9847e;

    /* JADX INFO: compiled from: NewCapturedType.kt */
    static final class a extends Lambda implements Function0<List<? extends m0>> {
        final /* synthetic */ List a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(List list) {
            super(0);
            this.a = list;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<m0> invoke() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: NewCapturedType.kt */
    static final class b extends Lambda implements Function0<List<? extends m0>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<m0> invoke() {
            Function0 function0 = NewCapturedTypeConstructor.this.c;
            if (function0 != null) {
                return (List) function0.invoke();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: NewCapturedType.kt */
    static final class c extends Lambda implements Function0<List<? extends m0>> {
        final /* synthetic */ List a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(List list) {
            super(0);
            this.a = list;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<m0> invoke() {
            return this.a;
        }
    }

    /* JADX INFO: compiled from: NewCapturedType.kt */
    static final class d extends Lambda implements Function0<List<? extends m0>> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.types.checker.d b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            super(0);
            this.b = dVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<m0> invoke() {
            List<m0> listH = NewCapturedTypeConstructor.this.h();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listH, 10));
            Iterator<T> it = listH.iterator();
            while (it.hasNext()) {
                arrayList.add(((m0) it.next()).R0(this.b));
            }
            return arrayList;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor(g0 projection, List<? extends m0> supertypes, NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this(projection, new a(supertypes), newCapturedTypeConstructor, null, 8, null);
        Intrinsics.checkParameterIsNotNull(projection, "projection");
        Intrinsics.checkParameterIsNotNull(supertypes, "supertypes");
    }

    public /* synthetic */ NewCapturedTypeConstructor(g0 g0Var, List list, NewCapturedTypeConstructor newCapturedTypeConstructor, int i, kotlin.jvm.internal.n nVar) {
        this(g0Var, list, (i & 4) != 0 ? null : newCapturedTypeConstructor);
    }

    public NewCapturedTypeConstructor(g0 projection, Function0<? extends List<? extends m0>> function0, NewCapturedTypeConstructor newCapturedTypeConstructor, i0 i0Var) {
        Intrinsics.checkParameterIsNotNull(projection, "projection");
        this.b = projection;
        this.c = function0;
        this.f9846d = newCapturedTypeConstructor;
        this.f9847e = i0Var;
        this.a = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.b, (Function0) new b());
    }

    public /* synthetic */ NewCapturedTypeConstructor(g0 g0Var, Function0 function0, NewCapturedTypeConstructor newCapturedTypeConstructor, i0 i0Var, int i, kotlin.jvm.internal.n nVar) {
        this(g0Var, (i & 2) != 0 ? null : function0, (i & 4) != 0 ? null : newCapturedTypeConstructor, (i & 8) != 0 ? null : i0Var);
    }

    private final List<m0> f() {
        return (List) this.a.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b
    public g0 b() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: c */
    public kotlin.reflect.jvm.internal.impl.descriptors.f q() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public boolean d() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public List<m0> h() {
        List<m0> listF = f();
        return listF != null ? listF : CollectionsKt__CollectionsKt.emptyList();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!Intrinsics.areEqual(NewCapturedTypeConstructor.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor");
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor = (NewCapturedTypeConstructor) obj;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = this.f9846d;
        if (newCapturedTypeConstructor2 == null) {
            newCapturedTypeConstructor2 = this;
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor3 = newCapturedTypeConstructor.f9846d;
        if (newCapturedTypeConstructor3 != null) {
            newCapturedTypeConstructor = newCapturedTypeConstructor3;
        }
        return newCapturedTypeConstructor2 == newCapturedTypeConstructor;
    }

    public final void g(List<? extends m0> supertypes) {
        Intrinsics.checkParameterIsNotNull(supertypes, "supertypes");
        Function0<? extends List<? extends m0>> function0 = this.c;
        this.c = new c(supertypes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public List<i0> getParameters() {
        return CollectionsKt__CollectionsKt.emptyList();
    }

    public int hashCode() {
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.f9846d;
        return newCapturedTypeConstructor != null ? newCapturedTypeConstructor.hashCode() : super.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public NewCapturedTypeConstructor a(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        g0 g0VarA = b().a(kotlinTypeRefiner);
        Intrinsics.checkExpressionValueIsNotNull(g0VarA, "projection.refine(kotlinTypeRefiner)");
        d dVar = this.c != null ? new d(kotlinTypeRefiner) : null;
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.f9846d;
        if (newCapturedTypeConstructor == null) {
            newCapturedTypeConstructor = this;
        }
        return new NewCapturedTypeConstructor(g0VarA, dVar, newCapturedTypeConstructor, this.f9847e);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.f0
    public KotlinBuiltIns k() {
        u type = b().getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "projection.type");
        return TypeUtilsKt.getBuiltIns(type);
    }

    public String toString() {
        return "CapturedType(" + b() + ')';
    }
}
