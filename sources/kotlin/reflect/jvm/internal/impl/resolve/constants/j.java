package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorUtils;
import kotlin.reflect.jvm.internal.impl.types.ErrorUtils;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class j extends g<Pair<? extends ClassId, ? extends Name>> {
    private final ClassId b;
    private final Name c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(ClassId enumClassId, Name enumEntryName) {
        super(TuplesKt.to(enumClassId, enumEntryName));
        Intrinsics.checkParameterIsNotNull(enumClassId, "enumClassId");
        Intrinsics.checkParameterIsNotNull(enumEntryName, "enumEntryName");
        this.b = enumClassId;
        this.c = enumEntryName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public kotlin.reflect.jvm.internal.impl.types.u a(ModuleDescriptor module) {
        kotlin.reflect.jvm.internal.impl.types.y yVarN;
        Intrinsics.checkParameterIsNotNull(module, "module");
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarFindClassAcrossModuleDependencies = FindClassInModuleKt.findClassAcrossModuleDependencies(module, this.b);
        if (dVarFindClassAcrossModuleDependencies != null) {
            if (!DescriptorUtils.isEnumClass(dVarFindClassAcrossModuleDependencies)) {
                dVarFindClassAcrossModuleDependencies = null;
            }
            if (dVarFindClassAcrossModuleDependencies != null && (yVarN = dVarFindClassAcrossModuleDependencies.n()) != null) {
                return yVarN;
            }
        }
        kotlin.reflect.jvm.internal.impl.types.y yVarCreateErrorType = ErrorUtils.createErrorType("Containing class for error-class based enum entry " + this.b + '.' + this.c);
        Intrinsics.checkExpressionValueIsNotNull(yVarCreateErrorType, "ErrorUtils.createErrorTy…mClassId.$enumEntryName\")");
        return yVarCreateErrorType;
    }

    public final Name c() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b.h());
        sb.append('.');
        sb.append(this.c);
        return sb.toString();
    }
}
