package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.e0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: compiled from: TypeAliasExpander.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeAliasExpander {
    private final e0 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f9837d;
    public static final Companion b = new Companion(null);
    private static final TypeAliasExpander a = new TypeAliasExpander(e0.a.a, false);

    /* JADX INFO: compiled from: TypeAliasExpander.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void a(int i, kotlin.reflect.jvm.internal.impl.descriptors.h0 h0Var) {
            if (i <= 100) {
                return;
            }
            throw new AssertionError("Too deep recursion while expanding type alias " + h0Var.getName());
        }

        public final void b(e0 reportStrategy, u unsubstitutedArgument, u typeArgument, kotlin.reflect.jvm.internal.impl.descriptors.i0 typeParameterDescriptor, TypeSubstitutor substitutor) {
            Intrinsics.checkParameterIsNotNull(reportStrategy, "reportStrategy");
            Intrinsics.checkParameterIsNotNull(unsubstitutedArgument, "unsubstitutedArgument");
            Intrinsics.checkParameterIsNotNull(typeArgument, "typeArgument");
            Intrinsics.checkParameterIsNotNull(typeParameterDescriptor, "typeParameterDescriptor");
            Intrinsics.checkParameterIsNotNull(substitutor, "substitutor");
            Iterator<u> it = typeParameterDescriptor.getUpperBounds().iterator();
            while (it.hasNext()) {
                u uVarG = substitutor.g(it.next(), Variance.INVARIANT);
                Intrinsics.checkExpressionValueIsNotNull(uVarG, "substitutor.safeSubstitu…ound, Variance.INVARIANT)");
                if (!kotlin.reflect.jvm.internal.impl.types.checker.c.a.d(typeArgument, uVarG)) {
                    reportStrategy.b(uVarG, unsubstitutedArgument, typeArgument, typeParameterDescriptor);
                }
            }
        }
    }

    public TypeAliasExpander(e0 reportStrategy, boolean z) {
        Intrinsics.checkParameterIsNotNull(reportStrategy, "reportStrategy");
        this.c = reportStrategy;
        this.f9837d = z;
    }

    private final void a(Annotations annotations, Annotations annotations2) {
        HashSet hashSet = new HashSet();
        Iterator<AnnotationDescriptor> it = annotations.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().e());
        }
        for (AnnotationDescriptor annotationDescriptor : annotations2) {
            if (hashSet.contains(annotationDescriptor.e())) {
                this.c.c(annotationDescriptor);
            }
        }
    }

    private final void b(u uVar, u uVar2) {
        TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(uVar2);
        Intrinsics.checkExpressionValueIsNotNull(typeSubstitutorCreate, "TypeSubstitutor.create(substitutedType)");
        int i = 0;
        for (Object obj : uVar2.G0()) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            g0 g0Var = (g0) obj;
            if (!g0Var.b()) {
                u type = g0Var.getType();
                Intrinsics.checkExpressionValueIsNotNull(type, "substitutedArgument.type");
                if (!TypeUtilsKt.containsTypeAliasParameters(type)) {
                    g0 g0Var2 = uVar.G0().get(i);
                    kotlin.reflect.jvm.internal.impl.descriptors.i0 typeParameter = uVar.H0().getParameters().get(i);
                    if (this.f9837d) {
                        Companion companion = b;
                        e0 e0Var = this.c;
                        u type2 = g0Var2.getType();
                        Intrinsics.checkExpressionValueIsNotNull(type2, "unsubstitutedArgument.type");
                        u type3 = g0Var.getType();
                        Intrinsics.checkExpressionValueIsNotNull(type3, "substitutedArgument.type");
                        Intrinsics.checkExpressionValueIsNotNull(typeParameter, "typeParameter");
                        companion.b(e0Var, type2, type3, typeParameter, typeSubstitutorCreate);
                    }
                }
            }
            i = i2;
        }
    }

    private final n c(n nVar, Annotations annotations) {
        return nVar.N0(h(nVar, annotations));
    }

    private final y d(y yVar, Annotations annotations) {
        return KotlinTypeKt.isError(yVar) ? yVar : TypeSubstitutionKt.replace$default(yVar, (List) null, h(yVar, annotations), 1, (Object) null);
    }

    private final y e(y yVar, u uVar) {
        y yVarMakeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(yVar, uVar.I0());
        Intrinsics.checkExpressionValueIsNotNull(yVarMakeNullableIfNeeded, "TypeUtils.makeNullableIf…romType.isMarkedNullable)");
        return yVarMakeNullableIfNeeded;
    }

    private final y f(y yVar, u uVar) {
        return d(e(yVar, uVar), uVar.getAnnotations());
    }

    private final y g(d0 d0Var, Annotations annotations, boolean z) {
        f0 f0VarI = d0Var.b().i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "descriptor.typeConstructor");
        return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(annotations, f0VarI, d0Var.a(), z, MemberScope.b.b);
    }

    private final Annotations h(u uVar, Annotations annotations) {
        return KotlinTypeKt.isError(uVar) ? uVar.getAnnotations() : AnnotationsKt.composeAnnotations(annotations, uVar.getAnnotations());
    }

    private final g0 j(g0 g0Var, d0 d0Var, int i) {
        m0 m0VarK0 = g0Var.getType().K0();
        if (DynamicTypesKt.isDynamic(m0VarK0)) {
            return g0Var;
        }
        y yVarAsSimpleType = TypeSubstitutionKt.asSimpleType(m0VarK0);
        if (KotlinTypeKt.isError(yVarAsSimpleType) || !TypeUtilsKt.requiresTypeAliasExpansion(yVarAsSimpleType)) {
            return g0Var;
        }
        f0 f0VarH0 = yVarAsSimpleType.H0();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = f0VarH0.q();
        f0VarH0.getParameters().size();
        yVarAsSimpleType.G0().size();
        if (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0) {
            return g0Var;
        }
        if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.h0)) {
            y yVarM = m(yVarAsSimpleType, d0Var, i);
            b(yVarAsSimpleType, yVarM);
            return new i0(g0Var.c(), yVarM);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.h0 h0Var = (kotlin.reflect.jvm.internal.impl.descriptors.h0) fVarQ;
        if (d0Var.d(h0Var)) {
            this.c.a(h0Var);
            return new i0(Variance.INVARIANT, ErrorUtils.createErrorType("Recursive type alias: " + h0Var.getName()));
        }
        List<g0> listG0 = yVarAsSimpleType.G0();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG0, 10));
        int i2 = 0;
        for (Object obj : listG0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            arrayList.add(l((g0) obj, d0Var, f0VarH0.getParameters().get(i2), i + 1));
            i2 = i3;
        }
        y yVarK = k(d0.a.a(d0Var, h0Var, arrayList), yVarAsSimpleType.getAnnotations(), yVarAsSimpleType.I0(), i + 1, false);
        y yVarM2 = m(yVarAsSimpleType, d0Var, i);
        if (!DynamicTypesKt.isDynamic(yVarK)) {
            yVarK = SpecialTypesKt.withAbbreviation(yVarK, yVarM2);
        }
        return new i0(g0Var.c(), yVarK);
    }

    private final y k(d0 d0Var, Annotations annotations, boolean z, int i, boolean z2) {
        g0 g0VarL = l(new i0(Variance.INVARIANT, d0Var.b().o0()), d0Var, null, i);
        u type = g0VarL.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "expandedProjection.type");
        y yVarAsSimpleType = TypeSubstitutionKt.asSimpleType(type);
        if (KotlinTypeKt.isError(yVarAsSimpleType)) {
            return yVarAsSimpleType;
        }
        g0VarL.c();
        a(yVarAsSimpleType.getAnnotations(), annotations);
        y yVarMakeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(d(yVarAsSimpleType, annotations), z);
        Intrinsics.checkExpressionValueIsNotNull(yVarMakeNullableIfNeeded, "expandedType.combineAnno…fNeeded(it, isNullable) }");
        return z2 ? SpecialTypesKt.withAbbreviation(yVarMakeNullableIfNeeded, g(d0Var, annotations, z)) : yVarMakeNullableIfNeeded;
    }

    private final g0 l(g0 g0Var, d0 d0Var, kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var, int i) {
        Variance varianceJ;
        Variance variance;
        Variance variance2;
        b.a(i, d0Var.b());
        if (g0Var.b()) {
            if (i0Var == null) {
                Intrinsics.throwNpe();
            }
            g0 g0VarMakeStarProjection = TypeUtils.makeStarProjection(i0Var);
            Intrinsics.checkExpressionValueIsNotNull(g0VarMakeStarProjection, "TypeUtils.makeStarProjec…ypeParameterDescriptor!!)");
            return g0VarMakeStarProjection;
        }
        u type = g0Var.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "underlyingProjection.type");
        g0 g0VarC = d0Var.c(type.H0());
        if (g0VarC == null) {
            return j(g0Var, d0Var, i);
        }
        if (g0VarC.b()) {
            if (i0Var == null) {
                Intrinsics.throwNpe();
            }
            g0 g0VarMakeStarProjection2 = TypeUtils.makeStarProjection(i0Var);
            Intrinsics.checkExpressionValueIsNotNull(g0VarMakeStarProjection2, "TypeUtils.makeStarProjec…ypeParameterDescriptor!!)");
            return g0VarMakeStarProjection2;
        }
        m0 m0VarK0 = g0VarC.getType().K0();
        Variance varianceC = g0VarC.c();
        Intrinsics.checkExpressionValueIsNotNull(varianceC, "argument.projectionKind");
        Variance varianceC2 = g0Var.c();
        Intrinsics.checkExpressionValueIsNotNull(varianceC2, "underlyingProjection.projectionKind");
        if (varianceC2 != varianceC && varianceC2 != (variance2 = Variance.INVARIANT)) {
            if (varianceC == variance2) {
                varianceC = varianceC2;
            } else {
                this.c.d(d0Var.b(), i0Var, m0VarK0);
            }
        }
        if (i0Var == null || (varianceJ = i0Var.j()) == null) {
            varianceJ = Variance.INVARIANT;
        }
        Intrinsics.checkExpressionValueIsNotNull(varianceJ, "typeParameterDescriptor?…nce ?: Variance.INVARIANT");
        if (varianceJ != varianceC && varianceJ != (variance = Variance.INVARIANT)) {
            if (varianceC == variance) {
                varianceC = variance;
            } else {
                this.c.d(d0Var.b(), i0Var, m0VarK0);
            }
        }
        a(type.getAnnotations(), m0VarK0.getAnnotations());
        return new i0(varianceC, m0VarK0 instanceof n ? c((n) m0VarK0, type.getAnnotations()) : f(TypeSubstitutionKt.asSimpleType(m0VarK0), type));
    }

    private final y m(y yVar, d0 d0Var, int i) {
        f0 f0VarH0 = yVar.H0();
        List<g0> listG0 = yVar.G0();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG0, 10));
        int i2 = 0;
        for (Object obj : listG0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            g0 g0Var = (g0) obj;
            g0 g0VarL = l(g0Var, d0Var, f0VarH0.getParameters().get(i2), i + 1);
            if (!g0VarL.b()) {
                g0VarL = new i0(g0VarL.c(), TypeUtils.makeNullableIfNeeded(g0VarL.getType(), g0Var.getType().I0()));
            }
            arrayList.add(g0VarL);
            i2 = i3;
        }
        return TypeSubstitutionKt.replace$default(yVar, (List) arrayList, (Annotations) null, 2, (Object) null);
    }

    public final y i(d0 typeAliasExpansion, Annotations annotations) {
        Intrinsics.checkParameterIsNotNull(typeAliasExpansion, "typeAliasExpansion");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        return k(typeAliasExpansion, annotations, false, 0, true);
    }
}
