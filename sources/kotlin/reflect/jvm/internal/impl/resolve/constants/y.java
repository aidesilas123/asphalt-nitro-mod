package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class y extends z<Short> {
    public y(short s) {
        super(Short.valueOf(s));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public kotlin.reflect.jvm.internal.impl.types.u a(ModuleDescriptor module) {
        kotlin.reflect.jvm.internal.impl.types.y yVarN;
        Intrinsics.checkParameterIsNotNull(module, "module");
        ClassId classId = KotlinBuiltIns.h.s0;
        Intrinsics.checkExpressionValueIsNotNull(classId, "KotlinBuiltIns.FQ_NAMES.uShort");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarFindClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(module, classId);
        if (dVarFindClassAcrossModuleDependencies != null && (yVarN = dVarFindClassAcrossModuleDependencies.n()) != null) {
            return yVarN;
        }
        kotlin.reflect.jvm.internal.impl.types.y yVarCreateErrorType = ErrorUtils.createErrorType("Unsigned type UShort not found");
        Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy…d type UShort not found\")");
        return yVarCreateErrorType;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return ((int) b().shortValue()) + ".toUShort()";
    }
}
