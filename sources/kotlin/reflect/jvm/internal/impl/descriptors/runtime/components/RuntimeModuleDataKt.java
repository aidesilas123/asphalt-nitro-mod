package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.ReflectionTypes;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.incremental.components.c;
import kotlin.reflect.jvm.internal.impl.load.java.AnnotationTypeQualifierResolver;
import kotlin.reflect.jvm.internal.impl.load.java.components.e;
import kotlin.reflect.jvm.internal.impl.load.java.components.i;
import kotlin.reflect.jvm.internal.impl.load.java.j;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.b;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.load.kotlin.BinaryClassAnnotationAndConstantLoaderImpl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;

/* JADX INFO: compiled from: RuntimeModuleData.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class RuntimeModuleDataKt {
    public static final kotlin.reflect.jvm.internal.impl.load.kotlin.b makeDeserializationComponentsForJava(ModuleDescriptor module, kotlin.reflect.jvm.internal.impl.storage.h storageManager, NotFoundClasses notFoundClasses, LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, kotlin.reflect.jvm.internal.impl.load.kotlin.j reflectKotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver) {
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(lazyJavaPackageFragmentProvider, "lazyJavaPackageFragmentProvider");
        Intrinsics.checkParameterIsNotNull(reflectKotlinClassFinder, "reflectKotlinClassFinder");
        Intrinsics.checkParameterIsNotNull(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        return new kotlin.reflect.jvm.internal.impl.load.kotlin.b(storageManager, module, DeserializationConfiguration.a.a, new kotlin.reflect.jvm.internal.impl.load.kotlin.c(reflectKotlinClassFinder, deserializedDescriptorResolver), new BinaryClassAnnotationAndConstantLoaderImpl(module, notFoundClasses, storageManager, reflectKotlinClassFinder), lazyJavaPackageFragmentProvider, notFoundClasses, g.b, c.a.a, kotlin.reflect.jvm.internal.impl.serialization.deserialization.i.a.a(), kotlin.reflect.jvm.internal.impl.types.checker.f.b.a());
    }

    public static final LazyJavaPackageFragmentProvider makeLazyJavaPackageFragmentFromClassLoaderProvider(ClassLoader classLoader, ModuleDescriptor module, kotlin.reflect.jvm.internal.impl.storage.h storageManager, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.load.kotlin.j reflectKotlinClassFinder, DeserializedDescriptorResolver deserializedDescriptorResolver, kotlin.reflect.jvm.internal.impl.load.java.lazy.e singleModuleClassResolver, o packagePartProvider) {
        Intrinsics.checkParameterIsNotNull(classLoader, "classLoader");
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(reflectKotlinClassFinder, "reflectKotlinClassFinder");
        Intrinsics.checkParameterIsNotNull(deserializedDescriptorResolver, "deserializedDescriptorResolver");
        Intrinsics.checkParameterIsNotNull(singleModuleClassResolver, "singleModuleClassResolver");
        Intrinsics.checkParameterIsNotNull(packagePartProvider, "packagePartProvider");
        kotlin.reflect.jvm.internal.impl.utils.a aVar = kotlin.reflect.jvm.internal.impl.utils.a.b;
        AnnotationTypeQualifierResolver annotationTypeQualifierResolver = new AnnotationTypeQualifierResolver(storageManager, aVar);
        d dVar = new d(classLoader);
        kotlin.reflect.jvm.internal.impl.load.java.components.j jVar = kotlin.reflect.jvm.internal.impl.load.java.components.j.a;
        Intrinsics.checkExpressionValueIsNotNull(jVar, "SignaturePropagator.DO_NOTHING");
        g gVar = g.b;
        kotlin.reflect.jvm.internal.impl.load.java.components.f fVar = kotlin.reflect.jvm.internal.impl.load.java.components.f.a;
        Intrinsics.checkExpressionValueIsNotNull(fVar, "JavaResolverCache.EMPTY");
        return new LazyJavaPackageFragmentProvider(new kotlin.reflect.jvm.internal.impl.load.java.lazy.a(storageManager, dVar, reflectKotlinClassFinder, deserializedDescriptorResolver, jVar, gVar, fVar, e.a.a, i.a.a, i.a, singleModuleClassResolver, packagePartProvider, g0.a.a, c.a.a, module, new ReflectionTypes(module, notFoundClasses), annotationTypeQualifierResolver, new SignatureEnhancement(annotationTypeQualifierResolver, aVar), j.a.a, b.C0526b.b, kotlin.reflect.jvm.internal.impl.types.checker.f.b.a()));
    }
}
