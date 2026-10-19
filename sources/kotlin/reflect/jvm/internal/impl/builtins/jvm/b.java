package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.io.InputStream;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.functions.BuiltInFictitiousFunctionClassFactory;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.incremental.components.c;
import kotlin.reflect.jvm.internal.impl.load.kotlin.j;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationConfiguration;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.d;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.i;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.k;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.n;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.q;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.checker.f;

/* JADX INFO: compiled from: JvmBuiltInsPackageFragmentProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class b extends kotlin.reflect.jvm.internal.impl.serialization.deserialization.a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(h storageManager, j finder, ModuleDescriptor moduleDescriptor, NotFoundClasses notFoundClasses, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.a additionalClassPartsProvider, kotlin.reflect.jvm.internal.impl.descriptors.deserialization.c platformDependentDeclarationFilter, DeserializationConfiguration deserializationConfiguration, f kotlinTypeChecker) {
        super(storageManager, finder, moduleDescriptor);
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(finder, "finder");
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkParameterIsNotNull(notFoundClasses, "notFoundClasses");
        Intrinsics.checkParameterIsNotNull(additionalClassPartsProvider, "additionalClassPartsProvider");
        Intrinsics.checkParameterIsNotNull(platformDependentDeclarationFilter, "platformDependentDeclarationFilter");
        Intrinsics.checkParameterIsNotNull(deserializationConfiguration, "deserializationConfiguration");
        Intrinsics.checkParameterIsNotNull(kotlinTypeChecker, "kotlinTypeChecker");
        k kVar = new k(this);
        kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a aVar = kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a.n;
        d dVar = new d(moduleDescriptor, notFoundClasses, aVar);
        q.a aVar2 = q.a.a;
        m mVar = m.a;
        Intrinsics.checkExpressionValueIsNotNull(mVar, "ErrorReporter.DO_NOTHING");
        g(new kotlin.reflect.jvm.internal.impl.serialization.deserialization.j(storageManager, moduleDescriptor, deserializationConfiguration, kVar, dVar, this, aVar2, mVar, c.a.a, n.a.a, CollectionsKt__CollectionsKt.listOf((Object[]) new kotlin.reflect.jvm.internal.impl.descriptors.deserialization.b[]{new BuiltInFictitiousFunctionClassFactory(storageManager, moduleDescriptor), new JvmBuiltInClassDescriptorFactory(storageManager, moduleDescriptor, null, 4, null)}), notFoundClasses, i.a.a(), additionalClassPartsProvider, platformDependentDeclarationFilter, aVar.e(), kotlinTypeChecker));
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.a
    protected l b(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        InputStream inputStreamB = d().b(fqName);
        if (inputStreamB != null) {
            return kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.b.m.a(fqName, f(), e(), inputStreamB, false);
        }
        return null;
    }
}
