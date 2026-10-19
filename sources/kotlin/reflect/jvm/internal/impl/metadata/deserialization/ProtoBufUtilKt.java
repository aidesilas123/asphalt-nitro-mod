package kotlin.reflect.jvm.internal.impl.metadata.deserialization;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;

/* JADX INFO: compiled from: ProtoBufUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ProtoBufUtilKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends GeneratedMessageLite.d<M>, T> T getExtensionOrNull(GeneratedMessageLite.d<M> getExtensionOrNull, GeneratedMessageLite.f<M, T> extension) {
        Intrinsics.checkParameterIsNotNull(getExtensionOrNull, "$this$getExtensionOrNull");
        Intrinsics.checkParameterIsNotNull(extension, "extension");
        if (getExtensionOrNull.s(extension)) {
            return (T) getExtensionOrNull.p(extension);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <M extends GeneratedMessageLite.d<M>, T> T getExtensionOrNull(GeneratedMessageLite.d<M> getExtensionOrNull, GeneratedMessageLite.f<M, List<T>> extension, int i) {
        Intrinsics.checkParameterIsNotNull(getExtensionOrNull, "$this$getExtensionOrNull");
        Intrinsics.checkParameterIsNotNull(extension, "extension");
        if (i < getExtensionOrNull.r(extension)) {
            return (T) getExtensionOrNull.q(extension, i);
        }
        return null;
    }
}
