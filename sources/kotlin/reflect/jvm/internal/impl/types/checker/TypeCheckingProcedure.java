package kotlin.reflect.jvm.internal.impl.types.checker;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.FlexibleTypesKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeCapabilitiesKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: loaded from: classes5.dex */
public class TypeCheckingProcedure {
    private final n a;

    public enum EnrichedProjectionKind {
        IN,
        OUT,
        INV,
        STAR;

        private static /* synthetic */ void a(int i) {
            String str = (i == 1 || i == 2 || i == 3) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3) ? 2 : 3];
            if (i == 1 || i == 2 || i == 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind";
            } else {
                objArr[0] = "variance";
            }
            if (i == 1 || i == 2 || i == 3) {
                objArr[1] = "fromVariance";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure$EnrichedProjectionKind";
            }
            if (i != 1 && i != 2 && i != 3) {
                objArr[2] = "fromVariance";
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public static EnrichedProjectionKind fromVariance(Variance variance) {
            if (variance == null) {
                a(0);
            }
            int i = a.a[variance.ordinal()];
            if (i == 1) {
                EnrichedProjectionKind enrichedProjectionKind = INV;
                if (enrichedProjectionKind == null) {
                    a(1);
                }
                return enrichedProjectionKind;
            }
            if (i == 2) {
                EnrichedProjectionKind enrichedProjectionKind2 = IN;
                if (enrichedProjectionKind2 == null) {
                    a(2);
                }
                return enrichedProjectionKind2;
            }
            if (i != 3) {
                throw new IllegalStateException("Unknown variance");
            }
            EnrichedProjectionKind enrichedProjectionKind3 = OUT;
            if (enrichedProjectionKind3 == null) {
                a(3);
            }
            return enrichedProjectionKind3;
        }
    }

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Variance.values().length];
            a = iArr;
            try {
                iArr[Variance.INVARIANT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[Variance.IN_VARIANCE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[Variance.OUT_VARIANCE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public TypeCheckingProcedure(n nVar) {
        this.a = nVar;
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 7 || i == 10) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 7 || i == 10) ? 2 : 3];
        switch (i) {
            case 1:
            case 3:
            case 16:
            case 18:
                objArr[0] = "supertype";
                break;
            case 2:
            case 15:
            case 17:
            default:
                objArr[0] = "subtype";
                break;
            case 4:
                objArr[0] = "typeCheckingProcedureCallbacks";
                break;
            case 5:
            case 8:
            case 21:
                objArr[0] = MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD;
                break;
            case 6:
            case 9:
                objArr[0] = "argument";
                break;
            case 7:
            case 10:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure";
                break;
            case 11:
                objArr[0] = "type1";
                break;
            case 12:
                objArr[0] = "type2";
                break;
            case 13:
                objArr[0] = "typeParameter";
                break;
            case 14:
                objArr[0] = "typeArgument";
                break;
            case 19:
                objArr[0] = "subtypeArgumentProjection";
                break;
            case 20:
                objArr[0] = "supertypeArgumentProjection";
                break;
        }
        if (i == 7) {
            objArr[1] = "getOutType";
        } else if (i != 10) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/checker/TypeCheckingProcedure";
        } else {
            objArr[1] = "getInType";
        }
        switch (i) {
            case 5:
            case 6:
                objArr[2] = "getOutType";
                break;
            case 7:
            case 10:
                break;
            case 8:
            case 9:
                objArr[2] = "getInType";
                break;
            case 11:
            case 12:
                objArr[2] = "equalTypes";
                break;
            case 13:
            case 14:
                objArr[2] = "getEffectiveProjectionKind";
                break;
            case 15:
            case 16:
                objArr[2] = "isSubtypeOf";
                break;
            case 17:
            case 18:
                objArr[2] = "checkSubtypeForTheSameConstructor";
                break;
            case 19:
            case 20:
            case 21:
                objArr[2] = "capture";
                break;
            default:
                objArr[2] = "findCorrespondingSupertype";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 7 && i != 10) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    private boolean b(g0 g0Var, g0 g0Var2, i0 i0Var) {
        if (g0Var == null) {
            a(19);
        }
        if (g0Var2 == null) {
            a(20);
        }
        if (i0Var == null) {
            a(21);
        }
        Variance varianceJ = i0Var.j();
        Variance variance = Variance.INVARIANT;
        if (varianceJ == variance && g0Var.c() != variance && g0Var2.c() == variance) {
            return this.a.b(g0Var2.getType(), g0Var);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0090  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean c(kotlin.reflect.jvm.internal.impl.types.u r10, kotlin.reflect.jvm.internal.impl.types.u r11) {
        /*
            r9 = this;
            if (r10 != 0) goto L7
            r0 = 17
            a(r0)
        L7:
            if (r11 != 0) goto Le
            r0 = 18
            a(r0)
        Le:
            kotlin.reflect.jvm.internal.impl.types.f0 r0 = r10.H0()
            java.util.List r10 = r10.G0()
            java.util.List r11 = r11.G0()
            int r1 = r10.size()
            int r2 = r11.size()
            r3 = 0
            if (r1 == r2) goto L26
            return r3
        L26:
            java.util.List r0 = r0.getParameters()
            r1 = 0
        L2b:
            int r2 = r0.size()
            r4 = 1
            if (r1 >= r2) goto Lbe
            java.lang.Object r2 = r0.get(r1)
            kotlin.reflect.jvm.internal.impl.descriptors.i0 r2 = (kotlin.reflect.jvm.internal.impl.descriptors.i0) r2
            java.lang.Object r5 = r11.get(r1)
            kotlin.reflect.jvm.internal.impl.types.g0 r5 = (kotlin.reflect.jvm.internal.impl.types.g0) r5
            java.lang.Object r6 = r10.get(r1)
            kotlin.reflect.jvm.internal.impl.types.g0 r6 = (kotlin.reflect.jvm.internal.impl.types.g0) r6
            boolean r7 = r5.b()
            if (r7 == 0) goto L4c
            goto Lba
        L4c:
            boolean r7 = r9.b(r6, r5, r2)
            if (r7 == 0) goto L53
            goto Lba
        L53:
            kotlin.reflect.jvm.internal.impl.types.u r7 = r6.getType()
            boolean r7 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.isError(r7)
            if (r7 != 0) goto L69
            kotlin.reflect.jvm.internal.impl.types.u r7 = r5.getType()
            boolean r7 = kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt.isError(r7)
            if (r7 == 0) goto L68
            goto L69
        L68:
            r4 = 0
        L69:
            if (r4 != 0) goto L90
            kotlin.reflect.jvm.internal.impl.types.Variance r4 = r2.j()
            kotlin.reflect.jvm.internal.impl.types.Variance r7 = kotlin.reflect.jvm.internal.impl.types.Variance.INVARIANT
            if (r4 != r7) goto L90
            kotlin.reflect.jvm.internal.impl.types.Variance r4 = r6.c()
            if (r4 != r7) goto L90
            kotlin.reflect.jvm.internal.impl.types.Variance r4 = r5.c()
            if (r4 != r7) goto L90
            kotlin.reflect.jvm.internal.impl.types.checker.n r2 = r9.a
            kotlin.reflect.jvm.internal.impl.types.u r4 = r6.getType()
            kotlin.reflect.jvm.internal.impl.types.u r5 = r5.getType()
            boolean r2 = r2.e(r4, r5, r9)
            if (r2 != 0) goto Lba
            return r3
        L90:
            kotlin.reflect.jvm.internal.impl.types.u r4 = f(r2, r5)
            kotlin.reflect.jvm.internal.impl.types.u r7 = f(r2, r6)
            kotlin.reflect.jvm.internal.impl.types.checker.n r8 = r9.a
            boolean r4 = r8.a(r7, r4, r9)
            if (r4 != 0) goto La1
            return r3
        La1:
            kotlin.reflect.jvm.internal.impl.types.u r4 = e(r2, r5)
            kotlin.reflect.jvm.internal.impl.types.u r2 = e(r2, r6)
            kotlin.reflect.jvm.internal.impl.types.Variance r5 = r5.c()
            kotlin.reflect.jvm.internal.impl.types.Variance r6 = kotlin.reflect.jvm.internal.impl.types.Variance.OUT_VARIANCE
            if (r5 == r6) goto Lba
            kotlin.reflect.jvm.internal.impl.types.checker.n r5 = r9.a
            boolean r2 = r5.a(r4, r2, r9)
            if (r2 != 0) goto Lba
            return r3
        Lba:
            int r1 = r1 + 1
            goto L2b
        Lbe:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.types.checker.TypeCheckingProcedure.c(kotlin.reflect.jvm.internal.impl.types.u, kotlin.reflect.jvm.internal.impl.types.u):boolean");
    }

    private static u e(i0 i0Var, g0 g0Var) {
        if (i0Var == null) {
            a(8);
        }
        if (g0Var == null) {
            a(9);
        }
        Variance varianceC = g0Var.c();
        Variance variance = Variance.OUT_VARIANCE;
        u uVarH = varianceC == variance || i0Var.j() == variance ? DescriptorUtilsKt.getBuiltIns(i0Var).H() : g0Var.getType();
        if (uVarH == null) {
            a(10);
        }
        return uVarH;
    }

    private static u f(i0 i0Var, g0 g0Var) {
        if (i0Var == null) {
            a(5);
        }
        if (g0Var == null) {
            a(6);
        }
        Variance varianceC = g0Var.c();
        Variance variance = Variance.IN_VARIANCE;
        u uVarI = varianceC == variance || i0Var.j() == variance ? DescriptorUtilsKt.getBuiltIns(i0Var).I() : g0Var.getType();
        if (uVarI == null) {
            a(7);
        }
        return uVarI;
    }

    public static u findCorrespondingSupertype(u uVar, u uVar2) {
        if (uVar == null) {
            a(0);
        }
        if (uVar2 == null) {
            a(1);
        }
        return findCorrespondingSupertype(uVar, uVar2, new m());
    }

    public static u findCorrespondingSupertype(u uVar, u uVar2, n nVar) {
        if (uVar == null) {
            a(2);
        }
        if (uVar2 == null) {
            a(3);
        }
        if (nVar == null) {
            a(4);
        }
        return UtilsKt.findCorrespondingSupertype(uVar, uVar2, nVar);
    }

    public static EnrichedProjectionKind getEffectiveProjectionKind(i0 i0Var, g0 g0Var) {
        if (i0Var == null) {
            a(13);
        }
        if (g0Var == null) {
            a(14);
        }
        Variance varianceJ = i0Var.j();
        Variance varianceC = g0Var.c();
        if (varianceC == Variance.INVARIANT) {
            varianceC = varianceJ;
            varianceJ = varianceC;
        }
        Variance variance = Variance.IN_VARIANCE;
        return (varianceJ == variance && varianceC == Variance.OUT_VARIANCE) ? EnrichedProjectionKind.STAR : (varianceJ == Variance.OUT_VARIANCE && varianceC == variance) ? EnrichedProjectionKind.STAR : EnrichedProjectionKind.fromVariance(varianceC);
    }

    private boolean i(u uVar, u uVar2) {
        if (KotlinTypeKt.isError(uVar) || KotlinTypeKt.isError(uVar2)) {
            return true;
        }
        if (!uVar2.I0() && uVar.I0()) {
            return false;
        }
        if (KotlinBuiltIns.isNothingOrNullableNothing(uVar)) {
            return true;
        }
        u uVarFindCorrespondingSupertype = findCorrespondingSupertype(uVar, uVar2, this.a);
        if (uVarFindCorrespondingSupertype == null) {
            return this.a.d(uVar, uVar2);
        }
        if (uVar2.I0() || !uVarFindCorrespondingSupertype.I0()) {
            return c(uVarFindCorrespondingSupertype, uVar2);
        }
        return false;
    }

    public boolean d(u uVar, u uVar2) {
        if (uVar == null) {
            a(11);
        }
        if (uVar2 == null) {
            a(12);
        }
        if (uVar == uVar2) {
            return true;
        }
        if (FlexibleTypesKt.isFlexible(uVar)) {
            return FlexibleTypesKt.isFlexible(uVar2) ? !KotlinTypeKt.isError(uVar) && !KotlinTypeKt.isError(uVar2) && h(uVar, uVar2) && h(uVar2, uVar) : g(uVar2, uVar);
        }
        if (FlexibleTypesKt.isFlexible(uVar2)) {
            return g(uVar, uVar2);
        }
        if (uVar.I0() != uVar2.I0()) {
            return false;
        }
        if (uVar.I0()) {
            return this.a.e(TypeUtils.makeNotNullable(uVar), TypeUtils.makeNotNullable(uVar2), this);
        }
        f0 f0VarH0 = uVar.H0();
        f0 f0VarH02 = uVar2.H0();
        if (!this.a.c(f0VarH0, f0VarH02)) {
            return false;
        }
        List<g0> listG0 = uVar.G0();
        List<g0> listG02 = uVar2.G0();
        if (listG0.size() != listG02.size()) {
            return false;
        }
        for (int i = 0; i < listG0.size(); i++) {
            g0 g0Var = listG0.get(i);
            g0 g0Var2 = listG02.get(i);
            if (!g0Var.b() || !g0Var2.b()) {
                i0 i0Var = f0VarH0.getParameters().get(i);
                i0 i0Var2 = f0VarH02.getParameters().get(i);
                if (!b(g0Var, g0Var2, i0Var) && (getEffectiveProjectionKind(i0Var, g0Var) != getEffectiveProjectionKind(i0Var2, g0Var2) || !this.a.e(g0Var.getType(), g0Var2.getType(), this))) {
                    return false;
                }
            }
        }
        return true;
    }

    protected boolean g(u uVar, u uVar2) {
        return h(FlexibleTypesKt.asFlexibleType(uVar2).P0(), uVar) && h(uVar, FlexibleTypesKt.asFlexibleType(uVar2).Q0());
    }

    public boolean h(u uVar, u uVar2) {
        if (uVar == null) {
            a(15);
        }
        if (uVar2 == null) {
            a(16);
        }
        if (TypeCapabilitiesKt.sameTypeConstructors(uVar, uVar2)) {
            return !uVar.I0() || uVar2.I0();
        }
        u subtypeRepresentative = TypeCapabilitiesKt.getSubtypeRepresentative(uVar);
        u supertypeRepresentative = TypeCapabilitiesKt.getSupertypeRepresentative(uVar2);
        return (subtypeRepresentative == uVar && supertypeRepresentative == uVar2) ? i(uVar, uVar2) : h(subtypeRepresentative, supertypeRepresentative);
    }
}
