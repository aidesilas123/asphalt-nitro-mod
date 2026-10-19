package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;

/* JADX INFO: compiled from: constantValues.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l extends g<Float> {
    public l(float f2) {
        super(Float.valueOf(f2));
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.types.y a(ModuleDescriptor module) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        kotlin.reflect.jvm.internal.impl.types.y yVarB = module.k().B();
        Intrinsics.checkExpressionValueIsNotNull(yVarB, "module.builtIns.floatType");
        return yVarB;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public String toString() {
        return b().floatValue() + ".toFloat()";
    }
}
