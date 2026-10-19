package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutionKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.i0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: CapturedTypeApproximation.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CapturedTypeApproximationKt {

    /* JADX INFO: compiled from: CapturedTypeApproximation.kt */
    static final class a extends Lambda implements Function1<u, u> {
        final /* synthetic */ u a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(u uVar) {
            super(1);
            this.a = uVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final u invoke(u makeNullableIfNeeded) {
            Intrinsics.checkParameterIsNotNull(makeNullableIfNeeded, "$this$makeNullableIfNeeded");
            u uVarMakeNullableIfNeeded = TypeUtils.makeNullableIfNeeded(makeNullableIfNeeded, this.a.I0());
            Intrinsics.checkExpressionValueIsNotNull(uVarMakeNullableIfNeeded, "TypeUtils.makeNullableIf…s, type.isMarkedNullable)");
            return uVarMakeNullableIfNeeded;
        }
    }

    /* JADX INFO: compiled from: CapturedTypeApproximation.kt */
    static final class b extends Lambda implements Function1<m0, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final boolean a(m0 it) {
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            return CapturedTypeConstructorKt.isCaptured(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(m0 m0Var) {
            return Boolean.valueOf(a(m0Var));
        }
    }

    /* JADX INFO: compiled from: CapturedTypeApproximation.kt */
    public static final class c extends TypeConstructorSubstitution {
        c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution
        public g0 h(f0 key) {
            Intrinsics.checkParameterIsNotNull(key, "key");
            if (!(key instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b)) {
                key = null;
            }
            kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b bVar = (kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b) key;
            if (bVar != null) {
                return bVar.b().b() ? new i0(Variance.OUT_VARIANCE, bVar.b().getType()) : bVar.b();
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: CapturedTypeApproximation.kt */
    static final class d extends Lambda implements Function1<Variance, Variance> {
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.types.typesApproximation.c a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(kotlin.reflect.jvm.internal.impl.types.typesApproximation.c cVar) {
            super(1);
            this.a = cVar;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Variance invoke(Variance variance) {
            Intrinsics.checkParameterIsNotNull(variance, "variance");
            return variance == this.a.c().j() ? Variance.INVARIANT : variance;
        }
    }

    private static final kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<kotlin.reflect.jvm.internal.impl.types.typesApproximation.c> a(kotlin.reflect.jvm.internal.impl.types.typesApproximation.c cVar) {
        kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<u> aVarApproximateCapturedTypes = approximateCapturedTypes(cVar.a());
        u uVarA = aVarApproximateCapturedTypes.a();
        u uVarB = aVarApproximateCapturedTypes.b();
        kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<u> aVarApproximateCapturedTypes2 = approximateCapturedTypes(cVar.b());
        return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(new kotlin.reflect.jvm.internal.impl.types.typesApproximation.c(cVar.c(), uVarB, aVarApproximateCapturedTypes2.a()), new kotlin.reflect.jvm.internal.impl.types.typesApproximation.c(cVar.c(), uVarA, aVarApproximateCapturedTypes2.b()));
    }

    public static final kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<u> approximateCapturedTypes(u type) {
        Object objB;
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (FlexibleTypesKt.isFlexible(type)) {
            kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<u> aVarApproximateCapturedTypes = approximateCapturedTypes(FlexibleTypesKt.lowerIfFlexible(type));
            kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<u> aVarApproximateCapturedTypes2 = approximateCapturedTypes(FlexibleTypesKt.upperIfFlexible(type));
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(TypeWithEnhancementKt.inheritEnhancement(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(aVarApproximateCapturedTypes.c()), FlexibleTypesKt.upperIfFlexible(aVarApproximateCapturedTypes2.c())), type), TypeWithEnhancementKt.inheritEnhancement(KotlinTypeFactory.flexibleType(FlexibleTypesKt.lowerIfFlexible(aVarApproximateCapturedTypes.d()), FlexibleTypesKt.upperIfFlexible(aVarApproximateCapturedTypes2.d())), type));
        }
        f0 f0VarH0 = type.H0();
        boolean z = true;
        if (CapturedTypeConstructorKt.isCaptured(type)) {
            if (f0VarH0 == null) {
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.resolve.calls.inference.CapturedTypeConstructor");
            }
            g0 g0VarB = ((kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b) f0VarH0).b();
            a aVar = new a(type);
            u type2 = g0VarB.getType();
            Intrinsics.checkExpressionValueIsNotNull(type2, "typeProjection.type");
            u uVarInvoke = aVar.invoke(type2);
            int i = kotlin.reflect.jvm.internal.impl.types.typesApproximation.b.b[g0VarB.c().ordinal()];
            if (i == 1) {
                y yVarI = TypeUtilsKt.getBuiltIns(type).I();
                Intrinsics.checkExpressionValueIsNotNull(yVarI, "type.builtIns.nullableAnyType");
                return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(uVarInvoke, yVarI);
            }
            if (i == 2) {
                y yVarH = TypeUtilsKt.getBuiltIns(type).H();
                Intrinsics.checkExpressionValueIsNotNull(yVarH, "type.builtIns.nothingType");
                return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(aVar.invoke(yVarH), uVarInvoke);
            }
            throw new AssertionError("Only nontrivial projections should have been captured, not: " + g0VarB);
        }
        if (type.G0().isEmpty() || type.G0().size() != f0VarH0.getParameters().size()) {
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(type, type);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<g0> listG0 = type.G0();
        List<kotlin.reflect.jvm.internal.impl.descriptors.i0> parameters = f0VarH0.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "typeConstructor.parameters");
        for (Pair pair : CollectionsKt___CollectionsKt.zip(listG0, parameters)) {
            g0 g0Var = (g0) pair.c();
            kotlin.reflect.jvm.internal.impl.descriptors.i0 typeParameter = (kotlin.reflect.jvm.internal.impl.descriptors.i0) pair.d();
            Intrinsics.checkExpressionValueIsNotNull(typeParameter, "typeParameter");
            kotlin.reflect.jvm.internal.impl.types.typesApproximation.c cVarD = d(g0Var, typeParameter);
            if (g0Var.b()) {
                arrayList.add(cVarD);
                arrayList2.add(cVarD);
            } else {
                kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<kotlin.reflect.jvm.internal.impl.types.typesApproximation.c> aVarA = a(cVarD);
                kotlin.reflect.jvm.internal.impl.types.typesApproximation.c cVarA = aVarA.a();
                kotlin.reflect.jvm.internal.impl.types.typesApproximation.c cVarB = aVarA.b();
                arrayList.add(cVarA);
                arrayList2.add(cVarB);
            }
        }
        if (arrayList.isEmpty()) {
            z = false;
        } else {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (!((kotlin.reflect.jvm.internal.impl.types.typesApproximation.c) it.next()).d()) {
                    break;
                }
            }
            z = false;
        }
        if (z) {
            objB = TypeUtilsKt.getBuiltIns(type).H();
            Intrinsics.checkExpressionValueIsNotNull(objB, "type.builtIns.nothingType");
        } else {
            objB = b(type, arrayList);
        }
        return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(objB, b(type, arrayList2));
    }

    public static final g0 approximateCapturedTypesIfNecessary(g0 g0Var, boolean z) {
        if (g0Var == null) {
            return null;
        }
        if (g0Var.b()) {
            return g0Var;
        }
        u type = g0Var.getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "typeProjection.type");
        if (!TypeUtils.contains(type, b.a)) {
            return g0Var;
        }
        Variance varianceC = g0Var.c();
        Intrinsics.checkExpressionValueIsNotNull(varianceC, "typeProjection.projectionKind");
        return varianceC == Variance.OUT_VARIANCE ? new i0(varianceC, approximateCapturedTypes(type).d()) : z ? new i0(varianceC, approximateCapturedTypes(type).c()) : c(g0Var);
    }

    private static final u b(u uVar, List<kotlin.reflect.jvm.internal.impl.types.typesApproximation.c> list) {
        uVar.G0().size();
        list.size();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(e((kotlin.reflect.jvm.internal.impl.types.typesApproximation.c) it.next()));
        }
        return TypeSubstitutionKt.replace$default(uVar, arrayList, (Annotations) null, 2, (Object) null);
    }

    private static final g0 c(g0 g0Var) {
        TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(new c());
        Intrinsics.checkExpressionValueIsNotNull(typeSubstitutorCreate, "TypeSubstitutor.create(o…ojection\n        }\n    })");
        return typeSubstitutorCreate.m(g0Var);
    }

    private static final kotlin.reflect.jvm.internal.impl.types.typesApproximation.c d(g0 g0Var, kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var) {
        int i = kotlin.reflect.jvm.internal.impl.types.typesApproximation.b.a[TypeSubstitutor.combine(i0Var.j(), g0Var).ordinal()];
        if (i == 1) {
            u type = g0Var.getType();
            Intrinsics.checkExpressionValueIsNotNull(type, "type");
            u type2 = g0Var.getType();
            Intrinsics.checkExpressionValueIsNotNull(type2, "type");
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.c(i0Var, type, type2);
        }
        if (i == 2) {
            u type3 = g0Var.getType();
            Intrinsics.checkExpressionValueIsNotNull(type3, "type");
            y yVarI = DescriptorUtilsKt.getBuiltIns(i0Var).I();
            Intrinsics.checkExpressionValueIsNotNull(yVarI, "typeParameter.builtIns.nullableAnyType");
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.c(i0Var, type3, yVarI);
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        y yVarH = DescriptorUtilsKt.getBuiltIns(i0Var).H();
        Intrinsics.checkExpressionValueIsNotNull(yVarH, "typeParameter.builtIns.nothingType");
        u type4 = g0Var.getType();
        Intrinsics.checkExpressionValueIsNotNull(type4, "type");
        return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.c(i0Var, yVarH, type4);
    }

    private static final g0 e(kotlin.reflect.jvm.internal.impl.types.typesApproximation.c cVar) {
        cVar.d();
        d dVar = new d(cVar);
        if (Intrinsics.areEqual(cVar.a(), cVar.b())) {
            return new i0(cVar.a());
        }
        i0 i0Var = ((!KotlinBuiltIns.isNothing(cVar.a()) || cVar.c().j() == Variance.IN_VARIANCE) && KotlinBuiltIns.isNullableAny(cVar.b())) ? new i0(dVar.invoke(Variance.IN_VARIANCE), cVar.a()) : new i0(dVar.invoke(Variance.OUT_VARIANCE), cVar.b());
        return i0Var;
    }
}
