package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;

/* JADX INFO: compiled from: CallableDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface a extends j, m, f0<a> {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CallableDescriptor.java */
    public interface InterfaceC0516a<V> {
    }

    b0 H();

    b0 K();

    boolean Y();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i
    a a();

    Collection<? extends a> d();

    List<ValueParameterDescriptor> g();

    kotlin.reflect.jvm.internal.impl.types.u getReturnType();

    List<i0> getTypeParameters();

    <V> V p0(InterfaceC0516a<V> interfaceC0516a);
}
