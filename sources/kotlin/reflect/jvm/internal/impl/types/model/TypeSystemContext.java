package kotlin.reflect.jvm.internal.impl.types.model;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext;

/* JADX INFO: compiled from: TypeSystemContext.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface TypeSystemContext extends TypeSystemOptimizationContext {

    /* JADX INFO: compiled from: TypeSystemContext.kt */
    public static final class DefaultImpls {
        public static List<g> fastCorrespondingSupertypes(TypeSystemContext typeSystemContext, g fastCorrespondingSupertypes, j constructor) {
            Intrinsics.checkParameterIsNotNull(fastCorrespondingSupertypes, "$this$fastCorrespondingSupertypes");
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            return null;
        }

        public static i get(TypeSystemContext typeSystemContext, h get, int i) {
            Intrinsics.checkParameterIsNotNull(get, "$this$get");
            if (get instanceof g) {
                return typeSystemContext.r((f) get, i);
            }
            if (get instanceof a) {
                i iVar = ((a) get).get(i);
                Intrinsics.checkExpressionValueIsNotNull(iVar, "get(index)");
                return iVar;
            }
            throw new IllegalStateException(("unknown type argument list type: " + get + ", " + Reflection.getOrCreateKotlinClass(get.getClass())).toString());
        }

        public static i getArgumentOrNull(TypeSystemContext typeSystemContext, g getArgumentOrNull, int i) {
            Intrinsics.checkParameterIsNotNull(getArgumentOrNull, "$this$getArgumentOrNull");
            int iD = typeSystemContext.d(getArgumentOrNull);
            if (i >= 0 && iD > i) {
                return typeSystemContext.r(getArgumentOrNull, i);
            }
            return null;
        }

        public static boolean hasFlexibleNullability(TypeSystemContext typeSystemContext, f hasFlexibleNullability) {
            Intrinsics.checkParameterIsNotNull(hasFlexibleNullability, "$this$hasFlexibleNullability");
            return typeSystemContext.n(typeSystemContext.T(hasFlexibleNullability)) != typeSystemContext.n(typeSystemContext.m(hasFlexibleNullability));
        }

        public static boolean identicalArguments(TypeSystemContext typeSystemContext, g a, g b) {
            Intrinsics.checkParameterIsNotNull(a, "a");
            Intrinsics.checkParameterIsNotNull(b, "b");
            return TypeSystemOptimizationContext.DefaultImpls.identicalArguments(typeSystemContext, a, b);
        }

        public static boolean isClassType(TypeSystemContext typeSystemContext, g isClassType) {
            Intrinsics.checkParameterIsNotNull(isClassType, "$this$isClassType");
            return typeSystemContext.N(typeSystemContext.b(isClassType));
        }

        public static boolean isDefinitelyNotNullType(TypeSystemContext typeSystemContext, f isDefinitelyNotNullType) {
            Intrinsics.checkParameterIsNotNull(isDefinitelyNotNullType, "$this$isDefinitelyNotNullType");
            g gVarA = typeSystemContext.a(isDefinitelyNotNullType);
            return (gVarA != null ? typeSystemContext.Y(gVarA) : null) != null;
        }

        public static boolean isDynamic(TypeSystemContext typeSystemContext, f isDynamic) {
            Intrinsics.checkParameterIsNotNull(isDynamic, "$this$isDynamic");
            e eVarK = typeSystemContext.K(isDynamic);
            return (eVarK != null ? typeSystemContext.b0(eVarK) : null) != null;
        }

        public static boolean isIntegerLiteralType(TypeSystemContext typeSystemContext, g isIntegerLiteralType) {
            Intrinsics.checkParameterIsNotNull(isIntegerLiteralType, "$this$isIntegerLiteralType");
            return typeSystemContext.w(typeSystemContext.b(isIntegerLiteralType));
        }

        public static boolean isNothing(TypeSystemContext typeSystemContext, f isNothing) {
            Intrinsics.checkParameterIsNotNull(isNothing, "$this$isNothing");
            return typeSystemContext.E(typeSystemContext.H(isNothing)) && !typeSystemContext.v(isNothing);
        }

        public static g lowerBoundIfFlexible(TypeSystemContext typeSystemContext, f lowerBoundIfFlexible) {
            g gVarA;
            Intrinsics.checkParameterIsNotNull(lowerBoundIfFlexible, "$this$lowerBoundIfFlexible");
            e eVarK = typeSystemContext.K(lowerBoundIfFlexible);
            if ((eVarK == null || (gVarA = typeSystemContext.y(eVarK)) == null) && (gVarA = typeSystemContext.a(lowerBoundIfFlexible)) == null) {
                Intrinsics.throwNpe();
            }
            return gVarA;
        }

        public static int size(TypeSystemContext typeSystemContext, h size) {
            Intrinsics.checkParameterIsNotNull(size, "$this$size");
            if (size instanceof g) {
                return typeSystemContext.d((f) size);
            }
            if (size instanceof a) {
                return ((a) size).size();
            }
            throw new IllegalStateException(("unknown type argument list type: " + size + ", " + Reflection.getOrCreateKotlinClass(size.getClass())).toString());
        }

        public static j typeConstructor(TypeSystemContext typeSystemContext, f typeConstructor) {
            Intrinsics.checkParameterIsNotNull(typeConstructor, "$this$typeConstructor");
            g gVarA = typeSystemContext.a(typeConstructor);
            if (gVarA == null) {
                gVarA = typeSystemContext.T(typeConstructor);
            }
            return typeSystemContext.b(gVarA);
        }

        public static g upperBoundIfFlexible(TypeSystemContext typeSystemContext, f upperBoundIfFlexible) {
            g gVarA;
            Intrinsics.checkParameterIsNotNull(upperBoundIfFlexible, "$this$upperBoundIfFlexible");
            e eVarK = typeSystemContext.K(upperBoundIfFlexible);
            if ((eVarK == null || (gVarA = typeSystemContext.R(eVarK)) == null) && (gVarA = typeSystemContext.a(upperBoundIfFlexible)) == null) {
                Intrinsics.throwNpe();
            }
            return gVarA;
        }
    }

    boolean A(j jVar, j jVar2);

    int B(j jVar);

    boolean E(j jVar);

    Collection<f> F(j jVar);

    Collection<f> G(g gVar);

    j H(f fVar);

    boolean I(j jVar);

    e K(f fVar);

    f L(List<? extends f> list);

    f M(b bVar);

    boolean N(j jVar);

    g O(g gVar, boolean z);

    boolean P(j jVar);

    g R(e eVar);

    b S(g gVar);

    g T(f fVar);

    TypeVariance U(i iVar);

    g X(g gVar, CaptureStatus captureStatus);

    c Y(g gVar);

    boolean Z(j jVar);

    g a(f fVar);

    f a0(i iVar);

    j b(g gVar);

    d b0(e eVar);

    int d(f fVar);

    h e(g gVar);

    i f(h hVar, int i);

    k g(j jVar, int i);

    boolean i(i iVar);

    TypeVariance j(k kVar);

    boolean k(g gVar);

    int l(h hVar);

    g m(f fVar);

    boolean n(g gVar);

    boolean o(f fVar);

    i q(f fVar);

    i r(f fVar, int i);

    boolean t(j jVar);

    boolean u(g gVar);

    boolean v(f fVar);

    boolean w(j jVar);

    g y(e eVar);

    boolean z(g gVar);
}
