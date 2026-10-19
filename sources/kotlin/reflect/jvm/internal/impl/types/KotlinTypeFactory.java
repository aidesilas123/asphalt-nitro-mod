package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleAwareClassDescriptorKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.e0;

/* JADX INFO: compiled from: KotlinTypeFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class KotlinTypeFactory {
    public static final KotlinTypeFactory b = new KotlinTypeFactory();
    private static final Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> a = a.a;

    /* JADX INFO: compiled from: KotlinTypeFactory.kt */
    static final class a extends Lambda implements Function1 {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Void invoke(kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
            Intrinsics.checkParameterIsNotNull(dVar, "<anonymous parameter 0>");
            return null;
        }
    }

    /* JADX INFO: compiled from: KotlinTypeFactory.kt */
    private static final class b {
        private final y a;
        private final f0 b;

        public b(y yVar, f0 f0Var) {
            this.a = yVar;
            this.b = f0Var;
        }

        public final y a() {
            return this.a;
        }

        public final f0 b() {
            return this.b;
        }
    }

    /* JADX INFO: compiled from: KotlinTypeFactory.kt */
    static final class c extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> {
        final /* synthetic */ f0 a;
        final /* synthetic */ List b;
        final /* synthetic */ Annotations c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f9832d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(f0 f0Var, List list, Annotations annotations, boolean z) {
            super(1);
            this.a = f0Var;
            this.b = list;
            this.c = annotations;
            this.f9832d = z;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(kotlin.reflect.jvm.internal.impl.types.checker.d refiner) {
            Intrinsics.checkParameterIsNotNull(refiner, "refiner");
            b bVarB = KotlinTypeFactory.b.b(this.a, refiner, this.b);
            if (bVarB == null) {
                return null;
            }
            y yVarA = bVarB.a();
            if (yVarA != null) {
                return yVarA;
            }
            Annotations annotations = this.c;
            f0 f0VarB = bVarB.b();
            if (f0VarB == null) {
                Intrinsics.throwNpe();
            }
            return KotlinTypeFactory.simpleType(annotations, f0VarB, this.b, this.f9832d, refiner);
        }
    }

    /* JADX INFO: compiled from: KotlinTypeFactory.kt */
    static final class d extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, y> {
        final /* synthetic */ f0 a;
        final /* synthetic */ List b;
        final /* synthetic */ Annotations c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f9833d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ MemberScope f9834e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(f0 f0Var, List list, Annotations annotations, boolean z, MemberScope memberScope) {
            super(1);
            this.a = f0Var;
            this.b = list;
            this.c = annotations;
            this.f9833d = z;
            this.f9834e = memberScope;
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            b bVarB = KotlinTypeFactory.b.b(this.a, kotlinTypeRefiner, this.b);
            if (bVarB == null) {
                return null;
            }
            y yVarA = bVarB.a();
            if (yVarA != null) {
                return yVarA;
            }
            Annotations annotations = this.c;
            f0 f0VarB = bVarB.b();
            if (f0VarB == null) {
                Intrinsics.throwNpe();
            }
            return KotlinTypeFactory.simpleTypeWithNonTrivialMemberScope(annotations, f0VarB, this.b, this.f9833d, this.f9834e);
        }
    }

    private KotlinTypeFactory() {
    }

    private final MemberScope a(f0 f0Var, List<? extends g0> list, kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = f0Var.q();
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.i0) {
            return fVarC.n().m();
        }
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            if (dVar == null) {
                dVar = DescriptorUtilsKt.getKotlinTypeRefiner(DescriptorUtilsKt.getModule(fVarC));
            }
            return list.isEmpty() ? ModuleAwareClassDescriptorKt.getRefinedUnsubstitutedMemberScopeIfPossible((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC, dVar) : ModuleAwareClassDescriptorKt.getRefinedMemberScopeIfPossible((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC, TypeConstructorSubstitution.c.b(f0Var, list), dVar);
        }
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.h0) {
            MemberScope memberScopeCreateErrorScope = ErrorUtils.createErrorScope("Scope for abbreviation: " + ((kotlin.reflect.jvm.internal.impl.descriptors.h0) fVarC).getName(), true);
            Intrinsics.checkExpressionValueIsNotNull(memberScopeCreateErrorScope, "ErrorUtils.createErrorSc…{descriptor.name}\", true)");
            return memberScopeCreateErrorScope;
        }
        throw new IllegalStateException("Unsupported classifier: " + fVarC + " for constructor: " + f0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b b(f0 f0Var, kotlin.reflect.jvm.internal.impl.types.checker.d dVar, List<? extends g0> list) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarE;
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = f0Var.q();
        if (fVarC == null || (fVarE = dVar.e(fVarC)) == null) {
            return null;
        }
        if (fVarE instanceof kotlin.reflect.jvm.internal.impl.descriptors.h0) {
            return new b(computeExpandedType((kotlin.reflect.jvm.internal.impl.descriptors.h0) fVarE, list), null);
        }
        f0 f0VarA = fVarE.i().a(dVar);
        Intrinsics.checkExpressionValueIsNotNull(f0VarA, "descriptor.typeConstruct…refine(kotlinTypeRefiner)");
        return new b(null, f0VarA);
    }

    public static final y computeExpandedType(kotlin.reflect.jvm.internal.impl.descriptors.h0 computeExpandedType, List<? extends g0> arguments) {
        Intrinsics.checkParameterIsNotNull(computeExpandedType, "$this$computeExpandedType");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        return new TypeAliasExpander(e0.a.a, false).i(d0.a.a(null, computeExpandedType, arguments), Annotations.e0.b());
    }

    public static final m0 flexibleType(y lowerBound, y upperBound) {
        Intrinsics.checkParameterIsNotNull(lowerBound, "lowerBound");
        Intrinsics.checkParameterIsNotNull(upperBound, "upperBound");
        return Intrinsics.areEqual(lowerBound, upperBound) ? lowerBound : new q(lowerBound, upperBound);
    }

    public static final y integerLiteralType(Annotations annotations, IntegerLiteralTypeConstructor constructor, boolean z) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        List listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        MemberScope memberScopeCreateErrorScope = ErrorUtils.createErrorScope("Scope for integer literal type", true);
        Intrinsics.checkExpressionValueIsNotNull(memberScopeCreateErrorScope, "ErrorUtils.createErrorSc…eger literal type\", true)");
        return simpleTypeWithNonTrivialMemberScope(annotations, constructor, listEmptyList, z, memberScopeCreateErrorScope);
    }

    public static final y simpleNotNullType(Annotations annotations, kotlin.reflect.jvm.internal.impl.descriptors.d descriptor, List<? extends g0> arguments) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        f0 f0VarI = descriptor.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "descriptor.typeConstructor");
        return simpleType$default(annotations, f0VarI, arguments, false, null, 16, null);
    }

    public static final y simpleType(Annotations annotations, f0 constructor, List<? extends g0> arguments, boolean z, kotlin.reflect.jvm.internal.impl.types.checker.d dVar) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        if (!annotations.isEmpty() || !arguments.isEmpty() || z || constructor.q() == null) {
            return simpleTypeWithNonTrivialMemberScope(annotations, constructor, arguments, z, b.a(constructor, arguments, dVar), new c(constructor, arguments, annotations, z));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = constructor.q();
        if (fVarC == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(fVarC, "constructor.declarationDescriptor!!");
        y yVarN = fVarC.n();
        Intrinsics.checkExpressionValueIsNotNull(yVarN, "constructor.declarationDescriptor!!.defaultType");
        return yVarN;
    }

    public static /* synthetic */ y simpleType$default(Annotations annotations, f0 f0Var, List list, boolean z, kotlin.reflect.jvm.internal.impl.types.checker.d dVar, int i, Object obj) {
        if ((i & 16) != 0) {
            dVar = null;
        }
        return simpleType(annotations, f0Var, list, z, dVar);
    }

    public static final y simpleTypeWithNonTrivialMemberScope(Annotations annotations, f0 constructor, List<? extends g0> arguments, boolean z, MemberScope memberScope) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        Intrinsics.checkParameterIsNotNull(memberScope, "memberScope");
        z zVar = new z(constructor, arguments, z, memberScope, new d(constructor, arguments, annotations, z, memberScope));
        return annotations.isEmpty() ? zVar : new g(zVar, annotations);
    }

    public static final y simpleTypeWithNonTrivialMemberScope(Annotations annotations, f0 constructor, List<? extends g0> arguments, boolean z, MemberScope memberScope, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.d, ? extends y> refinedTypeFactory) {
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        Intrinsics.checkParameterIsNotNull(memberScope, "memberScope");
        Intrinsics.checkParameterIsNotNull(refinedTypeFactory, "refinedTypeFactory");
        z zVar = new z(constructor, arguments, z, memberScope, refinedTypeFactory);
        return annotations.isEmpty() ? zVar : new g(zVar, annotations);
    }
}
