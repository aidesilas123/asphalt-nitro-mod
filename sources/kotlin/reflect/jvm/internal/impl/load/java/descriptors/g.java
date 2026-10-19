package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: util.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g extends a {
    private final String a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(String value) {
        super(null);
        Intrinsics.checkParameterIsNotNull(value, "value");
        this.a = value;
    }

    public final String a() {
        return this.a;
    }
}
