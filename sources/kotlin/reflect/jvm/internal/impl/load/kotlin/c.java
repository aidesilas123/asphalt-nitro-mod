package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.ClassId;

/* JADX INFO: compiled from: JavaClassDataFinder.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class c implements kotlin.reflect.jvm.internal.impl.serialization.deserialization.h {
    private final j a;
    private final DeserializedDescriptorResolver b;

    public c(j kotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver) {
        Intrinsics.checkParameterIsNotNull(kotlinClassFinder, "kotlinClassFinder");
        Intrinsics.checkParameterIsNotNull(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        this.a = kotlinClassFinder;
        this.b = deserializedDescriptorResolver;
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.h
    public kotlin.reflect.jvm.internal.impl.serialization.deserialization.g a(ClassId classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        k kVarFindKotlinClass = KotlinClassFinderKt.findKotlinClass(this.a, classId);
        if (kVarFindKotlinClass == null) {
            return null;
        }
        Intrinsics.areEqual(kVarFindKotlinClass.a(), classId);
        return this.b.g(kVarFindKotlinClass);
    }
}
