package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: compiled from: PropertyDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface y extends CallableMemberDescriptor, l0 {
    n L();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.i
    y a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f0
    y c(TypeSubstitutor typeSubstitutor);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends y> d();

    z getGetter();

    a0 getSetter();

    n r0();

    List<x> s();
}
