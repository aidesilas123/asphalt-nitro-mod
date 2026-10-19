package kotlin.reflect.jvm.internal.impl.load.kotlin;

import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.JvmProtoBufUtil;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;

/* JADX INFO: compiled from: DeserializationComponentsForJava.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b {
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.j a;

    public b(kotlin.reflect.jvm.internal.impl.storage.h storageManager, ModuleDescriptor moduleDescriptor, DeserializationConfiguration configuration, c classDataFinder, BinaryClassAnnotationAndConstantLoaderImpl annotationAndConstantLoader, LazyJavaPackageFragmentProvider packageFragmentProvider, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.serialization.deserialization.m errorReporter, kotlin.reflect.jvm.internal.impl.incremental.components.c lookupTracker, kotlin.reflect.jvm.internal.impl.serialization.deserialization.i contractDeserializer, kotlin.reflect.jvm.internal.impl.types.checker.f kotlinTypeChecker) {
        kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c cVarC0;
        kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a aVarC0;
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkParameterIsNotNull(configuration, "configuration");
        Intrinsics.checkParameterIsNotNull(classDataFinder, "classDataFinder");
        Intrinsics.checkParameterIsNotNull(annotationAndConstantLoader, "annotationAndConstantLoader");
        Intrinsics.checkParameterIsNotNull(packageFragmentProvider, "packageFragmentProvider");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(errorReporter, "errorReporter");
        Intrinsics.checkParameterIsNotNull(lookupTracker, "lookupTracker");
        Intrinsics.checkParameterIsNotNull(contractDeserializer, "contractDeserializer");
        Intrinsics.checkParameterIsNotNull(kotlinTypeChecker, "kotlinTypeChecker");
        KotlinBuiltIns kotlinBuiltInsK = moduleDescriptor.k();
        JvmBuiltIns jvmBuiltIns = (JvmBuiltIns) (kotlinBuiltInsK instanceof JvmBuiltIns ? kotlinBuiltInsK : null);
        this.a = new kotlin.reflect.jvm.internal.impl.serialization.deserialization.j(storageManager, moduleDescriptor, configuration, classDataFinder, annotationAndConstantLoader, packageFragmentProvider, q.a.a, errorReporter, lookupTracker, d.a, CollectionsKt__CollectionsKt.emptyList(), notFoundClasses, contractDeserializer, (jvmBuiltIns == null || (aVarC0 = jvmBuiltIns.c0()) == null) ? a.C0518a.a : aVarC0, (jvmBuiltIns == null || (cVarC0 = jvmBuiltIns.c0()) == null) ? c.b.a : cVarC0, JvmProtoBufUtil.b.a(), kotlinTypeChecker);
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.j a() {
        return this.a;
    }
}
