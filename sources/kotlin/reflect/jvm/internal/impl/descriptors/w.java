package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: typeParameterUtils.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class w {
    private final g a;
    private final List<kotlin.reflect.jvm.internal.impl.types.g0> b;
    private final w c;

    /* JADX WARN: Multi-variable type inference failed */
    public w(g classifierDescriptor, List<? extends kotlin.reflect.jvm.internal.impl.types.g0> arguments, w wVar) {
        Intrinsics.checkParameterIsNotNull(classifierDescriptor, "classifierDescriptor");
        Intrinsics.checkParameterIsNotNull(arguments, "arguments");
        this.a = classifierDescriptor;
        this.b = arguments;
        this.c = wVar;
    }

    public final List<kotlin.reflect.jvm.internal.impl.types.g0> a() {
        return this.b;
    }

    public final g b() {
        return this.a;
    }

    public final w c() {
        return this.c;
    }
}
