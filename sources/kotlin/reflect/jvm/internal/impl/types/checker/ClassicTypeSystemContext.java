package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.Collection;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.ModalityKt;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.resolve.InlineClassesUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSystemCommonBackendContext;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.m0;
import kotlin.reflect.jvm.internal.impl.types.model.CaptureStatus;
import kotlin.reflect.jvm.internal.impl.types.model.TypeSystemInferenceExtensionContext;
import kotlin.reflect.jvm.internal.impl.types.model.TypeVariance;
import kotlin.reflect.jvm.internal.impl.types.p;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: compiled from: ClassicTypeSystemContext.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ClassicTypeSystemContext extends TypeSystemCommonBackendContext, TypeSystemInferenceExtensionContext {

    /* JADX INFO: compiled from: ClassicTypeSystemContext.kt */
    public static final class DefaultImpls {
        public static int argumentsCount(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f argumentsCount) {
            Intrinsics.checkParameterIsNotNull(argumentsCount, "$this$argumentsCount");
            if (argumentsCount instanceof u) {
                return ((u) argumentsCount).G0().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + argumentsCount + ", " + Reflection.getOrCreateKotlinClass(argumentsCount.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.h asArgumentList(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g asArgumentList) {
            Intrinsics.checkParameterIsNotNull(asArgumentList, "$this$asArgumentList");
            if (asArgumentList instanceof y) {
                return (kotlin.reflect.jvm.internal.impl.types.model.h) asArgumentList;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asArgumentList + ", " + Reflection.getOrCreateKotlinClass(asArgumentList.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.b asCapturedType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g asCapturedType) {
            Intrinsics.checkParameterIsNotNull(asCapturedType, "$this$asCapturedType");
            if (asCapturedType instanceof y) {
                if (!(asCapturedType instanceof e)) {
                    asCapturedType = null;
                }
                return (e) asCapturedType;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asCapturedType + ", " + Reflection.getOrCreateKotlinClass(asCapturedType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.c asDefinitelyNotNullType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g asDefinitelyNotNullType) {
            Intrinsics.checkParameterIsNotNull(asDefinitelyNotNullType, "$this$asDefinitelyNotNullType");
            if (asDefinitelyNotNullType instanceof y) {
                if (!(asDefinitelyNotNullType instanceof kotlin.reflect.jvm.internal.impl.types.j)) {
                    asDefinitelyNotNullType = null;
                }
                return (kotlin.reflect.jvm.internal.impl.types.j) asDefinitelyNotNullType;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asDefinitelyNotNullType + ", " + Reflection.getOrCreateKotlinClass(asDefinitelyNotNullType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.d asDynamicType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.e asDynamicType) {
            Intrinsics.checkParameterIsNotNull(asDynamicType, "$this$asDynamicType");
            if (asDynamicType instanceof p) {
                if (!(asDynamicType instanceof kotlin.reflect.jvm.internal.impl.types.n)) {
                    asDynamicType = null;
                }
                return (kotlin.reflect.jvm.internal.impl.types.n) asDynamicType;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asDynamicType + ", " + Reflection.getOrCreateKotlinClass(asDynamicType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.e asFlexibleType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f asFlexibleType) {
            Intrinsics.checkParameterIsNotNull(asFlexibleType, "$this$asFlexibleType");
            if (asFlexibleType instanceof u) {
                m0 m0VarK0 = ((u) asFlexibleType).K0();
                if (!(m0VarK0 instanceof p)) {
                    m0VarK0 = null;
                }
                return (p) m0VarK0;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asFlexibleType + ", " + Reflection.getOrCreateKotlinClass(asFlexibleType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g asSimpleType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f asSimpleType) {
            Intrinsics.checkParameterIsNotNull(asSimpleType, "$this$asSimpleType");
            if (asSimpleType instanceof u) {
                m0 m0VarK0 = ((u) asSimpleType).K0();
                if (!(m0VarK0 instanceof y)) {
                    m0VarK0 = null;
                }
                return (y) m0VarK0;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asSimpleType + ", " + Reflection.getOrCreateKotlinClass(asSimpleType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.i asTypeArgument(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f asTypeArgument) {
            Intrinsics.checkParameterIsNotNull(asTypeArgument, "$this$asTypeArgument");
            if (asTypeArgument instanceof u) {
                return TypeUtilsKt.asTypeProjection((u) asTypeArgument);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + asTypeArgument + ", " + Reflection.getOrCreateKotlinClass(asTypeArgument.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g captureFromArguments(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g type, CaptureStatus status) {
            Intrinsics.checkParameterIsNotNull(type, "type");
            Intrinsics.checkParameterIsNotNull(status, "status");
            if (type instanceof y) {
                return NewCapturedTypeKt.captureFromArguments((y) type, status);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + type + ", " + Reflection.getOrCreateKotlinClass(type.getClass())).toString());
        }

        public static List<kotlin.reflect.jvm.internal.impl.types.model.g> fastCorrespondingSupertypes(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g fastCorrespondingSupertypes, kotlin.reflect.jvm.internal.impl.types.model.j constructor) {
            Intrinsics.checkParameterIsNotNull(fastCorrespondingSupertypes, "$this$fastCorrespondingSupertypes");
            Intrinsics.checkParameterIsNotNull(constructor, "constructor");
            return TypeSystemInferenceExtensionContext.DefaultImpls.fastCorrespondingSupertypes(classicTypeSystemContext, fastCorrespondingSupertypes, constructor);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.i get(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.h get, int i) {
            Intrinsics.checkParameterIsNotNull(get, "$this$get");
            return TypeSystemInferenceExtensionContext.DefaultImpls.get(classicTypeSystemContext, get, i);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.i getArgument(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f getArgument, int i) {
            Intrinsics.checkParameterIsNotNull(getArgument, "$this$getArgument");
            if (getArgument instanceof u) {
                return ((u) getArgument).G0().get(i);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getArgument + ", " + Reflection.getOrCreateKotlinClass(getArgument.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.i getArgumentOrNull(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g getArgumentOrNull, int i) {
            Intrinsics.checkParameterIsNotNull(getArgumentOrNull, "$this$getArgumentOrNull");
            return TypeSystemInferenceExtensionContext.DefaultImpls.getArgumentOrNull(classicTypeSystemContext, getArgumentOrNull, i);
        }

        public static FqNameUnsafe getClassFqNameUnsafe(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j getClassFqNameUnsafe) {
            Intrinsics.checkParameterIsNotNull(getClassFqNameUnsafe, "$this$getClassFqNameUnsafe");
            if (getClassFqNameUnsafe instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) getClassFqNameUnsafe).q();
                if (fVarQ != null) {
                    return DescriptorUtilsKt.getFqNameUnsafe((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ);
                }
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getClassFqNameUnsafe + ", " + Reflection.getOrCreateKotlinClass(getClassFqNameUnsafe.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.k getParameter(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j getParameter, int i) {
            Intrinsics.checkParameterIsNotNull(getParameter, "$this$getParameter");
            if (getParameter instanceof f0) {
                i0 i0Var = ((f0) getParameter).getParameters().get(i);
                Intrinsics.checkExpressionValueIsNotNull(i0Var, "this.parameters[index]");
                return i0Var;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getParameter + ", " + Reflection.getOrCreateKotlinClass(getParameter.getClass())).toString());
        }

        public static PrimitiveType getPrimitiveArrayType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j getPrimitiveArrayType) {
            Intrinsics.checkParameterIsNotNull(getPrimitiveArrayType, "$this$getPrimitiveArrayType");
            if (getPrimitiveArrayType instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) getPrimitiveArrayType).q();
                if (fVarQ != null) {
                    return KotlinBuiltIns.getPrimitiveArrayType((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ);
                }
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getPrimitiveArrayType + ", " + Reflection.getOrCreateKotlinClass(getPrimitiveArrayType.getClass())).toString());
        }

        public static PrimitiveType getPrimitiveType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j getPrimitiveType) {
            Intrinsics.checkParameterIsNotNull(getPrimitiveType, "$this$getPrimitiveType");
            if (getPrimitiveType instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) getPrimitiveType).q();
                if (fVarQ != null) {
                    return KotlinBuiltIns.getPrimitiveType((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ);
                }
                throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getPrimitiveType + ", " + Reflection.getOrCreateKotlinClass(getPrimitiveType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f getRepresentativeUpperBound(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.k getRepresentativeUpperBound) {
            Intrinsics.checkParameterIsNotNull(getRepresentativeUpperBound, "$this$getRepresentativeUpperBound");
            if (getRepresentativeUpperBound instanceof i0) {
                return TypeUtilsKt.getRepresentativeUpperBound((i0) getRepresentativeUpperBound);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getRepresentativeUpperBound + ", " + Reflection.getOrCreateKotlinClass(getRepresentativeUpperBound.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f getSubstitutedUnderlyingType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f getSubstitutedUnderlyingType) {
            Intrinsics.checkParameterIsNotNull(getSubstitutedUnderlyingType, "$this$getSubstitutedUnderlyingType");
            if (getSubstitutedUnderlyingType instanceof u) {
                return InlineClassesUtilsKt.substitutedUnderlyingType((u) getSubstitutedUnderlyingType);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getSubstitutedUnderlyingType + ", " + Reflection.getOrCreateKotlinClass(getSubstitutedUnderlyingType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f getType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.i getType) {
            Intrinsics.checkParameterIsNotNull(getType, "$this$getType");
            if (getType instanceof g0) {
                return ((g0) getType).getType().K0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getType + ", " + Reflection.getOrCreateKotlinClass(getType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.k getTypeParameterClassifier(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j getTypeParameterClassifier) {
            Intrinsics.checkParameterIsNotNull(getTypeParameterClassifier, "$this$getTypeParameterClassifier");
            if (getTypeParameterClassifier instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) getTypeParameterClassifier).q();
                if (!(fVarQ instanceof i0)) {
                    fVarQ = null;
                }
                return (i0) fVarQ;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getTypeParameterClassifier + ", " + Reflection.getOrCreateKotlinClass(getTypeParameterClassifier.getClass())).toString());
        }

        public static TypeVariance getVariance(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.i getVariance) {
            Intrinsics.checkParameterIsNotNull(getVariance, "$this$getVariance");
            if (getVariance instanceof g0) {
                Variance varianceC = ((g0) getVariance).c();
                Intrinsics.checkExpressionValueIsNotNull(varianceC, "this.projectionKind");
                return ClassicTypeSystemContextKt.convertVariance(varianceC);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getVariance + ", " + Reflection.getOrCreateKotlinClass(getVariance.getClass())).toString());
        }

        public static TypeVariance getVariance(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.k getVariance) {
            Intrinsics.checkParameterIsNotNull(getVariance, "$this$getVariance");
            if (getVariance instanceof i0) {
                Variance varianceJ = ((i0) getVariance).j();
                Intrinsics.checkExpressionValueIsNotNull(varianceJ, "this.variance");
                return ClassicTypeSystemContextKt.convertVariance(varianceJ);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + getVariance + ", " + Reflection.getOrCreateKotlinClass(getVariance.getClass())).toString());
        }

        public static boolean hasAnnotation(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f hasAnnotation, FqName fqName) {
            Intrinsics.checkParameterIsNotNull(hasAnnotation, "$this$hasAnnotation");
            Intrinsics.checkParameterIsNotNull(fqName, "fqName");
            if (hasAnnotation instanceof u) {
                return ((u) hasAnnotation).getAnnotations().N(fqName);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + hasAnnotation + ", " + Reflection.getOrCreateKotlinClass(hasAnnotation.getClass())).toString());
        }

        public static boolean hasFlexibleNullability(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f hasFlexibleNullability) {
            Intrinsics.checkParameterIsNotNull(hasFlexibleNullability, "$this$hasFlexibleNullability");
            return TypeSystemInferenceExtensionContext.DefaultImpls.hasFlexibleNullability(classicTypeSystemContext, hasFlexibleNullability);
        }

        public static boolean identicalArguments(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g a, kotlin.reflect.jvm.internal.impl.types.model.g b) {
            Intrinsics.checkParameterIsNotNull(a, "a");
            Intrinsics.checkParameterIsNotNull(b, "b");
            if (!(a instanceof y)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + a + ", " + Reflection.getOrCreateKotlinClass(a.getClass())).toString());
            }
            if (b instanceof y) {
                return ((y) a).G0() == ((y) b).G0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + b + ", " + Reflection.getOrCreateKotlinClass(b.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f intersectTypes(ClassicTypeSystemContext classicTypeSystemContext, List<? extends kotlin.reflect.jvm.internal.impl.types.model.f> types) {
            Intrinsics.checkParameterIsNotNull(types, "types");
            return IntersectionTypeKt.intersectTypes(types);
        }

        public static boolean isAnyConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isAnyConstructor) {
            Intrinsics.checkParameterIsNotNull(isAnyConstructor, "$this$isAnyConstructor");
            if (isAnyConstructor instanceof f0) {
                return KotlinBuiltIns.isTypeConstructorForGivenClass((f0) isAnyConstructor, KotlinBuiltIns.h.a);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isAnyConstructor + ", " + Reflection.getOrCreateKotlinClass(isAnyConstructor.getClass())).toString());
        }

        public static boolean isClassType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g isClassType) {
            Intrinsics.checkParameterIsNotNull(isClassType, "$this$isClassType");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isClassType(classicTypeSystemContext, isClassType);
        }

        public static boolean isClassTypeConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isClassTypeConstructor) {
            Intrinsics.checkParameterIsNotNull(isClassTypeConstructor, "$this$isClassTypeConstructor");
            if (isClassTypeConstructor instanceof f0) {
                return ((f0) isClassTypeConstructor).q() instanceof kotlin.reflect.jvm.internal.impl.descriptors.d;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isClassTypeConstructor + ", " + Reflection.getOrCreateKotlinClass(isClassTypeConstructor.getClass())).toString());
        }

        public static boolean isCommonFinalClassConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isCommonFinalClassConstructor) {
            Intrinsics.checkParameterIsNotNull(isCommonFinalClassConstructor, "$this$isCommonFinalClassConstructor");
            if (isCommonFinalClassConstructor instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) isCommonFinalClassConstructor).q();
                if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                    fVarQ = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
                return (dVar == null || !ModalityKt.isFinalClass(dVar) || dVar.getKind() == ClassKind.ENUM_ENTRY || dVar.getKind() == ClassKind.ANNOTATION_CLASS) ? false : true;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isCommonFinalClassConstructor + ", " + Reflection.getOrCreateKotlinClass(isCommonFinalClassConstructor.getClass())).toString());
        }

        public static boolean isDefinitelyNotNullType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f isDefinitelyNotNullType) {
            Intrinsics.checkParameterIsNotNull(isDefinitelyNotNullType, "$this$isDefinitelyNotNullType");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isDefinitelyNotNullType(classicTypeSystemContext, isDefinitelyNotNullType);
        }

        public static boolean isDenotable(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isDenotable) {
            Intrinsics.checkParameterIsNotNull(isDenotable, "$this$isDenotable");
            if (isDenotable instanceof f0) {
                return ((f0) isDenotable).d();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isDenotable + ", " + Reflection.getOrCreateKotlinClass(isDenotable.getClass())).toString());
        }

        public static boolean isDynamic(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f isDynamic) {
            Intrinsics.checkParameterIsNotNull(isDynamic, "$this$isDynamic");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isDynamic(classicTypeSystemContext, isDynamic);
        }

        public static boolean isEqualTypeConstructors(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j c1, kotlin.reflect.jvm.internal.impl.types.model.j c2) {
            Intrinsics.checkParameterIsNotNull(c1, "c1");
            Intrinsics.checkParameterIsNotNull(c2, "c2");
            if (!(c1 instanceof f0)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c1 + ", " + Reflection.getOrCreateKotlinClass(c1.getClass())).toString());
            }
            if (c2 instanceof f0) {
                return Intrinsics.areEqual(c1, c2);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + c2 + ", " + Reflection.getOrCreateKotlinClass(c2.getClass())).toString());
        }

        public static boolean isError(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f isError) {
            Intrinsics.checkParameterIsNotNull(isError, "$this$isError");
            if (isError instanceof u) {
                return KotlinTypeKt.isError((u) isError);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isError + ", " + Reflection.getOrCreateKotlinClass(isError.getClass())).toString());
        }

        public static boolean isInlineClass(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isInlineClass) {
            Intrinsics.checkParameterIsNotNull(isInlineClass, "$this$isInlineClass");
            if (isInlineClass instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) isInlineClass).q();
                if (!(fVarQ instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
                    fVarQ = null;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarQ;
                return dVar != null && dVar.isInline();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isInlineClass + ", " + Reflection.getOrCreateKotlinClass(isInlineClass.getClass())).toString());
        }

        public static boolean isIntegerLiteralType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g isIntegerLiteralType) {
            Intrinsics.checkParameterIsNotNull(isIntegerLiteralType, "$this$isIntegerLiteralType");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isIntegerLiteralType(classicTypeSystemContext, isIntegerLiteralType);
        }

        public static boolean isIntegerLiteralTypeConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isIntegerLiteralTypeConstructor) {
            Intrinsics.checkParameterIsNotNull(isIntegerLiteralTypeConstructor, "$this$isIntegerLiteralTypeConstructor");
            if (isIntegerLiteralTypeConstructor instanceof f0) {
                return isIntegerLiteralTypeConstructor instanceof IntegerLiteralTypeConstructor;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isIntegerLiteralTypeConstructor + ", " + Reflection.getOrCreateKotlinClass(isIntegerLiteralTypeConstructor.getClass())).toString());
        }

        public static boolean isIntersection(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isIntersection) {
            Intrinsics.checkParameterIsNotNull(isIntersection, "$this$isIntersection");
            if (isIntersection instanceof f0) {
                return isIntersection instanceof t;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isIntersection + ", " + Reflection.getOrCreateKotlinClass(isIntersection.getClass())).toString());
        }

        public static boolean isMarkedNullable(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f isMarkedNullable) {
            Intrinsics.checkParameterIsNotNull(isMarkedNullable, "$this$isMarkedNullable");
            return TypeSystemCommonBackendContext.DefaultImpls.isMarkedNullable(classicTypeSystemContext, isMarkedNullable);
        }

        public static boolean isMarkedNullable(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g isMarkedNullable) {
            Intrinsics.checkParameterIsNotNull(isMarkedNullable, "$this$isMarkedNullable");
            if (isMarkedNullable instanceof y) {
                return ((y) isMarkedNullable).I0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isMarkedNullable + ", " + Reflection.getOrCreateKotlinClass(isMarkedNullable.getClass())).toString());
        }

        public static boolean isNothing(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f isNothing) {
            Intrinsics.checkParameterIsNotNull(isNothing, "$this$isNothing");
            return TypeSystemInferenceExtensionContext.DefaultImpls.isNothing(classicTypeSystemContext, isNothing);
        }

        public static boolean isNothingConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isNothingConstructor) {
            Intrinsics.checkParameterIsNotNull(isNothingConstructor, "$this$isNothingConstructor");
            if (isNothingConstructor instanceof f0) {
                return KotlinBuiltIns.isTypeConstructorForGivenClass((f0) isNothingConstructor, KotlinBuiltIns.h.b);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isNothingConstructor + ", " + Reflection.getOrCreateKotlinClass(isNothingConstructor.getClass())).toString());
        }

        public static boolean isNullableType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f isNullableType) {
            Intrinsics.checkParameterIsNotNull(isNullableType, "$this$isNullableType");
            if (isNullableType instanceof u) {
                return TypeUtils.isNullableType((u) isNullableType);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isNullableType + ", " + Reflection.getOrCreateKotlinClass(isNullableType.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean isPrimitiveType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g isPrimitiveType) {
            Intrinsics.checkParameterIsNotNull(isPrimitiveType, "$this$isPrimitiveType");
            if (isPrimitiveType instanceof u) {
                return KotlinBuiltIns.isPrimitiveType((u) isPrimitiveType);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isPrimitiveType + ", " + Reflection.getOrCreateKotlinClass(isPrimitiveType.getClass())).toString());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static boolean isSingleClassifierType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g isSingleClassifierType) {
            Intrinsics.checkParameterIsNotNull(isSingleClassifierType, "$this$isSingleClassifierType");
            if (!(isSingleClassifierType instanceof y)) {
                throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isSingleClassifierType + ", " + Reflection.getOrCreateKotlinClass(isSingleClassifierType.getClass())).toString());
            }
            if (!KotlinTypeKt.isError((u) isSingleClassifierType)) {
                y yVar = (y) isSingleClassifierType;
                if (!(yVar.H0().q() instanceof h0) && (yVar.H0().q() != null || (isSingleClassifierType instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.a) || (isSingleClassifierType instanceof e) || (isSingleClassifierType instanceof kotlin.reflect.jvm.internal.impl.types.j) || (yVar.H0() instanceof IntegerLiteralTypeConstructor))) {
                    return true;
                }
            }
            return false;
        }

        public static boolean isStarProjection(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.i isStarProjection) {
            Intrinsics.checkParameterIsNotNull(isStarProjection, "$this$isStarProjection");
            if (isStarProjection instanceof g0) {
                return ((g0) isStarProjection).b();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isStarProjection + ", " + Reflection.getOrCreateKotlinClass(isStarProjection.getClass())).toString());
        }

        public static boolean isStubType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g isStubType) {
            Intrinsics.checkParameterIsNotNull(isStubType, "$this$isStubType");
            if (isStubType instanceof y) {
                return false;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isStubType + ", " + Reflection.getOrCreateKotlinClass(isStubType.getClass())).toString());
        }

        public static boolean isUnderKotlinPackage(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j isUnderKotlinPackage) {
            Intrinsics.checkParameterIsNotNull(isUnderKotlinPackage, "$this$isUnderKotlinPackage");
            if (isUnderKotlinPackage instanceof f0) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((f0) isUnderKotlinPackage).q();
                return fVarQ != null && KotlinBuiltIns.isUnderKotlinPackage(fVarQ);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + isUnderKotlinPackage + ", " + Reflection.getOrCreateKotlinClass(isUnderKotlinPackage.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g lowerBound(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.e lowerBound) {
            Intrinsics.checkParameterIsNotNull(lowerBound, "$this$lowerBound");
            if (lowerBound instanceof p) {
                return ((p) lowerBound).P0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + lowerBound + ", " + Reflection.getOrCreateKotlinClass(lowerBound.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g lowerBoundIfFlexible(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f lowerBoundIfFlexible) {
            Intrinsics.checkParameterIsNotNull(lowerBoundIfFlexible, "$this$lowerBoundIfFlexible");
            return TypeSystemInferenceExtensionContext.DefaultImpls.lowerBoundIfFlexible(classicTypeSystemContext, lowerBoundIfFlexible);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f lowerType(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.b lowerType) {
            Intrinsics.checkParameterIsNotNull(lowerType, "$this$lowerType");
            if (lowerType instanceof e) {
                return ((e) lowerType).R0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + lowerType + ", " + Reflection.getOrCreateKotlinClass(lowerType.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.f makeNullable(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f makeNullable) {
            Intrinsics.checkParameterIsNotNull(makeNullable, "$this$makeNullable");
            return TypeSystemCommonBackendContext.DefaultImpls.makeNullable(classicTypeSystemContext, makeNullable);
        }

        public static AbstractTypeCheckerContext newBaseTypeCheckerContext(ClassicTypeSystemContext classicTypeSystemContext, boolean z, boolean z2) {
            return new a(z, z2, false, null, 12, null);
        }

        public static int parametersCount(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j parametersCount) {
            Intrinsics.checkParameterIsNotNull(parametersCount, "$this$parametersCount");
            if (parametersCount instanceof f0) {
                return ((f0) parametersCount).getParameters().size();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + parametersCount + ", " + Reflection.getOrCreateKotlinClass(parametersCount.getClass())).toString());
        }

        public static Collection<kotlin.reflect.jvm.internal.impl.types.model.f> possibleIntegerTypes(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g possibleIntegerTypes) {
            Intrinsics.checkParameterIsNotNull(possibleIntegerTypes, "$this$possibleIntegerTypes");
            kotlin.reflect.jvm.internal.impl.types.model.j jVarB = classicTypeSystemContext.b(possibleIntegerTypes);
            if (jVarB instanceof IntegerLiteralTypeConstructor) {
                return ((IntegerLiteralTypeConstructor) jVarB).f();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + possibleIntegerTypes + ", " + Reflection.getOrCreateKotlinClass(possibleIntegerTypes.getClass())).toString());
        }

        public static int size(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.h size) {
            Intrinsics.checkParameterIsNotNull(size, "$this$size");
            return TypeSystemInferenceExtensionContext.DefaultImpls.size(classicTypeSystemContext, size);
        }

        public static Collection<kotlin.reflect.jvm.internal.impl.types.model.f> supertypes(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.j supertypes) {
            Intrinsics.checkParameterIsNotNull(supertypes, "$this$supertypes");
            if (supertypes instanceof f0) {
                Collection<u> collectionH = ((f0) supertypes).h();
                Intrinsics.checkExpressionValueIsNotNull(collectionH, "this.supertypes");
                return collectionH;
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + supertypes + ", " + Reflection.getOrCreateKotlinClass(supertypes.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j typeConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f typeConstructor) {
            Intrinsics.checkParameterIsNotNull(typeConstructor, "$this$typeConstructor");
            return TypeSystemInferenceExtensionContext.DefaultImpls.typeConstructor(classicTypeSystemContext, typeConstructor);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.j typeConstructor(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g typeConstructor) {
            Intrinsics.checkParameterIsNotNull(typeConstructor, "$this$typeConstructor");
            if (typeConstructor instanceof y) {
                return ((y) typeConstructor).H0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + typeConstructor + ", " + Reflection.getOrCreateKotlinClass(typeConstructor.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g upperBound(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.e upperBound) {
            Intrinsics.checkParameterIsNotNull(upperBound, "$this$upperBound");
            if (upperBound instanceof p) {
                return ((p) upperBound).Q0();
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + upperBound + ", " + Reflection.getOrCreateKotlinClass(upperBound.getClass())).toString());
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g upperBoundIfFlexible(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.f upperBoundIfFlexible) {
            Intrinsics.checkParameterIsNotNull(upperBoundIfFlexible, "$this$upperBoundIfFlexible");
            return TypeSystemInferenceExtensionContext.DefaultImpls.upperBoundIfFlexible(classicTypeSystemContext, upperBoundIfFlexible);
        }

        public static kotlin.reflect.jvm.internal.impl.types.model.g withNullability(ClassicTypeSystemContext classicTypeSystemContext, kotlin.reflect.jvm.internal.impl.types.model.g withNullability, boolean z) {
            Intrinsics.checkParameterIsNotNull(withNullability, "$this$withNullability");
            if (withNullability instanceof y) {
                return ((y) withNullability).L0(z);
            }
            throw new IllegalArgumentException(("ClassicTypeSystemContext couldn't handle: " + withNullability + ", " + Reflection.getOrCreateKotlinClass(withNullability.getClass())).toString());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    kotlin.reflect.jvm.internal.impl.types.model.g a(kotlin.reflect.jvm.internal.impl.types.model.f fVar);

    @Override // kotlin.reflect.jvm.internal.impl.types.model.TypeSystemContext
    kotlin.reflect.jvm.internal.impl.types.model.j b(kotlin.reflect.jvm.internal.impl.types.model.g gVar);
}
