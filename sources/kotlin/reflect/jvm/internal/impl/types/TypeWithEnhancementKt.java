package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TypeWithEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeWithEnhancementKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final u getEnhancement(u getEnhancement) {
        Intrinsics.checkParameterIsNotNull(getEnhancement, "$this$getEnhancement");
        if (getEnhancement instanceof k0) {
            return ((k0) getEnhancement).Z();
        }
        return null;
    }

    public static final m0 inheritEnhancement(m0 inheritEnhancement, u origin) {
        Intrinsics.checkParameterIsNotNull(inheritEnhancement, "$this$inheritEnhancement");
        Intrinsics.checkParameterIsNotNull(origin, "origin");
        return wrapEnhancement(inheritEnhancement, getEnhancement(origin));
    }

    public static final u unwrapEnhancement(u unwrapEnhancement) {
        Intrinsics.checkParameterIsNotNull(unwrapEnhancement, "$this$unwrapEnhancement");
        u enhancement = getEnhancement(unwrapEnhancement);
        return enhancement != null ? enhancement : unwrapEnhancement;
    }

    public static final m0 wrapEnhancement(m0 wrapEnhancement, u uVar) {
        Intrinsics.checkParameterIsNotNull(wrapEnhancement, "$this$wrapEnhancement");
        if (uVar == null) {
            return wrapEnhancement;
        }
        if (wrapEnhancement instanceof y) {
            return new a0((y) wrapEnhancement, uVar);
        }
        if (wrapEnhancement instanceof p) {
            return new r((p) wrapEnhancement, uVar);
        }
        throw new NoWhenBranchMatchedException();
    }
}
