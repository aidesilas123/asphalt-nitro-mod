package kotlin.reflect.jvm.internal.impl.descriptors.deserialization;

import java.util.Collection;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: AdditionalClassPartsProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public interface a {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdditionalClassPartsProvider.kt */
    public static final class C0518a implements a {
        public static final C0518a a = new C0518a();

        private C0518a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
        public Collection<c0> a(Name name, d classDescriptor) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            return CollectionsKt__CollectionsKt.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> c(d classDescriptor) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            return CollectionsKt__CollectionsKt.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
        public Collection<u> d(d classDescriptor) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            return CollectionsKt__CollectionsKt.emptyList();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a
        public Collection<Name> e(d classDescriptor) {
            Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
            return CollectionsKt__CollectionsKt.emptyList();
        }
    }

    Collection<c0> a(Name name, d dVar);

    Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> c(d dVar);

    Collection<u> d(d dVar);

    Collection<Name> e(d dVar);
}
