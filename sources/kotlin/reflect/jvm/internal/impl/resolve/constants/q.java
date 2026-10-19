package kotlin.reflect.jvm.internal.impl.resolve.constants;

import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class q extends g<b> {
    public static final a b = new a(null);

    /* JADX INFO: compiled from: constantValues.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.n nVar) {
            this();
        }

        public final g<?> a(kotlin.reflect.jvm.internal.impl.types.u argumentType) {
            Intrinsics.checkParameterIsNotNull(argumentType, "argumentType");
            if (KotlinTypeKt.isError(argumentType)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.types.u type = argumentType;
            int i = 0;
            while (KotlinBuiltIns.isArray(type)) {
                type = ((g0) kotlin.collections.p.single((List) type.G0())).getType();
                Intrinsics.checkExpressionValueIsNotNull(type, "type.arguments.single().type");
                i++;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = type.H0().q();
            if (fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                ClassId classId = DescriptorUtilsKt.getClassId(fVarQ);
                return classId != null ? new q(classId, i) : new q(new b.a(argumentType));
            }
            if (!(fVarQ instanceof i0)) {
                return null;
            }
            ClassId classId2 = ClassId.topLevel(KotlinBuiltIns.h.a.l());
            Intrinsics.checkExpressionValueIsNotNull(classId2, "ClassId.topLevel(KotlinB…ns.FQ_NAMES.any.toSafe())");
            return new q(classId2, 0);
        }
    }

    /* JADX INFO: compiled from: constantValues.kt */
    public static abstract class b {

        /* JADX INFO: compiled from: constantValues.kt */
        public static final class a extends b {
            private final kotlin.reflect.jvm.internal.impl.types.u a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(kotlin.reflect.jvm.internal.impl.types.u type) {
                super(null);
                Intrinsics.checkParameterIsNotNull(type, "type");
                this.a = type;
            }

            public final kotlin.reflect.jvm.internal.impl.types.u a() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof a) && Intrinsics.areEqual(this.a, ((a) obj).a);
                }
                return true;
            }

            public int hashCode() {
                kotlin.reflect.jvm.internal.impl.types.u uVar = this.a;
                if (uVar != null) {
                    return uVar.hashCode();
                }
                return 0;
            }

            public String toString() {
                return "LocalClass(type=" + this.a + ")";
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.q$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: constantValues.kt */
        public static final class C0543b extends b {
            private final f a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0543b(f value) {
                super(null);
                Intrinsics.checkParameterIsNotNull(value, "value");
                this.a = value;
            }

            public final int a() {
                return this.a.c();
            }

            public final ClassId b() {
                return this.a.d();
            }

            public final f c() {
                return this.a;
            }

            public boolean equals(Object obj) {
                if (this != obj) {
                    return (obj instanceof C0543b) && Intrinsics.areEqual(this.a, ((C0543b) obj).a);
                }
                return true;
            }

            public int hashCode() {
                f fVar = this.a;
                if (fVar != null) {
                    return fVar.hashCode();
                }
                return 0;
            }

            public String toString() {
                return "NormalClass(value=" + this.a + ")";
            }
        }

        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q(ClassId classId, int i) {
        this(new f(classId, i));
        Intrinsics.checkParameterIsNotNull(classId, "classId");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q(f value) {
        this(new b.C0543b(value));
        Intrinsics.checkParameterIsNotNull(value, "value");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(b value) {
        super(value);
        Intrinsics.checkParameterIsNotNull(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public kotlin.reflect.jvm.internal.impl.types.u a(ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        Annotations annotationsB = Annotations.e0.b();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = module.k().E();
        Intrinsics.checkExpressionValueIsNotNull(dVarE, "module.builtIns.kClass");
        return KotlinTypeFactory.simpleNotNullType(annotationsB, dVarE, CollectionsKt__CollectionsJVMKt.listOf(new kotlin.reflect.jvm.internal.impl.types.i0(c(module))));
    }

    public final kotlin.reflect.jvm.internal.impl.types.u c(ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        b bVarB = b();
        if (bVarB instanceof b.a) {
            return ((b.a) b()).a();
        }
        if (!(bVarB instanceof b.C0543b)) {
            throw new NoWhenBranchMatchedException();
        }
        f fVarC = ((b.C0543b) b()).c();
        ClassId classIdA = fVarC.a();
        int iB = fVarC.b();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarFindClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(module, classIdA);
        if (dVarFindClassAcrossModuleDependencies != null) {
            kotlin.reflect.jvm.internal.impl.types.y yVarN = dVarFindClassAcrossModuleDependencies.n();
            Intrinsics.checkExpressionValueIsNotNull(yVarN, "descriptor.defaultType");
            kotlin.reflect.jvm.internal.impl.types.u uVarReplaceArgumentsWithStarProjections = TypeUtilsKt.replaceArgumentsWithStarProjections(yVarN);
            for (int i = 0; i < iB; i++) {
                uVarReplaceArgumentsWithStarProjections = module.k().m(Variance.INVARIANT, uVarReplaceArgumentsWithStarProjections);
                Intrinsics.checkExpressionValueIsNotNull(uVarReplaceArgumentsWithStarProjections, "module.builtIns.getArray…Variance.INVARIANT, type)");
            }
            return uVarReplaceArgumentsWithStarProjections;
        }
        kotlin.reflect.jvm.internal.impl.types.y yVarCreateErrorType = ErrorUtils.createErrorType("Unresolved type: " + classIdA + " (arrayDimensions=" + iB + ')');
        Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy…sions=$arrayDimensions)\")");
        return yVarCreateErrorType;
    }
}
