package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: ValueParameterDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface ValueParameterDescriptor extends v, k0 {

    /* JADX INFO: compiled from: ValueParameterDescriptor.kt */
    public static final class DefaultImpls {
        public static boolean isLateInit(ValueParameterDescriptor valueParameterDescriptor) {
            return false;
        }
    }

    ValueParameterDescriptor S(a aVar, Name name, int i);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.i
    ValueParameterDescriptor a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0, kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    a b();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<ValueParameterDescriptor> d();

    int h();

    boolean j0();

    boolean m0();

    kotlin.reflect.jvm.internal.impl.types.u q0();

    boolean u0();
}
