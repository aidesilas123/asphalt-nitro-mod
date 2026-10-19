package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: utils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends k {
    private final Object a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(Object value) {
        super(null);
        Intrinsics.checkParameterIsNotNull(value, "value");
        this.a = value;
    }
}
