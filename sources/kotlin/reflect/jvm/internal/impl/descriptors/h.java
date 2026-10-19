package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: compiled from: ConstructorDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface h extends o {
    boolean V();

    d W();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    g b();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.f0
    h c(TypeSubstitutor typeSubstitutor);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    kotlin.reflect.jvm.internal.impl.types.u getReturnType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    List<i0> getTypeParameters();
}
