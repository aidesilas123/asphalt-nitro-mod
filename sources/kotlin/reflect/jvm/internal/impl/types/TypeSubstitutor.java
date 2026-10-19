package kotlin.reflect.jvm.internal.impl.types;

import com.json.o2;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;
import kotlin.reflect.jvm.internal.impl.utils.ExceptionUtilsKt;

/* JADX INFO: loaded from: classes5.dex */
public class TypeSubstitutor {
    public static final TypeSubstitutor a = create(j0.a);
    private final j0 b;

    private enum VarianceConflictType {
        NO_CONFLICT,
        IN_IN_OUT_POSITION,
        OUT_IN_IN_POSITION
    }

    static class a implements Function1<FqName, Boolean> {
        a() {
        }

        private static /* synthetic */ void a(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", "name", "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1", "invoke"));
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(FqName fqName) {
            if (fqName == null) {
                a(0);
            }
            return Boolean.valueOf(!fqName.equals(KotlinBuiltIns.h.J));
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[VarianceConflictType.values().length];
            a = iArr;
            try {
                iArr[VarianceConflictType.OUT_IN_IN_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[VarianceConflictType.IN_IN_OUT_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[VarianceConflictType.NO_CONFLICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static final class c extends Exception {
        public c(String str) {
            super(str);
        }
    }

    protected TypeSubstitutor(j0 j0Var) {
        if (j0Var == null) {
            a(5);
        }
        this.b = j0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0017 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002b A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static /* synthetic */ void a(int r12) {
        /*
            Method dump skipped, instruction units count: 504
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor.a(int):void");
    }

    private static void b(int i, g0 g0Var, j0 j0Var) {
        if (i <= 100) {
            return;
        }
        throw new IllegalStateException("Recursion too deep. Most likely infinite loop while substituting " + h(g0Var) + "; substitution: " + h(j0Var));
    }

    private static VarianceConflictType c(Variance variance, Variance variance2) {
        Variance variance3 = Variance.IN_VARIANCE;
        return (variance == variance3 && variance2 == Variance.OUT_VARIANCE) ? VarianceConflictType.OUT_IN_IN_POSITION : (variance == Variance.OUT_VARIANCE && variance2 == variance3) ? VarianceConflictType.IN_IN_OUT_POSITION : VarianceConflictType.NO_CONFLICT;
    }

    public static Variance combine(Variance variance, Variance variance2) {
        if (variance == null) {
            a(28);
        }
        if (variance2 == null) {
            a(29);
        }
        Variance variance3 = Variance.INVARIANT;
        if (variance == variance3) {
            if (variance2 == null) {
                a(30);
            }
            return variance2;
        }
        if (variance2 == variance3) {
            if (variance == null) {
                a(31);
            }
            return variance;
        }
        if (variance == variance2) {
            if (variance2 == null) {
                a(32);
            }
            return variance2;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + variance + "' and projection kind '" + variance2 + "' cannot be combined");
    }

    public static Variance combine(Variance variance, g0 g0Var) {
        if (variance == null) {
            a(25);
        }
        if (g0Var == null) {
            a(26);
        }
        if (!g0Var.b()) {
            return combine(variance, g0Var.c());
        }
        Variance variance2 = Variance.OUT_VARIANCE;
        if (variance2 == null) {
            a(27);
        }
        return variance2;
    }

    public static TypeSubstitutor create(j0 j0Var) {
        if (j0Var == null) {
            a(0);
        }
        return new TypeSubstitutor(j0Var);
    }

    public static TypeSubstitutor create(u uVar) {
        if (uVar == null) {
            a(4);
        }
        return create(TypeConstructorSubstitution.create(uVar.H0(), uVar.G0()));
    }

    public static TypeSubstitutor createChainedSubstitutor(j0 j0Var, j0 j0Var2) {
        if (j0Var == null) {
            a(1);
        }
        if (j0Var2 == null) {
            a(2);
        }
        return create(DisjointKeysUnionTypeSubstitution.create(j0Var, j0Var2));
    }

    private static Annotations d(Annotations annotations) {
        if (annotations == null) {
            a(23);
        }
        return !annotations.N(KotlinBuiltIns.h.J) ? annotations : new kotlin.reflect.jvm.internal.impl.descriptors.annotations.f(annotations, new a());
    }

    private static String h(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (ExceptionUtilsKt.isProcessCanceledException(th)) {
                throw th;
            }
            return "[Exception while computing toString(): " + th + o2.i.f6491e;
        }
    }

    private g0 k(g0 g0Var, int i) throws c {
        u type = g0Var.getType();
        Variance varianceC = g0Var.c();
        if (type.H0().c() instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0) {
            return g0Var;
        }
        y abbreviation = SpecialTypesKt.getAbbreviation(type);
        u uVarI = abbreviation != null ? i(abbreviation, Variance.INVARIANT) : null;
        u uVarReplace = TypeSubstitutionKt.replace(type, l(type.H0().getParameters(), type.G0(), i), this.b.d(type.getAnnotations()));
        if ((uVarReplace instanceof y) && (uVarI instanceof y)) {
            uVarReplace = SpecialTypesKt.withAbbreviation((y) uVarReplace, (y) uVarI);
        }
        return new i0(varianceC, uVarReplace);
    }

    private List<g0> l(List<kotlin.reflect.jvm.internal.impl.descriptors.i0> list, List<g0> list2, int i) throws c {
        ArrayList arrayList = new ArrayList(list.size());
        boolean z = false;
        for (int i2 = 0; i2 < list.size(); i2++) {
            kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var = list.get(i2);
            g0 g0Var = list2.get(i2);
            g0 g0VarN = n(g0Var, i + 1);
            int i3 = b.a[c(i0Var.j(), g0VarN.c()).ordinal()];
            if (i3 == 1 || i3 == 2) {
                g0VarN = TypeUtils.makeStarProjection(i0Var);
            } else if (i3 == 3) {
                Variance varianceJ = i0Var.j();
                Variance variance = Variance.INVARIANT;
                if (varianceJ != variance && !g0VarN.b()) {
                    g0VarN = new i0(variance, g0VarN.getType());
                }
            }
            if (g0VarN != g0Var) {
                z = true;
            }
            arrayList.add(g0VarN);
        }
        return !z ? list2 : arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private g0 n(g0 g0Var, int i) throws c {
        if (g0Var == null) {
            a(16);
        }
        b(i, g0Var, this.b);
        if (g0Var.b()) {
            return g0Var;
        }
        u type = g0Var.getType();
        if (type instanceof k0) {
            k0 k0Var = (k0) type;
            m0 m0VarZ0 = k0Var.z0();
            u uVarZ = k0Var.Z();
            g0 g0VarN = n(new i0(g0Var.c(), m0VarZ0), i + 1);
            return new i0(g0VarN.c(), TypeWithEnhancementKt.wrapEnhancement(g0VarN.getType().K0(), i(uVarZ, g0Var.c())));
        }
        if (!DynamicTypesKt.isDynamic(type) && !(type.K0() instanceof x)) {
            g0 g0VarE = this.b.e(type);
            Variance varianceC = g0Var.c();
            if (g0VarE == null && FlexibleTypesKt.isFlexible(type) && !TypeCapabilitiesKt.isCustomTypeVariable(type)) {
                p pVarAsFlexibleType = FlexibleTypesKt.asFlexibleType(type);
                int i2 = i + 1;
                g0 g0VarN2 = n(new i0(varianceC, pVarAsFlexibleType.P0()), i2);
                g0 g0VarN3 = n(new i0(varianceC, pVarAsFlexibleType.Q0()), i2);
                return (g0VarN2.getType() == pVarAsFlexibleType.P0() && g0VarN3.getType() == pVarAsFlexibleType.Q0()) ? g0Var : new i0(g0VarN2.c(), KotlinTypeFactory.flexibleType(TypeSubstitutionKt.asSimpleType(g0VarN2.getType()), TypeSubstitutionKt.asSimpleType(g0VarN3.getType())));
            }
            if (!KotlinBuiltIns.isNothing(type) && !KotlinTypeKt.isError(type)) {
                if (g0VarE != null) {
                    VarianceConflictType varianceConflictTypeC = c(varianceC, g0VarE.c());
                    if (!CapturedTypeConstructorKt.isCaptured(type)) {
                        int i3 = b.a[varianceConflictTypeC.ordinal()];
                        if (i3 == 1) {
                            throw new c("Out-projection in in-position");
                        }
                        if (i3 == 2) {
                            return new i0(Variance.OUT_VARIANCE, type.H0().k().I());
                        }
                    }
                    i customTypeVariable = TypeCapabilitiesKt.getCustomTypeVariable(type);
                    if (g0VarE.b()) {
                        return g0VarE;
                    }
                    u uVarB0 = customTypeVariable != null ? customTypeVariable.b0(g0VarE.getType()) : TypeUtils.makeNullableIfNeeded(g0VarE.getType(), type.I0());
                    if (!type.getAnnotations().isEmpty()) {
                        uVarB0 = TypeUtilsKt.replaceAnnotations(uVarB0, new kotlin.reflect.jvm.internal.impl.descriptors.annotations.e(uVarB0.getAnnotations(), d(this.b.d(type.getAnnotations()))));
                    }
                    if (varianceConflictTypeC == VarianceConflictType.NO_CONFLICT) {
                        varianceC = combine(varianceC, g0VarE.c());
                    }
                    return new i0(varianceC, uVarB0);
                }
                g0Var = k(g0Var, i);
                if (g0Var == null) {
                    a(22);
                }
            }
        }
        return g0Var;
    }

    public j0 e() {
        j0 j0Var = this.b;
        if (j0Var == null) {
            a(6);
        }
        return j0Var;
    }

    public boolean f() {
        return this.b.f();
    }

    public u g(u uVar, Variance variance) {
        if (uVar == null) {
            a(7);
        }
        if (variance == null) {
            a(8);
        }
        if (f()) {
            if (uVar == null) {
                a(9);
            }
            return uVar;
        }
        try {
            u type = n(new i0(variance, uVar), 0).getType();
            if (type == null) {
                a(10);
            }
            return type;
        } catch (c e2) {
            y yVarCreateErrorType = ErrorUtils.createErrorType(e2.getMessage());
            if (yVarCreateErrorType == null) {
                a(11);
            }
            return yVarCreateErrorType;
        }
    }

    public u i(u uVar, Variance variance) {
        if (uVar == null) {
            a(12);
        }
        if (variance == null) {
            a(13);
        }
        g0 g0VarJ = j(new i0(variance, e().g(uVar, variance)));
        if (g0VarJ == null) {
            return null;
        }
        return g0VarJ.getType();
    }

    public g0 j(g0 g0Var) {
        if (g0Var == null) {
            a(14);
        }
        g0 g0VarM = m(g0Var);
        return (this.b.a() || this.b.b()) ? CapturedTypeApproximationKt.approximateCapturedTypesIfNecessary(g0VarM, this.b.b()) : g0VarM;
    }

    public g0 m(g0 g0Var) {
        if (g0Var == null) {
            a(15);
        }
        if (f()) {
            return g0Var;
        }
        try {
            return n(g0Var, 0);
        } catch (c unused) {
            return null;
        }
    }
}
