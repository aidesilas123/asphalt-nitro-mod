package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class s extends g<Void> {
    public s() {
        super(null);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.types.y a(ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        kotlin.reflect.jvm.internal.impl.types.y yVarJ = module.k().J();
        Intrinsics.checkExpressionValueIsNotNull(yVarJ, "module.builtIns.nullableNothingType");
        return yVarJ;
    }
}
