package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext;
import kotlin.reflect.jvm.internal.impl.utils.SmartSet;

/* JADX INFO: compiled from: AbstractTypeChecker.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractTypeCheckerContext implements TypeSystemContext {
    private int a;
    private boolean b;
    private ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<kotlin.reflect.jvm.internal.impl.types.model.g> f9825d;

    /* JADX INFO: compiled from: AbstractTypeChecker.kt */
    public enum LowerCapturedTypePolicy {
        CHECK_ONLY_LOWER,
        CHECK_SUBTYPE_AND_LOWER,
        SKIP_LOWER
    }

    /* JADX INFO: compiled from: AbstractTypeChecker.kt */
    public static abstract class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractTypeChecker.kt */
        public static abstract class AbstractC0549a extends a {
            public AbstractC0549a() {
                super(null);
            }
        }

        /* JADX INFO: compiled from: AbstractTypeChecker.kt */
        public static final class b extends a {
            public static final b a = new b();

            private b() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public kotlin.reflect.jvm.internal.impl.types.model.g a(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.f type) {
                Intrinsics.checkParameterIsNotNull(context, "context");
                Intrinsics.checkParameterIsNotNull(type, "type");
                return context.T(type);
            }
        }

        /* JADX INFO: compiled from: AbstractTypeChecker.kt */
        public static final class c extends a {
            public static final c a = new c();

            private c() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.types.model.g a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.f fVar) {
                return (kotlin.reflect.jvm.internal.impl.types.model.g) b(abstractTypeCheckerContext, fVar);
            }

            public Void b(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.f type) {
                Intrinsics.checkParameterIsNotNull(context, "context");
                Intrinsics.checkParameterIsNotNull(type, "type");
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        /* JADX INFO: compiled from: AbstractTypeChecker.kt */
        public static final class d extends a {
            public static final d a = new d();

            private d() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public kotlin.reflect.jvm.internal.impl.types.model.g a(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.f type) {
                Intrinsics.checkParameterIsNotNull(context, "context");
                Intrinsics.checkParameterIsNotNull(type, "type");
                return context.m(type);
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public abstract kotlin.reflect.jvm.internal.impl.types.model.g a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.f fVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.j H(kotlin.reflect.jvm.internal.impl.types.model.f typeConstructor) {
        Intrinsics.checkParameterIsNotNull(typeConstructor, "$this$typeConstructor");
        return TypeSystemContext.DefaultImpls.typeConstructor(this, typeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g T(kotlin.reflect.jvm.internal.impl.types.model.f lowerBoundIfFlexible) {
        Intrinsics.checkParameterIsNotNull(lowerBoundIfFlexible, "$this$lowerBoundIfFlexible");
        return TypeSystemContext.DefaultImpls.lowerBoundIfFlexible(this, lowerBoundIfFlexible);
    }

    public Boolean d0(kotlin.reflect.jvm.internal.impl.types.model.f subType, kotlin.reflect.jvm.internal.impl.types.model.f superType) {
        Intrinsics.checkParameterIsNotNull(subType, "subType");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        return null;
    }

    public abstract boolean e0(kotlin.reflect.jvm.internal.impl.types.model.j jVar, kotlin.reflect.jvm.internal.impl.types.model.j jVar2);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.i f(kotlin.reflect.jvm.internal.impl.types.model.h get, int i) {
        Intrinsics.checkParameterIsNotNull(get, "$this$get");
        return TypeSystemContext.DefaultImpls.get(this, get, i);
    }

    public final void f0() {
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> arrayDeque = this.c;
        if (arrayDeque == null) {
            Intrinsics.throwNpe();
        }
        arrayDeque.clear();
        Set<kotlin.reflect.jvm.internal.impl.types.model.g> set = this.f9825d;
        if (set == null) {
            Intrinsics.throwNpe();
        }
        set.clear();
        this.b = false;
    }

    public List<kotlin.reflect.jvm.internal.impl.types.model.g> g0(kotlin.reflect.jvm.internal.impl.types.model.g fastCorrespondingSupertypes, kotlin.reflect.jvm.internal.impl.types.model.j constructor) {
        Intrinsics.checkParameterIsNotNull(fastCorrespondingSupertypes, "$this$fastCorrespondingSupertypes");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        return TypeSystemContext.DefaultImpls.fastCorrespondingSupertypes(this, fastCorrespondingSupertypes, constructor);
    }

    public kotlin.reflect.jvm.internal.impl.types.model.i h0(kotlin.reflect.jvm.internal.impl.types.model.g getArgumentOrNull, int i) {
        Intrinsics.checkParameterIsNotNull(getArgumentOrNull, "$this$getArgumentOrNull");
        return TypeSystemContext.DefaultImpls.getArgumentOrNull(this, getArgumentOrNull, i);
    }

    public LowerCapturedTypePolicy i0(kotlin.reflect.jvm.internal.impl.types.model.g subType, kotlin.reflect.jvm.internal.impl.types.model.b superType) {
        Intrinsics.checkParameterIsNotNull(subType, "subType");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        return LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER;
    }

    public final ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.g> j0() {
        return this.c;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.types.model.g> k0() {
        return this.f9825d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public int l(kotlin.reflect.jvm.internal.impl.types.model.h size) {
        Intrinsics.checkParameterIsNotNull(size, "$this$size");
        return TypeSystemContext.DefaultImpls.size(this, size);
    }

    public boolean l0(kotlin.reflect.jvm.internal.impl.types.model.f hasFlexibleNullability) {
        Intrinsics.checkParameterIsNotNull(hasFlexibleNullability, "$this$hasFlexibleNullability");
        return TypeSystemContext.DefaultImpls.hasFlexibleNullability(this, hasFlexibleNullability);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g m(kotlin.reflect.jvm.internal.impl.types.model.f upperBoundIfFlexible) {
        Intrinsics.checkParameterIsNotNull(upperBoundIfFlexible, "$this$upperBoundIfFlexible");
        return TypeSystemContext.DefaultImpls.upperBoundIfFlexible(this, upperBoundIfFlexible);
    }

    public final void m0() {
        this.b = true;
        if (this.c == null) {
            this.c = new ArrayDeque<>(4);
        }
        if (this.f9825d == null) {
            this.f9825d = SmartSet.a.a();
        }
    }

    public abstract boolean n0(kotlin.reflect.jvm.internal.impl.types.model.f fVar);

    public boolean o0(kotlin.reflect.jvm.internal.impl.types.model.g isClassType) {
        Intrinsics.checkParameterIsNotNull(isClassType, "$this$isClassType");
        return TypeSystemContext.DefaultImpls.isClassType(this, isClassType);
    }

    public boolean p0(kotlin.reflect.jvm.internal.impl.types.model.f isDefinitelyNotNullType) {
        Intrinsics.checkParameterIsNotNull(isDefinitelyNotNullType, "$this$isDefinitelyNotNullType");
        return TypeSystemContext.DefaultImpls.isDefinitelyNotNullType(this, isDefinitelyNotNullType);
    }

    public boolean q0(kotlin.reflect.jvm.internal.impl.types.model.f isDynamic) {
        Intrinsics.checkParameterIsNotNull(isDynamic, "$this$isDynamic");
        return TypeSystemContext.DefaultImpls.isDynamic(this, isDynamic);
    }

    public abstract boolean r0();

    public boolean s0(kotlin.reflect.jvm.internal.impl.types.model.g isIntegerLiteralType) {
        Intrinsics.checkParameterIsNotNull(isIntegerLiteralType, "$this$isIntegerLiteralType");
        return TypeSystemContext.DefaultImpls.isIntegerLiteralType(this, isIntegerLiteralType);
    }

    public boolean t0(kotlin.reflect.jvm.internal.impl.types.model.f isNothing) {
        Intrinsics.checkParameterIsNotNull(isNothing, "$this$isNothing");
        return TypeSystemContext.DefaultImpls.isNothing(this, isNothing);
    }

    public abstract boolean u0();

    public kotlin.reflect.jvm.internal.impl.types.model.f v0(kotlin.reflect.jvm.internal.impl.types.model.f type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return type;
    }

    public kotlin.reflect.jvm.internal.impl.types.model.f w0(kotlin.reflect.jvm.internal.impl.types.model.f type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return type;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext
    public boolean x(kotlin.reflect.jvm.internal.impl.types.model.g a2, kotlin.reflect.jvm.internal.impl.types.model.g b) {
        Intrinsics.checkParameterIsNotNull(a2, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        return TypeSystemContext.DefaultImpls.identicalArguments(this, a2, b);
    }

    public abstract a x0(kotlin.reflect.jvm.internal.impl.types.model.g gVar);
}
