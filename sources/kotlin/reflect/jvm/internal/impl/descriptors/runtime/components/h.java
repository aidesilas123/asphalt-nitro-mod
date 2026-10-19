package kotlin.reflect.jvm.internal.impl.descriptors.runtime.components;

import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ModuleDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.kotlin.DeserializedDescriptorResolver;
import kotlin.reflect.jvm.internal.impl.load.kotlin.o;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.v;

/* JADX INFO: compiled from: RuntimeModuleData.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h {
    public static final a a = new a(null);
    private final kotlin.reflect.jvm.internal.impl.serialization.deserialization.j b;
    private final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.a c;

    /* JADX INFO: compiled from: RuntimeModuleData.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final h a(ClassLoader classLoader) {
            Intrinsics.checkParameterIsNotNull(classLoader, "classLoader");
            LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("RuntimeModuleData");
            JvmBuiltIns jvmBuiltIns = new JvmBuiltIns(lockBasedStorageManager, JvmBuiltIns.Kind.FROM_DEPENDENCIES);
            Name nameSpecial = Name.special("<runtime module for " + classLoader + '>');
            Intrinsics.checkExpressionValueIsNotNull(nameSpecial, "Name.special(\"<runtime module for $classLoader>\")");
            ModuleDescriptorImpl moduleDescriptorImpl = new ModuleDescriptorImpl(nameSpecial, lockBasedStorageManager, jvmBuiltIns, null, null, null, 56, null);
            jvmBuiltIns.a0(moduleDescriptorImpl);
            jvmBuiltIns.d0(moduleDescriptorImpl, true);
            f fVar = new f(classLoader);
            DeserializedDescriptorResolver deserializedDescriptorResolver = new DeserializedDescriptorResolver();
            kotlin.reflect.jvm.internal.impl.load.java.lazy.g gVar = new kotlin.reflect.jvm.internal.impl.load.java.lazy.g();
            NotFoundClasses notFoundClasses = new NotFoundClasses(lockBasedStorageManager, moduleDescriptorImpl);
            LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProviderMakeLazyJavaPackageFragmentFromClassLoaderProvider = RuntimeModuleDataKt.makeLazyJavaPackageFragmentFromClassLoaderProvider(classLoader, moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, fVar, deserializedDescriptorResolver, gVar, (128 & 128) != 0 ? o.a.a : null);
            kotlin.reflect.jvm.internal.impl.load.kotlin.b bVarMakeDeserializationComponentsForJava = RuntimeModuleDataKt.makeDeserializationComponentsForJava(moduleDescriptorImpl, lockBasedStorageManager, notFoundClasses, lazyJavaPackageFragmentProviderMakeLazyJavaPackageFragmentFromClassLoaderProvider, fVar, deserializedDescriptorResolver);
            deserializedDescriptorResolver.j(bVarMakeDeserializationComponentsForJava);
            kotlin.reflect.jvm.internal.impl.load.java.components.f fVar2 = kotlin.reflect.jvm.internal.impl.load.java.components.f.a;
            Intrinsics.checkExpressionValueIsNotNull(fVar2, "JavaResolverCache.EMPTY");
            kotlin.reflect.jvm.internal.impl.resolve.jvm.a aVar = new kotlin.reflect.jvm.internal.impl.resolve.jvm.a(lazyJavaPackageFragmentProviderMakeLazyJavaPackageFragmentFromClassLoaderProvider, fVar2);
            gVar.b(aVar);
            ClassLoader stdlibClassLoader = v.class.getClassLoader();
            Intrinsics.checkExpressionValueIsNotNull(stdlibClassLoader, "stdlibClassLoader");
            kotlin.reflect.jvm.internal.impl.builtins.jvm.b bVar = new kotlin.reflect.jvm.internal.impl.builtins.jvm.b(lockBasedStorageManager, new f(stdlibClassLoader), moduleDescriptorImpl, notFoundClasses, jvmBuiltIns.c0(), jvmBuiltIns.c0(), DeserializationConfiguration.a.a, kotlin.reflect.jvm.internal.impl.types.checker.f.b.a());
            moduleDescriptorImpl.J0(moduleDescriptorImpl);
            moduleDescriptorImpl.z0(new kotlin.reflect.jvm.internal.impl.descriptors.impl.h(CollectionsKt__CollectionsKt.listOf((Object[]) new t[]{aVar.a(), bVar})));
            return new h(bVarMakeDeserializationComponentsForJava.a(), new kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.a(deserializedDescriptorResolver, fVar), null);
        }
    }

    private h(kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar, kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.a aVar) {
        this.b = jVar;
        this.c = aVar;
    }

    public /* synthetic */ h(kotlin.reflect.jvm.internal.impl.serialization.deserialization.j jVar, kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.a aVar, n nVar) {
        this(jVar, aVar);
    }

    public final kotlin.reflect.jvm.internal.impl.serialization.deserialization.j a() {
        return this.b;
    }

    public final ModuleDescriptor b() {
        return this.b.p();
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.runtime.components.a c() {
        return this.c;
    }
}
