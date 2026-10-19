package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.types.TypeUtils;

/* JADX INFO: compiled from: ConstUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ConstUtilKt {
    public static final boolean canBeUsedForConstVal(kotlin.reflect.jvm.internal.impl.types.u canBeUsedForConstVal) {
        Intrinsics.checkParameterIsNotNull(canBeUsedForConstVal, "$this$canBeUsedForConstVal");
        return ((KotlinBuiltIns.isPrimitiveType(canBeUsedForConstVal) || kotlin.reflect.jvm.internal.impl.builtins.e.f9061e.d(canBeUsedForConstVal)) && !TypeUtils.isNullableType(canBeUsedForConstVal)) || KotlinBuiltIns.isString(canBeUsedForConstVal);
    }
}
