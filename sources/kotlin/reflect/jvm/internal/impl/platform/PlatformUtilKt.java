package kotlin.reflect.jvm.internal.impl.platform;

import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: platformUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class PlatformUtilKt {
    public static final String getPresentableDescription(a presentableDescription) {
        Intrinsics.checkParameterIsNotNull(presentableDescription, "$this$presentableDescription");
        return CollectionsKt___CollectionsKt.joinToString$default(presentableDescription.e(), "/", null, null, 0, null, null, 62, null);
    }
}
