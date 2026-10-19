package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ConstUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ConstUtil {
    public static final ConstUtil a = new ConstUtil();

    private ConstUtil() {
    }

    public static final boolean canBeUsedForConstVal(kotlin.reflect.jvm.internal.impl.types.u type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
        return ConstUtilKt.canBeUsedForConstVal(type);
    }
}
