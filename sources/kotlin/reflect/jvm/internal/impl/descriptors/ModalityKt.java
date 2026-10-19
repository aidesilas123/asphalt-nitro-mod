package kotlin.reflect.jvm.internal.impl.descriptors;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Modality.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ModalityKt {
    public static final boolean isFinalClass(d isFinalClass) {
        Intrinsics.checkParameterIsNotNull(isFinalClass, "$this$isFinalClass");
        return isFinalClass.p() == Modality.FINAL && isFinalClass.getKind() != ClassKind.ENUM_CLASS;
    }
}
