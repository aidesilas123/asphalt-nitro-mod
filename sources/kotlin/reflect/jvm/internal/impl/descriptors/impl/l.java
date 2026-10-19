package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;

/* JADX INFO: compiled from: FieldDescriptorImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class l extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.b implements kotlin.reflect.jvm.internal.impl.descriptors.n {
    private final kotlin.reflect.jvm.internal.impl.descriptors.y b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Annotations annotations, kotlin.reflect.jvm.internal.impl.descriptors.y correspondingProperty) {
        super(annotations);
        Intrinsics.checkParameterIsNotNull(annotations, "annotations");
        Intrinsics.checkParameterIsNotNull(correspondingProperty, "correspondingProperty");
        this.b = correspondingProperty;
    }
}
