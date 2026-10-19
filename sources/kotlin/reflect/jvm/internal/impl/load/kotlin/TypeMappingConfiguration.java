package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.Collection;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: typeSignatureMapping.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface TypeMappingConfiguration<T> {

    /* JADX INFO: compiled from: typeSignatureMapping.kt */
    public static final class DefaultImpls {
        public static <T> String getPredefinedFullInternalNameForClass(TypeMappingConfiguration<? extends T> typeMappingConfiguration, kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            return null;
        }

        public static <T> u preprocessType(TypeMappingConfiguration<? extends T> typeMappingConfiguration, u kotlinType) {
            Intrinsics.checkParameterIsNotNull(kotlinType, "kotlinType");
            return null;
        }

        public static <T> boolean releaseCoroutines(TypeMappingConfiguration<? extends T> typeMappingConfiguration) {
            return true;
        }
    }

    T a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    String b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    String c(kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    u d(u uVar);

    boolean e();

    void f(u uVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar);

    u g(Collection<u> collection);
}
