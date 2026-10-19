package kotlin.reflect.jvm.internal.impl.types;

import kotlin.NoWhenBranchMatchedException;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: flexibleTypes.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class FlexibleTypesKt {
    public static final p asFlexibleType(u asFlexibleType) {
        Intrinsics.checkParameterIsNotNull(asFlexibleType, "$this$asFlexibleType");
        m0 m0VarK0 = asFlexibleType.K0();
        if (m0VarK0 != null) {
            return (p) m0VarK0;
        }
        throw new TypeCastException("null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
    }

    public static final boolean isFlexible(u isFlexible) {
        Intrinsics.checkParameterIsNotNull(isFlexible, "$this$isFlexible");
        return isFlexible.K0() instanceof p;
    }

    public static final y lowerIfFlexible(u lowerIfFlexible) {
        Intrinsics.checkParameterIsNotNull(lowerIfFlexible, "$this$lowerIfFlexible");
        m0 m0VarK0 = lowerIfFlexible.K0();
        if (m0VarK0 instanceof p) {
            return ((p) m0VarK0).P0();
        }
        if (m0VarK0 instanceof y) {
            return (y) m0VarK0;
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final y upperIfFlexible(u upperIfFlexible) {
        Intrinsics.checkParameterIsNotNull(upperIfFlexible, "$this$upperIfFlexible");
        m0 m0VarK0 = upperIfFlexible.K0();
        if (m0VarK0 instanceof p) {
            return ((p) m0VarK0).Q0();
        }
        if (m0VarK0 instanceof y) {
            return (y) m0VarK0;
        }
        throw new NoWhenBranchMatchedException();
    }
}
