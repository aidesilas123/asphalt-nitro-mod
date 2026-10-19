package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a;
import kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.protobuf.ExtensionRegistryLite;

/* JADX INFO: compiled from: context.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class j {
    private final ClassDeserializer a;
    private final kotlin.reflect.jvm.internal.impl.storage.h b;
    private final ModuleDescriptor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final DeserializationConfiguration f9800d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h f9801e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final b<AnnotationDescriptor, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f9802f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.t f9803g;
    private final q h;
    private final m i;
    private final kotlin.reflect.jvm.internal.impl.incremental.components.c j;
    private final n k;
    private final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> l;
    private final NotFoundClasses m;
    private final i n;
    private final kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a o;
    private final kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c p;
    private final ExtensionRegistryLite q;
    private final kotlin.reflect.jvm.internal.impl.types.checker.f r;

    /* JADX WARN: Multi-variable type inference failed */
    public j(kotlin.reflect.jvm.internal.impl.storage.h storageManager, ModuleDescriptor moduleDescriptor, DeserializationConfiguration configuration, h classDataFinder, b<? extends AnnotationDescriptor, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> annotationAndConstantLoader, kotlin.reflect.jvm.internal.impl.descriptors.t packageFragmentProvider, q localClassifierTypeSettings, m errorReporter, kotlin.reflect.jvm.internal.impl.incremental.components.c lookupTracker, n flexibleTypeDeserializer, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> fictitiousClassDescriptorFactories, NotFoundClasses notFoundClasses, i contractDeserializer, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a additionalClassPartsProvider, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c platformDependentDeclarationFilter, ExtensionRegistryLite extensionRegistryLite, kotlin.reflect.jvm.internal.impl.types.checker.f kotlinTypeChecker) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkParameterIsNotNull(configuration, "configuration");
        Intrinsics.checkParameterIsNotNull(classDataFinder, "classDataFinder");
        Intrinsics.checkParameterIsNotNull(annotationAndConstantLoader, "annotationAndConstantLoader");
        Intrinsics.checkParameterIsNotNull(packageFragmentProvider, "packageFragmentProvider");
        Intrinsics.checkParameterIsNotNull(localClassifierTypeSettings, "localClassifierTypeSettings");
        Intrinsics.checkParameterIsNotNull(errorReporter, "errorReporter");
        Intrinsics.checkParameterIsNotNull(lookupTracker, "lookupTracker");
        Intrinsics.checkParameterIsNotNull(flexibleTypeDeserializer, "flexibleTypeDeserializer");
        Intrinsics.checkParameterIsNotNull(fictitiousClassDescriptorFactories, "fictitiousClassDescriptorFactories");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(contractDeserializer, "contractDeserializer");
        Intrinsics.checkParameterIsNotNull(additionalClassPartsProvider, "additionalClassPartsProvider");
        Intrinsics.checkParameterIsNotNull(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkParameterIsNotNull(extensionRegistryLite, "extensionRegistryLite");
        Intrinsics.checkParameterIsNotNull(kotlinTypeChecker, "kotlinTypeChecker");
        this.b = storageManager;
        this.c = moduleDescriptor;
        this.f9800d = configuration;
        this.f9801e = classDataFinder;
        this.f9802f = annotationAndConstantLoader;
        this.f9803g = packageFragmentProvider;
        this.h = localClassifierTypeSettings;
        this.i = errorReporter;
        this.j = lookupTracker;
        this.k = flexibleTypeDeserializer;
        this.l = fictitiousClassDescriptorFactories;
        this.m = notFoundClasses;
        this.n = contractDeserializer;
        this.o = additionalClassPartsProvider;
        this.p = platformDependentDeclarationFilter;
        this.q = extensionRegistryLite;
        this.r = kotlinTypeChecker;
        this.a = new ClassDeserializer(this);
    }

    public /* synthetic */ j(kotlin.reflect.jvm.internal.impl.storage.h hVar, ModuleDescriptor moduleDescriptor, DeserializationConfiguration deserializationConfiguration, h hVar2, b bVar, kotlin.reflect.jvm.internal.impl.descriptors.t tVar, q qVar, m mVar, kotlin.reflect.jvm.internal.impl.incremental.components.c cVar, n nVar, Iterable iterable, NotFoundClasses notFoundClasses, i iVar, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c cVar2, ExtensionRegistryLite extensionRegistryLite, kotlin.reflect.jvm.internal.impl.types.checker.f fVar, int i, kotlin.jvm.internal.n nVar2) {
        this(hVar, moduleDescriptor, deserializationConfiguration, hVar2, bVar, tVar, qVar, mVar, cVar, nVar, iterable, notFoundClasses, iVar, (i & 8192) != 0 ? a.C0518a.a : aVar, (i & 16384) != 0 ? c.a.a : cVar2, extensionRegistryLite, (i & 65536) != 0 ? kotlin.reflect.jvm.internal.impl.types.checker.f.b.a() : fVar);
    }

    public final DeserializationContext a(kotlin.reflect.jvm.internal.impl.descriptors.s descriptor, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.e typeTable, VersionRequirementTable versionRequirementTable, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.c cVar) {
        Intrinsics.checkParameterIsNotNull(descriptor, "descriptor");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(typeTable, "typeTable");
        Intrinsics.checkParameterIsNotNull(versionRequirementTable, "versionRequirementTable");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        return new DeserializationContext(this, nameResolver, descriptor, typeTable, versionRequirementTable, metadataVersion, cVar, null, CollectionsKt__CollectionsKt.emptyList());
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d b(ClassId classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        return ClassDeserializer.deserializeClass$default(this.a, classId, null, 2, null);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a c() {
        return this.o;
    }

    public final b<AnnotationDescriptor, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> d() {
        return this.f9802f;
    }

    public final h e() {
        return this.f9801e;
    }

    public final ClassDeserializer f() {
        return this.a;
    }

    public final DeserializationConfiguration g() {
        return this.f9800d;
    }

    public final i h() {
        return this.n;
    }

    public final m i() {
        return this.i;
    }

    public final ExtensionRegistryLite j() {
        return this.q;
    }

    public final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> k() {
        return this.l;
    }

    public final n l() {
        return this.k;
    }

    public final kotlin.reflect.jvm.internal.impl.types.checker.f m() {
        return this.r;
    }

    public final q n() {
        return this.h;
    }

    public final kotlin.reflect.jvm.internal.impl.incremental.components.c o() {
        return this.j;
    }

    public final ModuleDescriptor p() {
        return this.c;
    }

    public final NotFoundClasses q() {
        return this.m;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.t r() {
        return this.f9803g;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c s() {
        return this.p;
    }

    public final kotlin.reflect.jvm.internal.impl.storage.h t() {
        return this.b;
    }
}
