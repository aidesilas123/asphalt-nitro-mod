package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes5.dex */
public class TypeUtils {
    public static final y a = ErrorUtils.createErrorTypeWithCustomDebugName("DONT_CARE");
    public static final y b = ErrorUtils.createErrorType("Cannot be inferred");
    public static final y c = new a("NO_EXPECTED_TYPE");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final y f9841d = new a("UNIT_EXPECTED_TYPE");

    public static class a extends l {
        private final String b;

        public a(String str) {
            this.b = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private static /* synthetic */ void T0(int r9) {
            /*
                r0 = 4
                r1 = 1
                if (r9 == r1) goto L9
                if (r9 == r0) goto L9
                java.lang.String r2 = "Argument for @NotNull parameter '%s' of %s.%s must not be null"
                goto Lb
            L9:
                java.lang.String r2 = "@NotNull method %s.%s must not return null"
            Lb:
                r3 = 3
                r4 = 2
                if (r9 == r1) goto L13
                if (r9 == r0) goto L13
                r5 = 3
                goto L14
            L13:
                r5 = 2
            L14:
                java.lang.Object[] r5 = new java.lang.Object[r5]
                java.lang.String r6 = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType"
                r7 = 0
                if (r9 == r1) goto L30
                if (r9 == r4) goto L2b
                if (r9 == r3) goto L26
                if (r9 == r0) goto L30
                java.lang.String r8 = "newAnnotations"
                r5[r7] = r8
                goto L32
            L26:
                java.lang.String r8 = "kotlinTypeRefiner"
                r5[r7] = r8
                goto L32
            L2b:
                java.lang.String r8 = "delegate"
                r5[r7] = r8
                goto L32
            L30:
                r5[r7] = r6
            L32:
                java.lang.String r7 = "refine"
                if (r9 == r1) goto L3e
                if (r9 == r0) goto L3b
                r5[r1] = r6
                goto L42
            L3b:
                r5[r1] = r7
                goto L42
            L3e:
                java.lang.String r6 = "toString"
                r5[r1] = r6
            L42:
                if (r9 == r1) goto L56
                if (r9 == r4) goto L52
                if (r9 == r3) goto L4f
                if (r9 == r0) goto L56
                java.lang.String r3 = "replaceAnnotations"
                r5[r4] = r3
                goto L56
            L4f:
                r5[r4] = r7
                goto L56
            L52:
                java.lang.String r3 = "replaceDelegate"
                r5[r4] = r3
            L56:
                java.lang.String r2 = java.lang.String.format(r2, r5)
                if (r9 == r1) goto L64
                if (r9 == r0) goto L64
                java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
                r9.<init>(r2)
                goto L69
            L64:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                r9.<init>(r2)
            L69:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeUtils.a.T0(int):void");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m0
        /* JADX INFO: renamed from: O0, reason: merged with bridge method [inline-methods] */
        public y L0(boolean z) {
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m0
        /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
        public y N0(Annotations annotations) {
            if (annotations == null) {
                T0(0);
            }
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.l
        protected y Q0() {
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.l
        public l S0(y yVar) {
            if (yVar == null) {
                T0(2);
            }
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.l
        /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public a R0(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            if (dVar == null) {
                T0(3);
            }
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.y
        public String toString() {
            String str = this.b;
            if (str == null) {
                T0(1);
            }
            return str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0120  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void a(int r24) {
        /*
            Method dump skipped, instruction units count: 776
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeUtils.a(int):void");
    }

    public static boolean acceptsNullable(u uVar) {
        if (uVar == null) {
            a(28);
        }
        if (uVar.I0()) {
            return true;
        }
        return FlexibleTypesKt.isFlexible(uVar) && acceptsNullable(FlexibleTypesKt.asFlexibleType(uVar).Q0());
    }

    private static boolean b(u uVar, Function1<m0, Boolean> function1, HashSet<u> hashSet) {
        if (function1 == null) {
            a(44);
        }
        if (uVar == null || hashSet.contains(uVar)) {
            return false;
        }
        hashSet.add(uVar);
        m0 m0VarK0 = uVar.K0();
        if (function1.invoke(m0VarK0).booleanValue()) {
            return true;
        }
        p pVar = m0VarK0 instanceof p ? (p) m0VarK0 : null;
        if (pVar != null && (b(pVar.P0(), function1, hashSet) || b(pVar.Q0(), function1, hashSet))) {
            return true;
        }
        if ((m0VarK0 instanceof j) && b(((j) m0VarK0).T0(), function1, hashSet)) {
            return true;
        }
        f0 f0VarH0 = uVar.H0();
        if (f0VarH0 instanceof t) {
            Iterator<u> it = ((t) f0VarH0).h().iterator();
            while (it.hasNext()) {
                if (b(it.next(), function1, hashSet)) {
                    return true;
                }
            }
            return false;
        }
        for (g0 g0Var : uVar.G0()) {
            if (!g0Var.b()) {
                if (b(g0Var.getType(), function1, hashSet)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean contains(u uVar, Function1<m0, Boolean> function1) {
        if (function1 == null) {
            a(43);
        }
        return b(uVar, function1, new HashSet());
    }

    public static u createSubstitutedSupertype(u uVar, u uVar2, TypeSubstitutor typeSubstitutor) {
        if (uVar == null) {
            a(20);
        }
        if (uVar2 == null) {
            a(21);
        }
        if (typeSubstitutor == null) {
            a(22);
        }
        u uVarI = typeSubstitutor.i(uVar2, Variance.INVARIANT);
        if (uVarI != null) {
            return makeNullableIfNeeded(uVarI, uVar.I0());
        }
        return null;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d getClassDescriptor(u uVar) {
        if (uVar == null) {
            a(30);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = uVar.H0().q();
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
        }
        return null;
    }

    public static List<g0> getDefaultTypeProjections(List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list) {
        if (list == null) {
            a(16);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.i0> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new i0(it.next().n()));
        }
        List<g0> list2 = CollectionsKt___CollectionsKt.toList(arrayList);
        if (list2 == null) {
            a(17);
        }
        return list2;
    }

    public static List<u> getImmediateSupertypes(u uVar) {
        if (uVar == null) {
            a(18);
        }
        TypeSubstitutor typeSubstitutorCreate = TypeSubstitutor.create(uVar);
        Collection<u> collectionH = uVar.H0().h();
        ArrayList arrayList = new ArrayList(collectionH.size());
        Iterator<u> it = collectionH.iterator();
        while (it.hasNext()) {
            u uVarCreateSubstitutedSupertype = createSubstitutedSupertype(uVar, it.next(), typeSubstitutorCreate);
            if (uVarCreateSubstitutedSupertype != null) {
                arrayList.add(uVarCreateSubstitutedSupertype);
            }
        }
        return arrayList;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.i0 getTypeParameterDescriptorOrNull(u uVar) {
        if (uVar == null) {
            a(62);
        }
        if (uVar.H0().q() instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.i0) uVar.H0().q();
        }
        return null;
    }

    public static boolean hasNullableSuperType(u uVar) {
        if (uVar == null) {
            a(29);
        }
        if (uVar.H0().q() instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return false;
        }
        Iterator<u> it = getImmediateSupertypes(uVar).iterator();
        while (it.hasNext()) {
            if (isNullableType(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isDontCarePlaceholder(u uVar) {
        return uVar != null && uVar.H0() == a.H0();
    }

    public static boolean isNullableType(u uVar) {
        if (uVar == null) {
            a(27);
        }
        if (uVar.I0()) {
            return true;
        }
        if (FlexibleTypesKt.isFlexible(uVar) && isNullableType(FlexibleTypesKt.asFlexibleType(uVar).Q0())) {
            return true;
        }
        if (isTypeParameter(uVar)) {
            return hasNullableSuperType(uVar);
        }
        f0 f0VarH0 = uVar.H0();
        if (!(f0VarH0 instanceof t)) {
            return false;
        }
        Iterator<u> it = f0VarH0.h().iterator();
        while (it.hasNext()) {
            if (isNullableType(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isTypeParameter(u uVar) {
        if (uVar == null) {
            a(59);
        }
        if (getTypeParameterDescriptorOrNull(uVar) != null) {
            return true;
        }
        uVar.H0();
        return false;
    }

    public static u makeNotNullable(u uVar) {
        if (uVar == null) {
            a(2);
        }
        return makeNullableAsSpecified(uVar, false);
    }

    public static u makeNullable(u uVar) {
        if (uVar == null) {
            a(1);
        }
        return makeNullableAsSpecified(uVar, true);
    }

    public static u makeNullableAsSpecified(u uVar, boolean z) {
        if (uVar == null) {
            a(3);
        }
        m0 m0VarL0 = uVar.K0().L0(z);
        if (m0VarL0 == null) {
            a(4);
        }
        return m0VarL0;
    }

    public static u makeNullableIfNeeded(u uVar, boolean z) {
        if (uVar == null) {
            a(8);
        }
        if (z) {
            return makeNullable(uVar);
        }
        if (uVar == null) {
            a(9);
        }
        return uVar;
    }

    public static y makeNullableIfNeeded(y yVar, boolean z) {
        if (yVar == null) {
            a(5);
        }
        if (!z) {
            if (yVar == null) {
                a(7);
            }
            return yVar;
        }
        y yVarL0 = yVar.L0(true);
        if (yVarL0 == null) {
            a(6);
        }
        return yVarL0;
    }

    public static g0 makeStarProjection(kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var) {
        if (i0Var == null) {
            a(45);
        }
        return new StarProjectionImpl(i0Var);
    }

    public static y makeUnsubstitutedType(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, MemberScope memberScope, Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> function1) {
        if (!ErrorUtils.isError(fVar)) {
            return makeUnsubstitutedType(fVar.i(), memberScope, function1);
        }
        y yVarCreateErrorType = ErrorUtils.createErrorType("Unsubstituted type for " + fVar);
        if (yVarCreateErrorType == null) {
            a(11);
        }
        return yVarCreateErrorType;
    }

    public static y makeUnsubstitutedType(f0 f0Var, MemberScope memberScope, Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> function1) {
        if (f0Var == null) {
            a(12);
        }
        if (memberScope == null) {
            a(13);
        }
        if (function1 == null) {
            a(14);
        }
        y yVarSimpleTypeWithNonTrivialMemberScope = KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(Annotations.e0.b(), f0Var, getDefaultTypeProjections(f0Var.getParameters()), false, memberScope, function1);
        if (yVarSimpleTypeWithNonTrivialMemberScope == null) {
            a(15);
        }
        return yVarSimpleTypeWithNonTrivialMemberScope;
    }

    public static boolean noExpectedType(u uVar) {
        if (uVar == null) {
            a(0);
        }
        return uVar == c || uVar == f9841d;
    }
}
