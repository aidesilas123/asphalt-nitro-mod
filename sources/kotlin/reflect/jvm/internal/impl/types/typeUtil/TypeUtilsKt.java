package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.checker.e;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: TypeUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeUtilsKt {

    /* JADX INFO: compiled from: TypeUtils.kt */
    static final class a extends Lambda implements Function1<m0, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(m0 it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            f fVarC = it.H0().q();
            if (fVarC != null) {
                return TypeUtilsKt.isTypeAliasParameter(fVarC);
            }
            return false;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(m0 m0Var) {
            return Boolean.valueOf(a(m0Var));
        }
    }

    /* JADX INFO: compiled from: TypeUtils.kt */
    static final class b extends Lambda implements Function1<m0, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final boolean a(m0 it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            f fVarC = it.H0().q();
            if (fVarC != null) {
                return (fVarC instanceof h0) || (fVarC instanceof i0);
            }
            return false;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(m0 m0Var) {
            return Boolean.valueOf(a(m0Var));
        }
    }

    public static final g0 asTypeProjection(u asTypeProjection) {
        Intrinsics.checkParameterIsNotNull(asTypeProjection, "$this$asTypeProjection");
        return new kotlin.reflect.jvm.internal.impl.types.i0(asTypeProjection);
    }

    public static final boolean canHaveUndefinedNullability(m0 canHaveUndefinedNullability) {
        Intrinsics.checkParameterIsNotNull(canHaveUndefinedNullability, "$this$canHaveUndefinedNullability");
        canHaveUndefinedNullability.H0();
        return (canHaveUndefinedNullability.H0().q() instanceof i0) || (canHaveUndefinedNullability instanceof e);
    }

    public static final boolean contains(u contains, Function1<? super m0, Boolean> predicate) {
        Intrinsics.checkParameterIsNotNull(contains, "$this$contains");
        Intrinsics.checkParameterIsNotNull(predicate, "predicate");
        return TypeUtils.contains(contains, predicate);
    }

    public static final boolean containsTypeAliasParameters(u containsTypeAliasParameters) {
        Intrinsics.checkParameterIsNotNull(containsTypeAliasParameters, "$this$containsTypeAliasParameters");
        return contains(containsTypeAliasParameters, a.a);
    }

    public static final g0 createProjection(u type, Variance projectionKind, i0 i0Var) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(projectionKind, "projectionKind");
        if ((i0Var != null ? i0Var.j() : null) == projectionKind) {
            projectionKind = Variance.INVARIANT;
        }
        return new kotlin.reflect.jvm.internal.impl.types.i0(projectionKind, type);
    }

    public static final KotlinBuiltIns getBuiltIns(u builtIns) {
        Intrinsics.checkParameterIsNotNull(builtIns, "$this$builtIns");
        KotlinBuiltIns kotlinBuiltInsK = builtIns.H0().k();
        Intrinsics.checkExpressionValueIsNotNull(kotlinBuiltInsK, "constructor.builtIns");
        return kotlinBuiltInsK;
    }

    public static final u getRepresentativeUpperBound(i0 representativeUpperBound) {
        Object obj;
        Intrinsics.checkParameterIsNotNull(representativeUpperBound, "$this$representativeUpperBound");
        List<u> upperBounds = representativeUpperBound.getUpperBounds();
        Intrinsics.checkExpressionValueIsNotNull(upperBounds, "upperBounds");
        upperBounds.isEmpty();
        List<u> upperBounds2 = representativeUpperBound.getUpperBounds();
        Intrinsics.checkExpressionValueIsNotNull(upperBounds2, "upperBounds");
        Iterator<T> it = upperBounds2.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            f fVarC = ((u) next).H0().q();
            d dVar = (d) (fVarC instanceof d ? fVarC : null);
            boolean z = false;
            if (dVar != null && dVar.getKind() != ClassKind.INTERFACE && dVar.getKind() != ClassKind.ANNOTATION_CLASS) {
                z = true;
            }
            if (z) {
                obj = next;
                break;
            }
        }
        u uVar = (u) obj;
        if (uVar != null) {
            return uVar;
        }
        List<u> upperBounds3 = representativeUpperBound.getUpperBounds();
        Intrinsics.checkExpressionValueIsNotNull(upperBounds3, "upperBounds");
        Object objFirst = p.first((List<? extends Object>) upperBounds3);
        Intrinsics.checkExpressionValueIsNotNull(objFirst, "upperBounds.first()");
        return (u) objFirst;
    }

    public static final boolean isSubtypeOf(u isSubtypeOf, u superType) {
        Intrinsics.checkParameterIsNotNull(isSubtypeOf, "$this$isSubtypeOf");
        Intrinsics.checkParameterIsNotNull(superType, "superType");
        return c.a.d(isSubtypeOf, superType);
    }

    public static final boolean isTypeAliasParameter(f isTypeAliasParameter) {
        Intrinsics.checkParameterIsNotNull(isTypeAliasParameter, "$this$isTypeAliasParameter");
        return (isTypeAliasParameter instanceof i0) && (((i0) isTypeAliasParameter).b() instanceof h0);
    }

    public static final boolean isTypeParameter(u isTypeParameter) {
        Intrinsics.checkParameterIsNotNull(isTypeParameter, "$this$isTypeParameter");
        return TypeUtils.isTypeParameter(isTypeParameter);
    }

    public static final u makeNotNullable(u makeNotNullable) {
        Intrinsics.checkParameterIsNotNull(makeNotNullable, "$this$makeNotNullable");
        u uVarMakeNotNullable = TypeUtils.makeNotNullable(makeNotNullable);
        Intrinsics.checkExpressionValueIsNotNull(uVarMakeNotNullable, "TypeUtils.makeNotNullable(this)");
        return uVarMakeNotNullable;
    }

    public static final u makeNullable(u makeNullable) {
        Intrinsics.checkParameterIsNotNull(makeNullable, "$this$makeNullable");
        u uVarMakeNullable = TypeUtils.makeNullable(makeNullable);
        Intrinsics.checkExpressionValueIsNotNull(uVarMakeNullable, "TypeUtils.makeNullable(this)");
        return uVarMakeNullable;
    }

    public static final u replaceAnnotations(u replaceAnnotations, Annotations newAnnotations) {
        Intrinsics.checkParameterIsNotNull(replaceAnnotations, "$this$replaceAnnotations");
        Intrinsics.checkParameterIsNotNull(newAnnotations, "newAnnotations");
        return (replaceAnnotations.getAnnotations().isEmpty() && newAnnotations.isEmpty()) ? replaceAnnotations : replaceAnnotations.K0().N0(newAnnotations);
    }

    public static final u replaceArgumentsWithStarProjections(u replaceArgumentsWithStarProjections) {
        m0 m0VarReplace$default;
        Intrinsics.checkParameterIsNotNull(replaceArgumentsWithStarProjections, "$this$replaceArgumentsWithStarProjections");
        m0 m0VarK0 = replaceArgumentsWithStarProjections.K0();
        if (m0VarK0 instanceof kotlin.reflect.jvm.internal.impl.types.p) {
            kotlin.reflect.jvm.internal.impl.types.p pVar = (kotlin.reflect.jvm.internal.impl.types.p) m0VarK0;
            y yVarP0 = pVar.P0();
            if (!yVarP0.H0().getParameters().isEmpty() && yVarP0.H0().q() != null) {
                List<i0> parameters = yVarP0.H0().getParameters();
                Intrinsics.checkExpressionValueIsNotNull(parameters, "constructor.parameters");
                ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
                Iterator<T> it = parameters.iterator();
                while (it.hasNext()) {
                    arrayList.add(new StarProjectionImpl((i0) it.next()));
                }
                yVarP0 = TypeSubstitutionKt.replace$default(yVarP0, (List) arrayList, (Annotations) null, 2, (Object) null);
            }
            y yVarQ0 = pVar.Q0();
            if (!yVarQ0.H0().getParameters().isEmpty() && yVarQ0.H0().q() != null) {
                List<i0> parameters2 = yVarQ0.H0().getParameters();
                Intrinsics.checkExpressionValueIsNotNull(parameters2, "constructor.parameters");
                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters2, 10));
                Iterator<T> it2 = parameters2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new StarProjectionImpl((i0) it2.next()));
                }
                yVarQ0 = TypeSubstitutionKt.replace$default(yVarQ0, (List) arrayList2, (Annotations) null, 2, (Object) null);
            }
            m0VarReplace$default = KotlinTypeFactory.flexibleType(yVarP0, yVarQ0);
        } else {
            if (!(m0VarK0 instanceof y)) {
                throw new NoWhenBranchMatchedException();
            }
            y yVar = (y) m0VarK0;
            boolean zIsEmpty = yVar.H0().getParameters().isEmpty();
            m0VarReplace$default = yVar;
            if (!zIsEmpty) {
                f fVarC = yVar.H0().q();
                m0VarReplace$default = yVar;
                if (fVarC != null) {
                    List<i0> parameters3 = yVar.H0().getParameters();
                    Intrinsics.checkExpressionValueIsNotNull(parameters3, "constructor.parameters");
                    ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters3, 10));
                    Iterator<T> it3 = parameters3.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(new StarProjectionImpl((i0) it3.next()));
                    }
                    m0VarReplace$default = TypeSubstitutionKt.replace$default(yVar, (List) arrayList3, (Annotations) null, 2, (Object) null);
                }
            }
        }
        return TypeWithEnhancementKt.inheritEnhancement(m0VarReplace$default, m0VarK0);
    }

    public static final boolean requiresTypeAliasExpansion(u requiresTypeAliasExpansion) {
        Intrinsics.checkParameterIsNotNull(requiresTypeAliasExpansion, "$this$requiresTypeAliasExpansion");
        return contains(requiresTypeAliasExpansion, b.a);
    }
}
