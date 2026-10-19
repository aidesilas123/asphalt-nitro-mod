package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.TypeConstructorSubstitution;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.ClassicTypeSystemContext;
import kotlin.reflect.jvm.internal.impl.types.checker.d;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: ClassicTypeCheckerContext.kt */
/* JADX INFO: loaded from: classes5.dex */
public class a extends AbstractTypeCheckerContext implements ClassicTypeSystemContext {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final C0551a f9852e = new C0551a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f9853f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f9854g;
    private final boolean h;
    private final d i;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.checker.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClassicTypeCheckerContext.kt */
    public static final class C0551a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.checker.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ClassicTypeCheckerContext.kt */
        public static final class C0552a extends AbstractTypeCheckerContext.a.AbstractC0549a {
            final /* synthetic */ ClassicTypeSystemContext a;
            final /* synthetic */ TypeSubstitutor b;

            C0552a(ClassicTypeSystemContext classicTypeSystemContext, TypeSubstitutor typeSubstitutor) {
                this.a = classicTypeSystemContext;
                this.b = typeSubstitutor;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public kotlin.reflect.jvm.internal.impl.types.model.g a(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.f type) {
                Intrinsics.checkParameterIsNotNull(context, "context");
                Intrinsics.checkParameterIsNotNull(type, "type");
                ClassicTypeSystemContext classicTypeSystemContext = this.a;
                TypeSubstitutor typeSubstitutor = this.b;
                kotlin.reflect.jvm.internal.impl.types.model.f fVarT = classicTypeSystemContext.T(type);
                if (fVarT == null) {
                    throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.KotlinType");
                }
                u uVarG = typeSubstitutor.g((u) fVarT, Variance.INVARIANT);
                Intrinsics.checkExpressionValueIsNotNull(uVarG, "substitutor.safeSubstitu…ANT\n                    )");
                kotlin.reflect.jvm.internal.impl.types.model.g gVarA = classicTypeSystemContext.a(uVarG);
                if (gVarA == null) {
                    Intrinsics.throwNpe();
                }
                return gVarA;
            }
        }

        private C0551a() {
        }

        public /* synthetic */ C0551a(kotlin.jvm.internal.n nVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final AbstractTypeCheckerContext.a.AbstractC0549a a(ClassicTypeSystemContext classicSubstitutionSupertypePolicy, kotlin.reflect.jvm.internal.impl.types.model.g type) {
            Intrinsics.checkParameterIsNotNull(classicSubstitutionSupertypePolicy, "$this$classicSubstitutionSupertypePolicy");
            Intrinsics.checkParameterIsNotNull(type, "type");
            if (type instanceof y) {
                return new C0552a(classicSubstitutionSupertypePolicy, TypeConstructorSubstitution.c.a((u) type).c());
            }
            throw new IllegalArgumentException(ClassicTypeCheckerContextKt.a(type).toString());
        }
    }

    public a(boolean z, boolean z2, boolean z3, d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        this.f9853f = z;
        this.f9854g = z2;
        this.h = z3;
        this.i = kotlinTypeRefiner;
    }

