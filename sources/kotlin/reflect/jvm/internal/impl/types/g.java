package kotlin.reflect.jvm.internal.impl.types;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: KotlinTypeFactory.kt */
/* JADX INFO: loaded from: classes5.dex */
final class g extends m {
    private final Annotations c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(y delegate, Annotations annotations) {
        super(delegate);
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        this.c = annotations;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l
    /* JADX INFO: renamed from: U0, reason: merged with bridge method [inline-methods] */
    public g S0(y delegate) {
        Intrinsics.checkParameterIsNotNull(delegate, "delegate");
        return new g(delegate, getAnnotations());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.l, kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.c;
    }
}
