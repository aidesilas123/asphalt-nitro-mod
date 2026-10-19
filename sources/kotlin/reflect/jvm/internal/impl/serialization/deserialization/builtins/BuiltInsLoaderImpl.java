package kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.q;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.incremental.components.c;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.n;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
import kotlin.reflect.jvm.internal.impl.storage.h;

/* JADX INFO: compiled from: BuiltInsLoaderImpl.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BuiltInsLoaderImpl implements kotlin.reflect.jvm.internal.impl.builtins.a {
    private final c b = new c();

    /* JADX INFO: compiled from: BuiltInsLoaderImpl.kt */
    static final /* synthetic */ class a extends q implements Function1<String, InputStream> {
        a(c cVar) {
            super(1, cVar);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final InputStream invoke(String p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return ((c) this.receiver).a(p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "loadResource";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(c.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "loadResource(Ljava/lang/String;)Ljava/io/InputStream;";
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.builtins.a
    public t a(h storageManager, ModuleDescriptor builtInsModule, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> classDescriptorFactories, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a additionalClassPartsProvider, boolean z) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(builtInsModule, "builtInsModule");
        Intrinsics.checkParameterIsNotNull(classDescriptorFactories, "classDescriptorFactories");
        Intrinsics.checkParameterIsNotNull(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkParameterIsNotNull(additionalClassPartsProvider, "additionalClassPartsProvider");
        Set<FqName> set = KotlinBuiltIns.f9040g;
        Intrinsics.checkExpressionValueIsNotNull(set, "KotlinBuiltIns.BUILT_INS_PACKAGE_FQ_NAMES");
        return b(storageManager, builtInsModule, set, classDescriptorFactories, platformDependentDeclarationFilter, additionalClassPartsProvider, z, new a(this.b));
    }

    public final t b(h storageManager, ModuleDescriptor module, Set<FqName> packageFqNames, Iterable<? extends kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b> classDescriptorFactories, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c platformDependentDeclarationFilter, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a additionalClassPartsProvider, boolean z, Function1<? super String, ? extends InputStream> loadResource) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(module, "module");
        Intrinsics.checkParameterIsNotNull(packageFqNames, "packageFqNames");
        Intrinsics.checkParameterIsNotNull(classDescriptorFactories, "classDescriptorFactories");
        Intrinsics.checkParameterIsNotNull(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkParameterIsNotNull(additionalClassPartsProvider, "additionalClassPartsProvider");
        Intrinsics.checkParameterIsNotNull(loadResource, "loadResource");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(packageFqNames, 10));
        for (FqName fqName : packageFqNames) {
            String strN = kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.n.n(fqName);
            InputStream inputStreamInvoke = loadResource.invoke(strN);
            if (inputStreamInvoke == null) {
                throw new IllegalStateException("Resource not found in classpath: " + strN);
            }
            arrayList.add(b.m.a(fqName, storageManager, module, inputStreamInvoke, z));
        }
        u uVar = new u(arrayList);
        NotFoundClasses notFoundClasses = new NotFoundClasses(storageManager, module);
        DeserializationConfiguration.a aVar = DeserializationConfiguration.a.a;
        k kVar = new k(uVar);
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a aVar2 = kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.n;
        d dVar = new d(module, notFoundClasses, aVar2);
        q.a aVar3 = q.a.a;
        m mVar = m.a;
        Intrinsics.checkExpressionValueIsNotNull(mVar, "ErrorReporter.DO_NOTHING");
        j jVar = new j(storageManager, module, aVar, kVar, dVar, uVar, aVar3, mVar, c.a.a, n.a.a, classDescriptorFactories, notFoundClasses, i.a.a(), additionalClassPartsProvider, platformDependentDeclarationFilter, aVar2.e(), null, 65536, null);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((b) it.next()).k0(jVar);
        }
        return uVar;
    }
}