    public /* synthetic */ a(boolean z, boolean z2, boolean z3, d dVar, int i, kotlin.jvm.internal.n nVar) {
        this(z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3, (i & 8) != 0 ? d.a.a : dVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean A(kotlin.reflect.jvm.internal.impl.types.model.j c1, kotlin.reflect.jvm.internal.impl.types.model.j c2) {
        Intrinsics.checkParameterIsNotNull(c1, "c1");
        Intrinsics.checkParameterIsNotNull(c2, "c2");
        return ClassicTypeSystemContext.DefaultImpls.isEqualTypeConstructors(this, c1, c2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public int B(kotlin.reflect.jvm.internal.impl.types.model.j parametersCount) {
        Intrinsics.checkParameterIsNotNull(parametersCount, "$this$parametersCount");
        return ClassicTypeSystemContext.DefaultImpls.parametersCount(this, parametersCount);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public PrimitiveType C(kotlin.reflect.jvm.internal.impl.types.model.j getPrimitiveArrayType) {
        Intrinsics.checkParameterIsNotNull(getPrimitiveArrayType, "$this$getPrimitiveArrayType");
        return ClassicTypeSystemContext.DefaultImpls.getPrimitiveArrayType(this, getPrimitiveArrayType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public kotlin.reflect.jvm.internal.impl.types.model.f D(kotlin.reflect.jvm.internal.impl.types.model.k getRepresentativeUpperBound) {
        Intrinsics.checkParameterIsNotNull(getRepresentativeUpperBound, "$this$getRepresentativeUpperBound");
        return ClassicTypeSystemContext.DefaultImpls.getRepresentativeUpperBound(this, getRepresentativeUpperBound);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean E(kotlin.reflect.jvm.internal.impl.types.model.j isNothingConstructor) {
        Intrinsics.checkParameterIsNotNull(isNothingConstructor, "$this$isNothingConstructor");
        return ClassicTypeSystemContext.DefaultImpls.isNothingConstructor(this, isNothingConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public Collection<kotlin.reflect.jvm.internal.impl.types.model.f> F(kotlin.reflect.jvm.internal.impl.types.model.j supertypes) {
        Intrinsics.checkParameterIsNotNull(supertypes, "$this$supertypes");
        return ClassicTypeSystemContext.DefaultImpls.supertypes(this, supertypes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public Collection<kotlin.reflect.jvm.internal.impl.types.model.f> G(kotlin.reflect.jvm.internal.impl.types.model.g possibleIntegerTypes) {
        Intrinsics.checkParameterIsNotNull(possibleIntegerTypes, "$this$possibleIntegerTypes");
        return ClassicTypeSystemContext.DefaultImpls.possibleIntegerTypes(this, possibleIntegerTypes);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.j H(kotlin.reflect.jvm.internal.impl.types.model.f typeConstructor) {
        Intrinsics.checkParameterIsNotNull(typeConstructor, "$this$typeConstructor");
        return ClassicTypeSystemContext.DefaultImpls.typeConstructor(this, typeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean I(kotlin.reflect.jvm.internal.impl.types.model.j isDenotable) {
        Intrinsics.checkParameterIsNotNull(isDenotable, "$this$isDenotable");
        return ClassicTypeSystemContext.DefaultImpls.isDenotable(this, isDenotable);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public FqNameUnsafe J(kotlin.reflect.jvm.internal.impl.types.model.j getClassFqNameUnsafe) {
        Intrinsics.checkParameterIsNotNull(getClassFqNameUnsafe, "$this$getClassFqNameUnsafe");
        return ClassicTypeSystemContext.DefaultImpls.getClassFqNameUnsafe(this, getClassFqNameUnsafe);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.e K(kotlin.reflect.jvm.internal.impl.types.model.f asFlexibleType) {
        Intrinsics.checkParameterIsNotNull(asFlexibleType, "$this$asFlexibleType");
        return ClassicTypeSystemContext.DefaultImpls.asFlexibleType(this, asFlexibleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.f L(List<? extends kotlin.reflect.jvm.internal.impl.types.model.f> types) {
        Intrinsics.checkParameterIsNotNull(types, "types");
        return ClassicTypeSystemContext.DefaultImpls.intersectTypes(this, types);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.f M(kotlin.reflect.jvm.internal.impl.types.model.b lowerType) {
        Intrinsics.checkParameterIsNotNull(lowerType, "$this$lowerType");
        return ClassicTypeSystemContext.DefaultImpls.lowerType(this, lowerType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean N(kotlin.reflect.jvm.internal.impl.types.model.j isClassTypeConstructor) {
        Intrinsics.checkParameterIsNotNull(isClassTypeConstructor, "$this$isClassTypeConstructor");
        return ClassicTypeSystemContext.DefaultImpls.isClassTypeConstructor(this, isClassTypeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g O(kotlin.reflect.jvm.internal.impl.types.model.g withNullability, boolean z) {
        Intrinsics.checkParameterIsNotNull(withNullability, "$this$withNullability");
        return ClassicTypeSystemContext.DefaultImpls.withNullability(this, withNullability, z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean P(kotlin.reflect.jvm.internal.impl.types.model.j isIntersection) {
        Intrinsics.checkParameterIsNotNull(isIntersection, "$this$isIntersection");
        return ClassicTypeSystemContext.DefaultImpls.isIntersection(this, isIntersection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public kotlin.reflect.jvm.internal.impl.types.model.f Q(kotlin.reflect.jvm.internal.impl.types.model.f getSubstitutedUnderlyingType) {
        Intrinsics.checkParameterIsNotNull(getSubstitutedUnderlyingType, "$this$getSubstitutedUnderlyingType");
        return ClassicTypeSystemContext.DefaultImpls.getSubstitutedUnderlyingType(this, getSubstitutedUnderlyingType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g R(kotlin.reflect.jvm.internal.impl.types.model.e upperBound) {
        Intrinsics.checkParameterIsNotNull(upperBound, "$this$upperBound");
        return ClassicTypeSystemContext.DefaultImpls.upperBound(this, upperBound);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.b S(kotlin.reflect.jvm.internal.impl.types.model.g asCapturedType) {
        Intrinsics.checkParameterIsNotNull(asCapturedType, "$this$asCapturedType");
        return ClassicTypeSystemContext.DefaultImpls.asCapturedType(this, asCapturedType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g T(kotlin.reflect.jvm.internal.impl.types.model.f lowerBoundIfFlexible) {
        Intrinsics.checkParameterIsNotNull(lowerBoundIfFlexible, "$this$lowerBoundIfFlexible");
        return ClassicTypeSystemContext.DefaultImpls.lowerBoundIfFlexible(this, lowerBoundIfFlexible);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public TypeVariance U(kotlin.reflect.jvm.internal.impl.types.model.i getVariance) {
        Intrinsics.checkParameterIsNotNull(getVariance, "$this$getVariance");
        return ClassicTypeSystemContext.DefaultImpls.getVariance(this, getVariance);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public boolean V(kotlin.reflect.jvm.internal.impl.types.model.f hasAnnotation, FqName fqName) {
        Intrinsics.checkParameterIsNotNull(hasAnnotation, "$this$hasAnnotation");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return ClassicTypeSystemContext.DefaultImpls.hasAnnotation(this, hasAnnotation, fqName);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public boolean W(kotlin.reflect.jvm.internal.impl.types.model.f isMarkedNullable) {
        Intrinsics.checkParameterIsNotNull(isMarkedNullable, "$this$isMarkedNullable");
        return ClassicTypeSystemContext.DefaultImpls.isMarkedNullable(this, isMarkedNullable);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g X(kotlin.reflect.jvm.internal.impl.types.model.g type, CaptureStatus status) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        Intrinsics.checkParameterIsNotNull(status, "status");
        return ClassicTypeSystemContext.DefaultImpls.captureFromArguments(this, type, status);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.c Y(kotlin.reflect.jvm.internal.impl.types.model.g asDefinitelyNotNullType) {
        Intrinsics.checkParameterIsNotNull(asDefinitelyNotNullType, "$this$asDefinitelyNotNullType");
        return ClassicTypeSystemContext.DefaultImpls.asDefinitelyNotNullType(this, asDefinitelyNotNullType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean Z(kotlin.reflect.jvm.internal.impl.types.model.j isCommonFinalClassConstructor) {
        Intrinsics.checkParameterIsNotNull(isCommonFinalClassConstructor, "$this$isCommonFinalClassConstructor");
        return ClassicTypeSystemContext.DefaultImpls.isCommonFinalClassConstructor(this, isCommonFinalClassConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g a(kotlin.reflect.jvm.internal.impl.types.model.f asSimpleType) {
        Intrinsics.checkParameterIsNotNull(asSimpleType, "$this$asSimpleType");
        return ClassicTypeSystemContext.DefaultImpls.asSimpleType(this, asSimpleType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.f a0(kotlin.reflect.jvm.internal.impl.types.model.i getType) {
        Intrinsics.checkParameterIsNotNull(getType, "$this$getType");
        return ClassicTypeSystemContext.DefaultImpls.getType(this, getType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.j b(kotlin.reflect.jvm.internal.impl.types.model.g typeConstructor) {
        Intrinsics.checkParameterIsNotNull(typeConstructor, "$this$typeConstructor");
        return ClassicTypeSystemContext.DefaultImpls.typeConstructor((ClassicTypeSystemContext) this, typeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.d b0(kotlin.reflect.jvm.internal.impl.types.model.e asDynamicType) {
        Intrinsics.checkParameterIsNotNull(asDynamicType, "$this$asDynamicType");
        return ClassicTypeSystemContext.DefaultImpls.asDynamicType(this, asDynamicType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public boolean c(kotlin.reflect.jvm.internal.impl.types.model.j isUnderKotlinPackage) {
        Intrinsics.checkParameterIsNotNull(isUnderKotlinPackage, "$this$isUnderKotlinPackage");
        return ClassicTypeSystemContext.DefaultImpls.isUnderKotlinPackage(this, isUnderKotlinPackage);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public kotlin.reflect.jvm.internal.impl.types.model.f c0(kotlin.reflect.jvm.internal.impl.types.model.f makeNullable) {
        Intrinsics.checkParameterIsNotNull(makeNullable, "$this$makeNullable");
        return ClassicTypeSystemContext.DefaultImpls.makeNullable(this, makeNullable);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public int d(kotlin.reflect.jvm.internal.impl.types.model.f argumentsCount) {
        Intrinsics.checkParameterIsNotNull(argumentsCount, "$this$argumentsCount");
        return ClassicTypeSystemContext.DefaultImpls.argumentsCount(this, argumentsCount);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.h e(kotlin.reflect.jvm.internal.impl.types.model.g asArgumentList) {
        Intrinsics.checkParameterIsNotNull(asArgumentList, "$this$asArgumentList");
        return ClassicTypeSystemContext.DefaultImpls.asArgumentList(this, asArgumentList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean e0(kotlin.reflect.jvm.internal.impl.types.model.j a, kotlin.reflect.jvm.internal.impl.types.model.j b) {
        Intrinsics.checkParameterIsNotNull(a, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        if (!(a instanceof f0)) {
            throw new IllegalArgumentException(ClassicTypeCheckerContextKt.a(a).toString());
        }
        if (b instanceof f0) {
            return y0((f0) a, (f0) b);
        }
        throw new IllegalArgumentException(ClassicTypeCheckerContextKt.a(b).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.i f(kotlin.reflect.jvm.internal.impl.types.model.h get, int i) {
        Intrinsics.checkParameterIsNotNull(get, "$this$get");
        return ClassicTypeSystemContext.DefaultImpls.get(this, get, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.k g(kotlin.reflect.jvm.internal.impl.types.model.j getParameter, int i) {
        Intrinsics.checkParameterIsNotNull(getParameter, "$this$getParameter");
        return ClassicTypeSystemContext.DefaultImpls.getParameter(this, getParameter, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public List<kotlin.reflect.jvm.internal.impl.types.model.g> g0(kotlin.reflect.jvm.internal.impl.types.model.g fastCorrespondingSupertypes, kotlin.reflect.jvm.internal.impl.types.model.j constructor) {
        Intrinsics.checkParameterIsNotNull(fastCorrespondingSupertypes, "$this$fastCorrespondingSupertypes");
        Intrinsics.checkParameterIsNotNull(constructor, "constructor");
        return ClassicTypeSystemContext.DefaultImpls.fastCorrespondingSupertypes(this, fastCorrespondingSupertypes, constructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public kotlin.reflect.jvm.internal.impl.types.model.k h(kotlin.reflect.jvm.internal.impl.types.model.j getTypeParameterClassifier) {
        Intrinsics.checkParameterIsNotNull(getTypeParameterClassifier, "$this$getTypeParameterClassifier");
        return ClassicTypeSystemContext.DefaultImpls.getTypeParameterClassifier(this, getTypeParameterClassifier);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public kotlin.reflect.jvm.internal.impl.types.model.i h0(kotlin.reflect.jvm.internal.impl.types.model.g getArgumentOrNull, int i) {
        Intrinsics.checkParameterIsNotNull(getArgumentOrNull, "$this$getArgumentOrNull");
        return ClassicTypeSystemContext.DefaultImpls.getArgumentOrNull(this, getArgumentOrNull, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean i(kotlin.reflect.jvm.internal.impl.types.model.i isStarProjection) {
        Intrinsics.checkParameterIsNotNull(isStarProjection, "$this$isStarProjection");
        return ClassicTypeSystemContext.DefaultImpls.isStarProjection(this, isStarProjection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public TypeVariance j(kotlin.reflect.jvm.internal.impl.types.model.k getVariance) {
        Intrinsics.checkParameterIsNotNull(getVariance, "$this$getVariance");
        return ClassicTypeSystemContext.DefaultImpls.getVariance(this, getVariance);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean k(kotlin.reflect.jvm.internal.impl.types.model.g isSingleClassifierType) {
        Intrinsics.checkParameterIsNotNull(isSingleClassifierType, "$this$isSingleClassifierType");
        return ClassicTypeSystemContext.DefaultImpls.isSingleClassifierType(this, isSingleClassifierType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public int l(kotlin.reflect.jvm.internal.impl.types.model.h size) {
        Intrinsics.checkParameterIsNotNull(size, "$this$size");
        return ClassicTypeSystemContext.DefaultImpls.size(this, size);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean l0(kotlin.reflect.jvm.internal.impl.types.model.f hasFlexibleNullability) {
        Intrinsics.checkParameterIsNotNull(hasFlexibleNullability, "$this$hasFlexibleNullability");
        return ClassicTypeSystemContext.DefaultImpls.hasFlexibleNullability(this, hasFlexibleNullability);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g m(kotlin.reflect.jvm.internal.impl.types.model.f upperBoundIfFlexible) {
        Intrinsics.checkParameterIsNotNull(upperBoundIfFlexible, "$this$upperBoundIfFlexible");
        return ClassicTypeSystemContext.DefaultImpls.upperBoundIfFlexible(this, upperBoundIfFlexible);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean n(kotlin.reflect.jvm.internal.impl.types.model.g isMarkedNullable) {
        Intrinsics.checkParameterIsNotNull(isMarkedNullable, "$this$isMarkedNullable");
        return ClassicTypeSystemContext.DefaultImpls.isMarkedNullable((ClassicTypeSystemContext) this, isMarkedNullable);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean n0(kotlin.reflect.jvm.internal.impl.types.model.f isAllowedTypeVariable) {
        Intrinsics.checkParameterIsNotNull(isAllowedTypeVariable, "$this$isAllowedTypeVariable");
        if (!(isAllowedTypeVariable instanceof m0) || !this.h) {
            return false;
        }
        ((m0) isAllowedTypeVariable).H0();
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean o(kotlin.reflect.jvm.internal.impl.types.model.f isError) {
        Intrinsics.checkParameterIsNotNull(isError, "$this$isError");
        return ClassicTypeSystemContext.DefaultImpls.isError(this, isError);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean o0(kotlin.reflect.jvm.internal.impl.types.model.g isClassType) {
        Intrinsics.checkParameterIsNotNull(isClassType, "$this$isClassType");
        return ClassicTypeSystemContext.DefaultImpls.isClassType(this, isClassType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public boolean p(kotlin.reflect.jvm.internal.impl.types.model.j isInlineClass) {
        Intrinsics.checkParameterIsNotNull(isInlineClass, "$this$isInlineClass");
        return ClassicTypeSystemContext.DefaultImpls.isInlineClass(this, isInlineClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean p0(kotlin.reflect.jvm.internal.impl.types.model.f isDefinitelyNotNullType) {
        Intrinsics.checkParameterIsNotNull(isDefinitelyNotNullType, "$this$isDefinitelyNotNullType");
        return ClassicTypeSystemContext.DefaultImpls.isDefinitelyNotNullType(this, isDefinitelyNotNullType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.i q(kotlin.reflect.jvm.internal.impl.types.model.f asTypeArgument) {
        Intrinsics.checkParameterIsNotNull(asTypeArgument, "$this$asTypeArgument");
        return ClassicTypeSystemContext.DefaultImpls.asTypeArgument(this, asTypeArgument);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean q0(kotlin.reflect.jvm.internal.impl.types.model.f isDynamic) {
        Intrinsics.checkParameterIsNotNull(isDynamic, "$this$isDynamic");
        return ClassicTypeSystemContext.DefaultImpls.isDynamic(this, isDynamic);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.i r(kotlin.reflect.jvm.internal.impl.types.model.f getArgument, int i) {
        Intrinsics.checkParameterIsNotNull(getArgument, "$this$getArgument");
        return ClassicTypeSystemContext.DefaultImpls.getArgument(this, getArgument, i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean r0() {
        return this.f9853f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext
    public PrimitiveType s(kotlin.reflect.jvm.internal.impl.types.model.j getPrimitiveType) {
        Intrinsics.checkParameterIsNotNull(getPrimitiveType, "$this$getPrimitiveType");
        return ClassicTypeSystemContext.DefaultImpls.getPrimitiveType(this, getPrimitiveType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean s0(kotlin.reflect.jvm.internal.impl.types.model.g isIntegerLiteralType) {
        Intrinsics.checkParameterIsNotNull(isIntegerLiteralType, "$this$isIntegerLiteralType");
        return ClassicTypeSystemContext.DefaultImpls.isIntegerLiteralType(this, isIntegerLiteralType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean t(kotlin.reflect.jvm.internal.impl.types.model.j isAnyConstructor) {
        Intrinsics.checkParameterIsNotNull(isAnyConstructor, "$this$isAnyConstructor");
        return ClassicTypeSystemContext.DefaultImpls.isAnyConstructor(this, isAnyConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean t0(kotlin.reflect.jvm.internal.impl.types.model.f isNothing) {
        Intrinsics.checkParameterIsNotNull(isNothing, "$this$isNothing");
        return ClassicTypeSystemContext.DefaultImpls.isNothing(this, isNothing);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean u(kotlin.reflect.jvm.internal.impl.types.model.g isStubType) {
        Intrinsics.checkParameterIsNotNull(isStubType, "$this$isStubType");
        return ClassicTypeSystemContext.DefaultImpls.isStubType(this, isStubType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean u0() {
        return this.f9854g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean v(kotlin.reflect.jvm.internal.impl.types.model.f isNullableType) {
        Intrinsics.checkParameterIsNotNull(isNullableType, "$this$isNullableType");
        return ClassicTypeSystemContext.DefaultImpls.isNullableType(this, isNullableType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public kotlin.reflect.jvm.internal.impl.types.model.f v0(kotlin.reflect.jvm.internal.impl.types.model.f type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (type instanceof u) {
            return f.b.a().h(((u) type).K0());
        }
        throw new IllegalArgumentException(ClassicTypeCheckerContextKt.a(type).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean w(kotlin.reflect.jvm.internal.impl.types.model.j isIntegerLiteralTypeConstructor) {
        Intrinsics.checkParameterIsNotNull(isIntegerLiteralTypeConstructor, "$this$isIntegerLiteralTypeConstructor");
        return ClassicTypeSystemContext.DefaultImpls.isIntegerLiteralTypeConstructor(this, isIntegerLiteralTypeConstructor);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public kotlin.reflect.jvm.internal.impl.types.model.f w0(kotlin.reflect.jvm.internal.impl.types.model.f type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        if (type instanceof u) {
            return this.i.g((u) type);
        }
        throw new IllegalArgumentException(ClassicTypeCheckerContextKt.a(type).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.TypeSystemOptimizationContext
    public boolean x(kotlin.reflect.jvm.internal.impl.types.model.g a, kotlin.reflect.jvm.internal.impl.types.model.g b) {
        Intrinsics.checkParameterIsNotNull(a, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        return ClassicTypeSystemContext.DefaultImpls.identicalArguments(this, a, b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public kotlin.reflect.jvm.internal.impl.types.model.g y(kotlin.reflect.jvm.internal.impl.types.model.e lowerBound) {
        Intrinsics.checkParameterIsNotNull(lowerBound, "$this$lowerBound");
        return ClassicTypeSystemContext.DefaultImpls.lowerBound(this, lowerBound);
    }

    public boolean y0(f0 a, f0 b) {
        Intrinsics.checkParameterIsNotNull(a, "a");
        Intrinsics.checkParameterIsNotNull(b, "b");
        return a instanceof IntegerLiteralTypeConstructor ? ((IntegerLiteralTypeConstructor) a).e(b) : b instanceof IntegerLiteralTypeConstructor ? ((IntegerLiteralTypeConstructor) b).e(a) : Intrinsics.areEqual(a, b);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    public boolean z(kotlin.reflect.jvm.internal.impl.types.model.g isPrimitiveType) {
        Intrinsics.checkParameterIsNotNull(isPrimitiveType, "$this$isPrimitiveType");
        return ClassicTypeSystemContext.DefaultImpls.isPrimitiveType(this, isPrimitiveType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    /* JADX INFO: renamed from: z0, reason: merged with bridge method [inline-methods] */
    public AbstractTypeCheckerContext.a.AbstractC0549a x0(kotlin.reflect.jvm.internal.impl.types.model.g type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return f9852e.a(this, type);
    }
}
