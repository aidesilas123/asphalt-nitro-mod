package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class u extends g<String> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(String value) {
        super(value);
        Intrinsics.checkParameterIsNotNull(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.types.y a(ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        kotlin.reflect.jvm.internal.impl.types.y yVarT = module.k().T();
        Intrinsics.checkExpressionValueIsNotNull(yVarT, "module.builtIns.stringType");
        return yVarT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return '\"' + b() + '\"';
    }
}
