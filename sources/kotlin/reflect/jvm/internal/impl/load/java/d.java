package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class d extends k {
    private final kotlin.reflect.jvm.internal.impl.descriptors.d a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor) {
        super(null);
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        this.a = descriptor;
    }
}
