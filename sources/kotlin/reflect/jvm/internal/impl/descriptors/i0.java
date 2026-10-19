package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: compiled from: TypeParameterDescriptor.java */
/* JADX INFO: loaded from: classes5.dex */
public interface i0 extends f, kotlin.reflect.jvm.internal.impl.types.model.k {
    kotlin.reflect.jvm.internal.impl.storage.h I();

    boolean M();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f, kotlin.reflect.jvm.internal.impl.descriptors.i
    i0 a();

    List<kotlin.reflect.jvm.internal.impl.types.u> getUpperBounds();

    int h();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    kotlin.reflect.jvm.internal.impl.types.f0 i();

    Variance j();

    boolean t();
}
