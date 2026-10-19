package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.q;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.protobuf.j;

/* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface DeserializedMemberDescriptor extends q {

    /* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
    public enum CoroutinesCompatibilityMode {
        COMPATIBLE,
        NEEDS_WRAPPER,
        INCOMPATIBLE
    }

    /* JADX INFO: compiled from: DeserializedMemberDescriptor.kt */
    public static final class DefaultImpls {
        public static List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> getVersionRequirements(DeserializedMemberDescriptor deserializedMemberDescriptor) {
            return kotlin.reflect.jvm.internal.impl.metadata.deserialization.g.a.a(deserializedMemberDescriptor.X(), deserializedMemberDescriptor.F(), deserializedMemberDescriptor.E());
        }
    }

    kotlin.reflect.jvm.internal.impl.metadata.deserialization.e B();

    List<kotlin.reflect.jvm.internal.impl.metadata.deserialization.g> D0();

    VersionRequirementTable E();

    kotlin.reflect.jvm.internal.impl.metadata.deserialization.b F();

    j X();
}
