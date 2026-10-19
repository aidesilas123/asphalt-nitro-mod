package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Set;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: signatureEnhancement.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SignatureEnhancementKt {
    public static final JavaTypeQualifiers createJavaTypeQualifiers(NullabilityQualifier nullabilityQualifier, MutabilityQualifier mutabilityQualifier, boolean z, boolean z2) {
        return (z2 && nullabilityQualifier == NullabilityQualifier.NOT_NULL) ? new JavaTypeQualifiers(nullabilityQualifier, mutabilityQualifier, true, z) : new JavaTypeQualifiers(nullabilityQualifier, mutabilityQualifier, false, z);
    }

    public static final <T> T select(Set<? extends T> select, T low, T high, T t, boolean z) {
        Set<? extends T> set;
        Intrinsics.checkParameterIsNotNull(select, "$this$select");
        Intrinsics.checkParameterIsNotNull(low, "low");
        Intrinsics.checkParameterIsNotNull(high, "high");
        if (!z) {
            if (t != null && (set = CollectionsKt___CollectionsKt.toSet(SetsKt___SetsKt.plus(select, t))) != null) {
                select = set;
            }
            return (T) p.singleOrNull(select);
        }
        T t2 = select.contains(low) ? low : select.contains(high) ? high : null;
        if (Intrinsics.areEqual(t2, low) && Intrinsics.areEqual(t, high)) {
            return null;
        }
        return t != null ? t : t2;
    }

    public static final NullabilityQualifier select(Set<? extends NullabilityQualifier> select, NullabilityQualifier nullabilityQualifier, boolean z) {
        Intrinsics.checkParameterIsNotNull(select, "$this$select");
        NullabilityQualifier nullabilityQualifier2 = NullabilityQualifier.FORCE_FLEXIBILITY;
        return nullabilityQualifier == nullabilityQualifier2 ? nullabilityQualifier2 : (NullabilityQualifier) select(select, NullabilityQualifier.NOT_NULL, NullabilityQualifier.NULLABLE, nullabilityQualifier, z);
    }
}
