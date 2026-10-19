package kotlin.reflect.jvm.internal.impl.builtins;

import java.util.ArrayList;
import java.util.List;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory;
import kotlin.reflect.jvm.internal.impl.builtins.functions.FunctionClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.BuiltInAnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.g0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: functionTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FunctionTypesKt {
    private static final FunctionClassDescriptor.Kind a(FqNameUnsafe fqNameUnsafe) {
        if (!fqNameUnsafe.f() || fqNameUnsafe.e()) {
            return null;
        }
        BuiltInFictitiousFunctionClassFactory.Companion companion = BuiltInFictitiousFunctionClassFactory.a;
        String strE = fqNameUnsafe.i().e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "shortName().asString()");
        FqName fqNameE = fqNameUnsafe.l().e();
        Intrinsics.checkExpressionValueIsNotNull(fqNameE, "toSafe().parent()");
        return companion.a(strE, fqNameE);
    }

    private static final boolean b(u uVar) {
        Annotations annotations = uVar.getAnnotations();
        FqName fqName = KotlinBuiltIns.h.A;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.extensionFunctionType");
        return annotations.b(fqName) != null;
    }

    public static final y createFunctionType(KotlinBuiltIns builtIns, Annotations annotations, u uVar, List<? extends u> parameterTypes, List<Name> list, u returnType, boolean z) {
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(parameterTypes, "parameterTypes");
        Intrinsics.checkParameterIsNotNull(returnType, "returnType");
        List<g0> functionTypeArgumentProjections = getFunctionTypeArgumentProjections(uVar, parameterTypes, list, returnType, builtIns);
        int size = parameterTypes.size();
        if (uVar != null) {
            size++;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarU = z ? builtIns.U(size) : builtIns.C(size);
        Intrinsics.checkExpressionValueIsNotNull(dVarU, "if (suspendFunction) bui…tFunction(parameterCount)");
        if (uVar != null) {
            KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
            FqName fqName = eVar.A;
            Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.extensionFunctionType");
            if (annotations.b(fqName) == null) {
                Annotations.a aVar = Annotations.e0;
                FqName fqName2 = eVar.A;
                Intrinsics.checkExpressionValueIsNotNull(fqName2, "KotlinBuiltIns.FQ_NAMES.extensionFunctionType");
                annotations = aVar.a(CollectionsKt___CollectionsKt.plus(annotations, new BuiltInAnnotationDescriptor(builtIns, fqName2, MapsKt__MapsKt.emptyMap())));
            }
        }
        return KotlinTypeFactory.simpleNotNullType(annotations, dVarU, functionTypeArgumentProjections);
    }

    public static final Name extractParameterNameFromFunctionTypeArgument(u extractParameterNameFromFunctionTypeArgument) {
        String strB;
        Intrinsics.checkParameterIsNotNull(extractParameterNameFromFunctionTypeArgument, "$this$extractParameterNameFromFunctionTypeArgument");
        Annotations annotations = extractParameterNameFromFunctionTypeArgument.getAnnotations();
        FqName fqName = KotlinBuiltIns.h.B;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.parameterName");
        AnnotationDescriptor annotationDescriptorB = annotations.b(fqName);
        if (annotationDescriptorB != null) {
            Object objSingleOrNull = p.singleOrNull(annotationDescriptorB.a().values());
            if (!(objSingleOrNull instanceof kotlin.reflect.jvm.internal.impl.resolve.constants.u)) {
                objSingleOrNull = null;
            }
            kotlin.reflect.jvm.internal.impl.resolve.constants.u uVar = (kotlin.reflect.jvm.internal.impl.resolve.constants.u) objSingleOrNull;
            if (uVar != null && (strB = uVar.b()) != null) {
                if (!Name.isValidIdentifier(strB)) {
                    strB = null;
                }
                if (strB != null) {
                    return Name.identifier(strB);
                }
            }
        }
        return null;
    }

    public static final List<g0> getFunctionTypeArgumentProjections(u uVar, List<? extends u> parameterTypes, List<Name> list, u returnType, KotlinBuiltIns builtIns) {
        Name name;
        Intrinsics.checkParameterIsNotNull(parameterTypes, "parameterTypes");
        Intrinsics.checkParameterIsNotNull(returnType, "returnType");
        Intrinsics.checkParameterIsNotNull(builtIns, "builtIns");
        int i = 0;
        ArrayList arrayList = new ArrayList(parameterTypes.size() + (uVar != null ? 1 : 0) + 1);
        CollectionsKt.addIfNotNull(arrayList, uVar != null ? TypeUtilsKt.asTypeProjection(uVar) : null);
        for (Object obj : parameterTypes) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            u uVarReplaceAnnotations = (u) obj;
            if (list == null || (name = list.get(i)) == null || name.h()) {
                name = null;
            }
            if (name != null) {
                FqName fqName = KotlinBuiltIns.h.B;
                Intrinsics.checkExpressionValueIsNotNull(fqName, "KotlinBuiltIns.FQ_NAMES.parameterName");
                Name nameIdentifier = Name.identifier("name");
                String strE = name.e();
                Intrinsics.checkExpressionValueIsNotNull(strE, "name.asString()");
                uVarReplaceAnnotations = TypeUtilsKt.replaceAnnotations(uVarReplaceAnnotations, Annotations.e0.a(CollectionsKt___CollectionsKt.plus(uVarReplaceAnnotations.getAnnotations(), new BuiltInAnnotationDescriptor(builtIns, fqName, MapsKt__MapsJVMKt.mapOf(TuplesKt.to(nameIdentifier, new kotlin.reflect.jvm.internal.impl.resolve.constants.u(strE)))))));
            }
            arrayList.add(TypeUtilsKt.asTypeProjection(uVarReplaceAnnotations));
            i = i2;
        }
        arrayList.add(TypeUtilsKt.asTypeProjection(returnType));
        return arrayList;
    }

    public static final FunctionClassDescriptor.Kind getFunctionalClassKind(i getFunctionalClassKind) {
        Intrinsics.checkParameterIsNotNull(getFunctionalClassKind, "$this$getFunctionalClassKind");
        if ((getFunctionalClassKind instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && KotlinBuiltIns.isUnderKotlinPackage(getFunctionalClassKind)) {
            return a(DescriptorUtilsKt.getFqNameUnsafe(getFunctionalClassKind));
        }
        return null;
    }

    public static final u getReceiverTypeFromFunctionType(u getReceiverTypeFromFunctionType) {
        Intrinsics.checkParameterIsNotNull(getReceiverTypeFromFunctionType, "$this$getReceiverTypeFromFunctionType");
        isBuiltinFunctionalType(getReceiverTypeFromFunctionType);
        if (b(getReceiverTypeFromFunctionType)) {
            return ((g0) p.first((List) getReceiverTypeFromFunctionType.G0())).getType();
        }
        return null;
    }

    public static final u getReturnTypeFromFunctionType(u getReturnTypeFromFunctionType) {
        Intrinsics.checkParameterIsNotNull(getReturnTypeFromFunctionType, "$this$getReturnTypeFromFunctionType");
        isBuiltinFunctionalType(getReturnTypeFromFunctionType);
        u type = ((g0) p.last((List) getReturnTypeFromFunctionType.G0())).getType();
        Intrinsics.checkExpressionValueIsNotNull(type, "arguments.last().type");
        return type;
    }

    public static final List<g0> getValueParameterTypesFromFunctionType(u getValueParameterTypesFromFunctionType) {
        Intrinsics.checkParameterIsNotNull(getValueParameterTypesFromFunctionType, "$this$getValueParameterTypesFromFunctionType");
        isBuiltinFunctionalType(getValueParameterTypesFromFunctionType);
        return getValueParameterTypesFromFunctionType.G0().subList(isBuiltinExtensionFunctionalType(getValueParameterTypesFromFunctionType) ? 1 : 0, r0.size() - 1);
    }

    public static final boolean isBuiltinExtensionFunctionalType(u isBuiltinExtensionFunctionalType) {
        Intrinsics.checkParameterIsNotNull(isBuiltinExtensionFunctionalType, "$this$isBuiltinExtensionFunctionalType");
        return isBuiltinFunctionalType(isBuiltinExtensionFunctionalType) && b(isBuiltinExtensionFunctionalType);
    }

    public static final boolean isBuiltinFunctionalType(u isBuiltinFunctionalType) {
        Intrinsics.checkParameterIsNotNull(isBuiltinFunctionalType, "$this$isBuiltinFunctionalType");
        f fVarQ = isBuiltinFunctionalType.H0().q();
        FunctionClassDescriptor.Kind functionalClassKind = fVarQ != null ? getFunctionalClassKind(fVarQ) : null;
        return functionalClassKind == FunctionClassDescriptor.Kind.a || functionalClassKind == FunctionClassDescriptor.Kind.b;
    }

    public static final boolean isFunctionType(u isFunctionType) {
        Intrinsics.checkParameterIsNotNull(isFunctionType, "$this$isFunctionType");
        f fVarQ = isFunctionType.H0().q();
        return (fVarQ != null ? getFunctionalClassKind(fVarQ) : null) == FunctionClassDescriptor.Kind.a;
    }

    public static final boolean isSuspendFunctionType(u isSuspendFunctionType) {
        Intrinsics.checkParameterIsNotNull(isSuspendFunctionType, "$this$isSuspendFunctionType");
        f fVarQ = isSuspendFunctionType.H0().q();
        return (fVarQ != null ? getFunctionalClassKind(fVarQ) : null) == FunctionClassDescriptor.Kind.b;
    }
}
