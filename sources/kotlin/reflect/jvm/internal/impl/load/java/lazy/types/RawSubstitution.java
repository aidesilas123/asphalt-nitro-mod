package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.d;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.j0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: RawType.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class RawSubstitution extends j0 {
    private static final JavaTypeAttributes c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final JavaTypeAttributes f9243d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final RawSubstitution f9244e = new RawSubstitution();

    /* JADX INFO: compiled from: RawType.kt */
    static final class a extends Lambda implements Function1<d, y> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.d a;
        final /* synthetic */ y b;
        final /* synthetic */ JavaTypeAttributes c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, y yVar, JavaTypeAttributes javaTypeAttributes) {
            super(1);
            this.a = dVar;
            this.b = yVar;
            this.c = javaTypeAttributes;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(d kotlinTypeRefiner) {
            ClassId classId;
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarA;
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.a;
            if (!(dVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                dVar = null;
            }
            if (dVar == null || (classId = DescriptorUtilsKt.getClassId(dVar)) == null || (dVarA = kotlinTypeRefiner.a(classId)) == null || Intrinsics.areEqual(dVarA, this.a)) {
                return null;
            }
            return (y) RawSubstitution.f9244e.i(this.b, dVarA, this.c).f();
        }
    }

    static {
        TypeUsage typeUsage = TypeUsage.COMMON;
        c = JavaTypeResolverKt.toAttributes$default(typeUsage, false, null, 3, null).f(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
        f9243d = JavaTypeResolverKt.toAttributes$default(typeUsage, false, null, 3, null).f(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);
    }

    private RawSubstitution() {
    }

    public static /* synthetic */ g0 computeProjection$default(RawSubstitution rawSubstitution, i0 i0Var, JavaTypeAttributes javaTypeAttributes, u uVar, int i, Object obj) {
        if ((i & 4) != 0) {
            uVar = JavaTypeResolverKt.getErasedUpperBound$default(i0Var, null, null, 3, null);
        }
        return rawSubstitution.h(i0Var, javaTypeAttributes, uVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<y, Boolean> i(y yVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, JavaTypeAttributes javaTypeAttributes) {
        if (yVar.H0().getParameters().isEmpty()) {
            return TuplesKt.to(yVar, Boolean.FALSE);
        }
        if (KotlinBuiltIns.isArray(yVar)) {
            g0 g0Var = yVar.G0().get(0);
            Variance varianceC = g0Var.c();
            u type = g0Var.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "componentTypeProjection.type");
            return TuplesKt.to(KotlinTypeFactory.simpleType$default(yVar.getAnnotations(), yVar.H0(), CollectionsKt__CollectionsJVMKt.listOf(new kotlin.reflect.jvm.internal.impl.types.i0(varianceC, j(type))), yVar.I0(), null, 16, null), Boolean.FALSE);
        }
        if (KotlinTypeKt.isError(yVar)) {
            return TuplesKt.to(ErrorUtils.createErrorType("Raw error type: " + yVar.H0()), Boolean.FALSE);
        }
        MemberScope memberScopeL0 = dVar.l0(f9244e);
        Intrinsics.checkExpressionValueIsNotNull(memberScopeL0, "declaration.getMemberScope(RawSubstitution)");
        Annotations annotations = yVar.getAnnotations();
        f0 f0VarI = dVar.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "declaration.typeConstructor");
        f0 f0VarI2 = dVar.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI2, "declaration.typeConstructor");
        List<i0> parameters = f0VarI2.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "declaration.typeConstructor.parameters");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(parameters, 10));
        for (i0 parameter : parameters) {
            RawSubstitution rawSubstitution = f9244e;
            Intrinsics.checkExpressionValueIsNotNull(parameter, "parameter");
            arrayList.add(computeProjection$default(rawSubstitution, parameter, javaTypeAttributes, null, 4, null));
        }
        return TuplesKt.to(KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(annotations, f0VarI, arrayList, yVar.I0(), memberScopeL0, new a(dVar, yVar, javaTypeAttributes)), Boolean.TRUE);
    }

    private final u j(u uVar) {
        f fVarQ = uVar.H0().q();
        if (fVarQ instanceof i0) {
            return j(JavaTypeResolverKt.getErasedUpperBound$default((i0) fVarQ, null, null, 3, null));
        }
        if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            throw new IllegalStateException(("Unexpected declaration kind: " + fVarQ).toString());
        }
        f fVarQ2 = FlexibleTypesKt.upperIfFlexible(uVar).H0().q();
        if (fVarQ2 instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            Pair<y, Boolean> pairI = i(FlexibleTypesKt.lowerIfFlexible(uVar), (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ, c);
            y yVarC = pairI.c();
            boolean zBooleanValue = pairI.d().booleanValue();
            Pair<y, Boolean> pairI2 = i(FlexibleTypesKt.upperIfFlexible(uVar), (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ2, f9243d);
            y yVarC2 = pairI2.c();
            return (zBooleanValue || pairI2.d().booleanValue()) ? new b(yVarC, yVarC2) : KotlinTypeFactory.flexibleType(yVarC, yVarC2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + fVarQ2 + "\" while for lower it's \"" + fVarQ + '\"').toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    public boolean f() {
        return false;
    }

    public final g0 h(i0 parameter, JavaTypeAttributes attr, u erasedUpperBound) {
        Intrinsics.checkParameterIsNotNull(parameter, "parameter");
        Intrinsics.checkParameterIsNotNull(attr, "attr");
        Intrinsics.checkParameterIsNotNull(erasedUpperBound, "erasedUpperBound");
        int i = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a.a[attr.b().ordinal()];
        if (i == 1) {
            return new kotlin.reflect.jvm.internal.impl.types.i0(Variance.INVARIANT, erasedUpperBound);
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        if (!parameter.j().e()) {
            return new kotlin.reflect.jvm.internal.impl.types.i0(Variance.INVARIANT, DescriptorUtilsKt.getBuiltIns(parameter).H());
        }
        List<i0> parameters = erasedUpperBound.H0().getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "erasedUpperBound.constructor.parameters");
        return parameters.isEmpty() ^ true ? new kotlin.reflect.jvm.internal.impl.types.i0(Variance.OUT_VARIANCE, erasedUpperBound) : JavaTypeResolverKt.makeStarProjection(parameter, attr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.j0
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.types.i0 e(u key) {
        Intrinsics.checkParameterIsNotNull(key, "key");
        return new kotlin.reflect.jvm.internal.impl.types.i0(j(key));
    }
}
