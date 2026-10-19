package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.load.java.n;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.TypeWithEnhancementKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: typeEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeEnhancementKt {
    private static final b a;
    private static final b b;

    static {
        FqName fqName = n.k;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION");
        a = new b(fqName);
        FqName fqName2 = n.l;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "JvmAnnotationNames.ENHANCED_MUTABILITY_ANNOTATION");
        b = new b(fqName2);
    }

    private static final Annotations a(List<? extends Annotations> list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? new kotlin.reflect.jvm.internal.impl.descriptors.annotations.e((List<? extends Annotations>) CollectionsKt___CollectionsKt.toList(list)) : (Annotations) p.single((List) list);
        }
        throw new IllegalStateException("At least one Annotations object expected".toString());
    }

    private static final g b(y yVar, Function1<? super Integer, JavaTypeQualifiers> function1, int i, TypeComponentPosition typeComponentPosition) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ;
        g0 g0VarCreateProjection;
        if ((shouldEnhance(typeComponentPosition) || !yVar.G0().isEmpty()) && (fVarQ = yVar.H0().q()) != null) {
            Intrinsics.checkExpressionValueIsNotNull(fVarQ, "constructor.declarationD…pleResult(this, 1, false)");
            JavaTypeQualifiers javaTypeQualifiersInvoke = function1.invoke(Integer.valueOf(i));
            c<kotlin.reflect.jvm.internal.impl.descriptors.f> cVarC = c(fVarQ, javaTypeQualifiersInvoke, typeComponentPosition);
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarA = cVarC.a();
            Annotations annotationsB = cVarC.b();
            f0 f0VarI = fVarA.i();
            Intrinsics.checkExpressionValueIsNotNull(f0VarI, "enhancedClassifier.typeConstructor");
            int iA = i + 1;
            boolean z = annotationsB != null;
            List<g0> listG0 = yVar.G0();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listG0, 10));
            int i2 = 0;
            for (Object obj : listG0) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    CollectionsKt__CollectionsKt.throwIndexOverflow();
                }
                g0 g0Var = (g0) obj;
                if (g0Var.b()) {
                    iA++;
                    f0 f0VarI2 = fVarA.i();
                    Intrinsics.checkExpressionValueIsNotNull(f0VarI2, "enhancedClassifier.typeConstructor");
                    g0VarCreateProjection = TypeUtils.makeStarProjection(f0VarI2.getParameters().get(i2));
                } else {
                    f fVarD = d(g0Var.getType().K0(), function1, iA);
                    z = z || fVarD.d();
                    iA += fVarD.a();
                    u uVarB = fVarD.b();
                    Variance varianceC = g0Var.c();
                    Intrinsics.checkExpressionValueIsNotNull(varianceC, "arg.projectionKind");
                    g0VarCreateProjection = TypeUtilsKt.createProjection(uVarB, varianceC, f0VarI.getParameters().get(i2));
                }
                arrayList.add(g0VarCreateProjection);
                i2 = i3;
            }
            c<Boolean> cVarG = g(yVar, javaTypeQualifiersInvoke, typeComponentPosition);
            boolean zBooleanValue = cVarG.a().booleanValue();
            Annotations annotationsB2 = cVarG.b();
            int i4 = iA - i;
            if (!(z || annotationsB2 != null)) {
                return new g(yVar, i4, false);
            }
            y yVarSimpleType$default = KotlinTypeFactory.simpleType$default(a(CollectionsKt__CollectionsKt.listOfNotNull((Object[]) new Annotations[]{yVar.getAnnotations(), annotationsB, annotationsB2})), f0VarI, arrayList, zBooleanValue, null, 16, null);
            m0 m0VarWrapEnhancement = yVarSimpleType$default;
            if (javaTypeQualifiersInvoke.c()) {
                m0VarWrapEnhancement = new d(yVarSimpleType$default);
            }
            if (annotationsB2 != null && javaTypeQualifiersInvoke.d()) {
                m0VarWrapEnhancement = TypeWithEnhancementKt.wrapEnhancement(yVar, m0VarWrapEnhancement);
            }
            if (m0VarWrapEnhancement != null) {
                return new g((y) m0VarWrapEnhancement, i4, true);
            }
            throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        }
        return new g(yVar, 1, false);
    }

    private static final c<kotlin.reflect.jvm.internal.impl.descriptors.f> c(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, JavaTypeQualifiers javaTypeQualifiers, TypeComponentPosition typeComponentPosition) {
        if (shouldEnhance(typeComponentPosition) && (fVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
            MutabilityQualifier mutabilityQualifierA = javaTypeQualifiers.a();
            if (mutabilityQualifierA != null) {
                int i = j.a[mutabilityQualifierA.ordinal()];
                if (i != 1) {
                    if (i == 2 && typeComponentPosition == TypeComponentPosition.FLEXIBLE_UPPER) {
                        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVar;
                        if (javaToKotlinClassMap.q(dVar)) {
                            return e(javaToKotlinClassMap.i(dVar));
                        }
                    }
                } else if (typeComponentPosition == TypeComponentPosition.FLEXIBLE_LOWER) {
                    kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVar;
                    if (javaToKotlinClassMap.n(dVar2)) {
                        return e(javaToKotlinClassMap.h(dVar2));
                    }
                }
            }
            return h(fVar);
        }
        return h(fVar);
    }

    private static final f d(m0 m0Var, Function1<? super Integer, JavaTypeQualifiers> function1, int i) {
        if (KotlinTypeKt.isError(m0Var)) {
            return new f(m0Var, 1, false);
        }
        if (!(m0Var instanceof kotlin.reflect.jvm.internal.impl.types.p)) {
            if (m0Var instanceof y) {
                return b((y) m0Var, function1, i, TypeComponentPosition.INFLEXIBLE);
            }
            throw new NoWhenBranchMatchedException();
        }
        kotlin.reflect.jvm.internal.impl.types.p pVar = (kotlin.reflect.jvm.internal.impl.types.p) m0Var;
        g gVarB = b(pVar.P0(), function1, i, TypeComponentPosition.FLEXIBLE_LOWER);
        g gVarB2 = b(pVar.Q0(), function1, i, TypeComponentPosition.FLEXIBLE_UPPER);
        gVarB.a();
        gVarB2.a();
        boolean z = gVarB.d() || gVarB2.d();
        u enhancement = TypeWithEnhancementKt.getEnhancement(gVarB.b());
        if (enhancement == null) {
            enhancement = TypeWithEnhancementKt.getEnhancement(gVarB2.b());
        }
        if (z) {
            m0Var = TypeWithEnhancementKt.wrapEnhancement(m0Var instanceof kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b ? new kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b(gVarB.b(), gVarB2.b()) : KotlinTypeFactory.flexibleType(gVarB.b(), gVarB2.b()), enhancement);
        }
        return new f(m0Var, gVarB.a(), z);
    }

    private static final <T> c<T> e(T t) {
        return new c<>(t, b);
    }

    public static final u enhance(u enhance, Function1<? super Integer, JavaTypeQualifiers> qualifiers) {
        Intrinsics.checkParameterIsNotNull(enhance, "$this$enhance");
        Intrinsics.checkParameterIsNotNull(qualifiers, "qualifiers");
        return d(enhance.K0(), qualifiers, 0).c();
    }

    private static final <T> c<T> f(T t) {
        return new c<>(t, a);
    }

    private static final c<Boolean> g(u uVar, JavaTypeQualifiers javaTypeQualifiers, TypeComponentPosition typeComponentPosition) {
        if (!shouldEnhance(typeComponentPosition)) {
            return h(Boolean.valueOf(uVar.I0()));
        }
        NullabilityQualifier nullabilityQualifierB = javaTypeQualifiers.b();
        if (nullabilityQualifierB != null) {
            int i = j.b[nullabilityQualifierB.ordinal()];
            if (i == 1) {
                return f(Boolean.TRUE);
            }
            if (i == 2) {
                return f(Boolean.FALSE);
            }
        }
        return h(Boolean.valueOf(uVar.I0()));
    }

    private static final <T> c<T> h(T t) {
        return new c<>(t, null);
    }

    public static final boolean hasEnhancedNullability(TypeSystemCommonBackendContext hasEnhancedNullability, kotlin.reflect.jvm.internal.impl.types.model.f type) {
        Intrinsics.checkParameterIsNotNull(hasEnhancedNullability, "$this$hasEnhancedNullability");
        Intrinsics.checkParameterIsNotNull(type, "type");
        FqName fqName = n.k;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "JvmAnnotationNames.ENHANCED_NULLABILITY_ANNOTATION");
        return hasEnhancedNullability.V(type, fqName);
    }

    public static final boolean hasEnhancedNullability(u hasEnhancedNullability) {
        Intrinsics.checkParameterIsNotNull(hasEnhancedNullability, "$this$hasEnhancedNullability");
        return hasEnhancedNullability(kotlin.reflect.jvm.internal.impl.types.checker.j.a, hasEnhancedNullability);
    }

    public static final boolean shouldEnhance(TypeComponentPosition shouldEnhance) {
        Intrinsics.checkParameterIsNotNull(shouldEnhance, "$this$shouldEnhance");
        return shouldEnhance != TypeComponentPosition.INFLEXIBLE;
    }
}
