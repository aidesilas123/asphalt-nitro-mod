package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.p;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JavaToKotlinClassMap;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.d;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.h;
import kotlin.reflect.jvm.internal.impl.load.java.structure.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.i;
import kotlin.reflect.jvm.internal.impl.load.java.structure.s;
import kotlin.reflect.jvm.internal.impl.load.java.structure.t;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: JavaTypeResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class JavaTypeResolver {
    private final d a;
    private final h b;

    /* JADX INFO: compiled from: JavaTypeResolver.kt */
    static final class a extends Lambda implements Function1<t, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(t tVar) {
            if (!(tVar instanceof x)) {
                tVar = null;
            }
            x xVar = (x) tVar;
            return (xVar == null || xVar.s() == null || xVar.F()) ? false : true;
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(t tVar) {
            return Boolean.valueOf(a(tVar));
        }
    }

    /* JADX INFO: compiled from: JavaTypeResolver.kt */
    static final class b extends Lambda implements Function0<u> {
        final /* synthetic */ i0 a;
        final /* synthetic */ JavaTypeResolver b;
        final /* synthetic */ JavaTypeAttributes c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ f0 f9241d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ boolean f9242e;

        /* JADX INFO: compiled from: JavaTypeResolver.kt */
        static final class a extends Lambda implements Function0<u> {
            a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final u invoke() {
                f fVarC = b.this.f9241d.q();
                if (fVarC == null) {
                    Intrinsics.throwNpe();
                }
                Intrinsics.checkExpressionValueIsNotNull(fVarC, "constructor.declarationDescriptor!!");
                y yVarN = fVarC.n();
                Intrinsics.checkExpressionValueIsNotNull(yVarN, "constructor.declarationDescriptor!!.defaultType");
                return TypeUtilsKt.replaceArgumentsWithStarProjections(yVarN);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(i0 i0Var, JavaTypeResolver javaTypeResolver, JavaTypeAttributes javaTypeAttributes, f0 f0Var, boolean z) {
            super(0);
            this.a = i0Var;
            this.b = javaTypeResolver;
            this.c = javaTypeAttributes;
            this.f9241d = f0Var;
            this.f9242e = z;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final u invoke() {
            i0 parameter = this.a;
            Intrinsics.checkExpressionValueIsNotNull(parameter, "parameter");
            return JavaTypeResolverKt.getErasedUpperBound(parameter, this.c.d(), new a());
        }
    }

    /* JADX INFO: compiled from: JavaTypeResolver.kt */
    static final class c extends Lambda implements Function0<y> {
        final /* synthetic */ i a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(i iVar) {
            super(0);
            this.a = iVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final y invoke() {
            y yVarCreateErrorType = ErrorUtils.createErrorType("Unresolved java class " + this.a.y());
            Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy…vaType.presentableText}\")");
            return yVarCreateErrorType;
        }
    }

    public JavaTypeResolver(d c2, h typeParameterResolver) {
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(typeParameterResolver, "typeParameterResolver");
        this.a = c2;
        this.b = typeParameterResolver;
    }

    private final boolean a(i iVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        Variance varianceJ;
        if (!a.a.a((t) p.lastOrNull((List) iVar.u()))) {
            return false;
        }
        f0 f0VarI = JavaToKotlinClassMap.m.i(dVar).i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "JavaToKotlinClassMap.con…         .typeConstructor");
        List<i0> parameters = f0VarI.getParameters();
        Intrinsics.checkExpressionValueIsNotNull(parameters, "JavaToKotlinClassMap.con…ypeConstructor.parameters");
        i0 i0Var = (i0) p.lastOrNull((List) parameters);
        if (i0Var == null || (varianceJ = i0Var.j()) == null) {
            return false;
        }
        Intrinsics.checkExpressionValueIsNotNull(varianceJ, "JavaToKotlinClassMap.con….variance ?: return false");
        return varianceJ != Variance.OUT_VARIANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.util.List<kotlin.reflect.jvm.internal.impl.types.g0> b(kotlin.reflect.jvm.internal.impl.load.java.structure.i r16, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes r17, kotlin.reflect.jvm.internal.impl.types.f0 r18) {
        /*
            Method dump skipped, instruction units count: 279
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver.b(kotlin.reflect.jvm.internal.impl.load.java.structure.i, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeAttributes, kotlin.reflect.jvm.internal.impl.types.f0):java.util.List");
    }

    private final y c(i iVar, JavaTypeAttributes javaTypeAttributes, y yVar) {
        Annotations lazyJavaAnnotations;
        if (yVar == null || (lazyJavaAnnotations = yVar.getAnnotations()) == null) {
            lazyJavaAnnotations = new LazyJavaAnnotations(this.a, iVar);
        }
        Annotations annotations = lazyJavaAnnotations;
        f0 f0VarD = d(iVar, javaTypeAttributes);
        if (f0VarD == null) {
            return null;
        }
        boolean zG = g(javaTypeAttributes);
        return (Intrinsics.areEqual(yVar != null ? yVar.H0() : null, f0VarD) && !iVar.o() && zG) ? yVar.L0(true) : KotlinTypeFactory.simpleType$default(annotations, f0VarD, b(iVar, javaTypeAttributes, f0VarD), zG, null, 16, null);
    }

    private final f0 d(i iVar, JavaTypeAttributes javaTypeAttributes) {
        f0 f0VarI;
        kotlin.reflect.jvm.internal.impl.load.java.structure.h hVarD = iVar.d();
        if (hVarD == null) {
            return e(iVar);
        }
        if (!(hVarD instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.f)) {
            if (hVarD instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.u) {
                i0 i0VarA = this.b.a((kotlin.reflect.jvm.internal.impl.load.java.structure.u) hVarD);
                if (i0VarA != null) {
                    return i0VarA.i();
                }
                return null;
            }
            throw new IllegalStateException("Unknown classifier kind: " + hVarD);
        }
        kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.f) hVarD;
        FqName fqNameE = fVar.e();
        if (fqNameE != null) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarH = h(iVar, javaTypeAttributes, fqNameE);
            if (dVarH == null) {
                dVarH = this.a.a().l().a(fVar);
            }
            return (dVarH == null || (f0VarI = dVarH.i()) == null) ? e(iVar) : f0VarI;
        }
        throw new AssertionError("Class type should have a FQ name: " + hVarD);
    }

    private final f0 e(i iVar) {
        ClassId classId = ClassId.topLevel(new FqName(iVar.B()));
        Intrinsics.checkExpressionValueIsNotNull(classId, "ClassId.topLevel(FqName(…classifierQualifiedName))");
        f0 f0VarI = this.a.a().b().b().q().a(classId, CollectionsKt__CollectionsJVMKt.listOf(0)).i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "c.components.deserialize…istOf(0)).typeConstructor");
        return f0VarI;
    }

    private final boolean f(Variance variance, i0 i0Var) {
        return (i0Var.j() == Variance.INVARIANT || variance == i0Var.j()) ? false : true;
    }

    private final boolean g(JavaTypeAttributes javaTypeAttributes) {
        return (javaTypeAttributes.b() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.e() || javaTypeAttributes.c() == TypeUsage.SUPERTYPE) ? false : true;
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d h(i iVar, JavaTypeAttributes javaTypeAttributes, FqName fqName) {
        if (javaTypeAttributes.e() && Intrinsics.areEqual(fqName, JavaTypeResolverKt.a)) {
            return this.a.a().n().b();
        }
        JavaToKotlinClassMap javaToKotlinClassMap = JavaToKotlinClassMap.m;
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarMapJavaToKotlin$default = JavaToKotlinClassMap.mapJavaToKotlin$default(javaToKotlinClassMap, fqName, this.a.d().k(), null, 4, null);
        if (dVarMapJavaToKotlin$default != null) {
            return (javaToKotlinClassMap.q(dVarMapJavaToKotlin$default) && (javaTypeAttributes.b() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || javaTypeAttributes.c() == TypeUsage.SUPERTYPE || a(iVar, dVarMapJavaToKotlin$default))) ? javaToKotlinClassMap.i(dVarMapJavaToKotlin$default) : dVarMapJavaToKotlin$default;
        }
        return null;
    }

    private final u j(i iVar, JavaTypeAttributes javaTypeAttributes) {
        y yVarC;
        c cVar = new c(iVar);
        boolean z = (javaTypeAttributes.e() || javaTypeAttributes.c() == TypeUsage.SUPERTYPE) ? false : true;
        boolean zO = iVar.o();
        if (!zO && !z) {
            y yVarC2 = c(iVar, javaTypeAttributes, null);
            return yVarC2 != null ? yVarC2 : cVar.invoke();
        }
        y yVarC3 = c(iVar, javaTypeAttributes.f(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (yVarC3 != null && (yVarC = c(iVar, javaTypeAttributes.f(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), yVarC3)) != null) {
            return zO ? new kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b(yVarC3, yVarC) : KotlinTypeFactory.flexibleType(yVarC3, yVarC);
        }
        return cVar.invoke();
    }

    private final g0 l(t tVar, JavaTypeAttributes javaTypeAttributes, i0 i0Var) {
        if (!(tVar instanceof x)) {
            return new kotlin.reflect.jvm.internal.impl.types.i0(Variance.INVARIANT, k(tVar, javaTypeAttributes));
        }
        x xVar = (x) tVar;
        t tVarS = xVar.s();
        Variance variance = xVar.F() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
        return (tVarS == null || f(variance, i0Var)) ? JavaTypeResolverKt.makeStarProjection(i0Var, javaTypeAttributes) : TypeUtilsKt.createProjection(k(tVarS, JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, false, null, 3, null)), variance, i0Var);
    }

    public static /* synthetic */ u transformArrayType$default(JavaTypeResolver javaTypeResolver, e eVar, JavaTypeAttributes javaTypeAttributes, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return javaTypeResolver.i(eVar, javaTypeAttributes, z);
    }

    public final u i(e arrayType, JavaTypeAttributes attr, boolean z) {
        Intrinsics.checkParameterIsNotNull(arrayType, "arrayType");
        Intrinsics.checkParameterIsNotNull(attr, "attr");
        t tVarL = arrayType.l();
        s sVar = (s) (!(tVarL instanceof s) ? null : tVarL);
        PrimitiveType type = sVar != null ? sVar.getType() : null;
        if (type != null) {
            y yVarN = this.a.d().k().N(type);
            Intrinsics.checkExpressionValueIsNotNull(yVarN, "c.module.builtIns.getPri…KotlinType(primitiveType)");
            return attr.e() ? yVarN : KotlinTypeFactory.flexibleType(yVarN, yVarN.L0(true));
        }
        u uVarK = k(tVarL, JavaTypeResolverKt.toAttributes$default(TypeUsage.COMMON, attr.e(), null, 2, null));
        if (attr.e()) {
            y yVarM = this.a.d().k().m(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, uVarK);
            Intrinsics.checkExpressionValueIsNotNull(yVarM, "c.module.builtIns.getArr…ctionKind, componentType)");
            return yVarM;
        }
        y yVarM2 = this.a.d().k().m(Variance.INVARIANT, uVarK);
        Intrinsics.checkExpressionValueIsNotNull(yVarM2, "c.module.builtIns.getArr…INVARIANT, componentType)");
        return KotlinTypeFactory.flexibleType(yVarM2, this.a.d().k().m(Variance.OUT_VARIANCE, uVarK).L0(true));
    }

    public final u k(t tVar, JavaTypeAttributes attr) {
        u uVarK;
        Intrinsics.checkParameterIsNotNull(attr, "attr");
        if (tVar instanceof s) {
            PrimitiveType type = ((s) tVar).getType();
            y yVarP = type != null ? this.a.d().k().P(type) : this.a.d().k().W();
            Intrinsics.checkExpressionValueIsNotNull(yVarP, "if (primitiveType != nul….module.builtIns.unitType");
            return yVarP;
        }
        if (tVar instanceof i) {
            return j((i) tVar, attr);
        }
        if (tVar instanceof e) {
            return transformArrayType$default(this, (e) tVar, attr, false, 4, null);
        }
        if (tVar instanceof x) {
            t tVarS = ((x) tVar).s();
            if (tVarS != null && (uVarK = k(tVarS, attr)) != null) {
                return uVarK;
            }
            y yVarY = this.a.d().k().y();
            Intrinsics.checkExpressionValueIsNotNull(yVarY, "c.module.builtIns.defaultBound");
            return yVarY;
        }
        if (tVar == null) {
            y yVarY2 = this.a.d().k().y();
            Intrinsics.checkExpressionValueIsNotNull(yVarY2, "c.module.builtIns.defaultBound");
            return yVarY2;
        }
        throw new UnsupportedOperationException("Unsupported type: " + tVar);
    }
}
