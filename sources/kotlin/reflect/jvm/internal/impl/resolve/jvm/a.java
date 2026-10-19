package kotlin.reflect.jvm.internal.impl.resolve.jvm;

import java.util.List;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: compiled from: JavaDescriptorResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a {
    private final LazyJavaPackageFragmentProvider a;
    private final f b;

    public a(LazyJavaPackageFragmentProvider packageFragmentProvider, f javaResolverCache) {
        Intrinsics.checkParameterIsNotNull(packageFragmentProvider, "packageFragmentProvider");
        Intrinsics.checkParameterIsNotNull(javaResolverCache, "javaResolverCache");
        this.a = packageFragmentProvider;
        this.b = javaResolverCache;
    }

    public final LazyJavaPackageFragmentProvider a() {
        return this.a;
    }

    public final d b(kotlin.reflect.jvm.internal.impl.load.java.structure.f javaClass) {
        Intrinsics.checkParameterIsNotNull(javaClass, "javaClass");
        FqName fqNameE = javaClass.e();
        if (fqNameE != null && javaClass.E() == LightClassOriginKind.SOURCE) {
            return this.b.d(fqNameE);
        }
        kotlin.reflect.jvm.internal.impl.load.java.structure.f fVarJ = javaClass.j();
        if (fVarJ != null) {
            d dVarB = b(fVarJ);
            MemberScope memberScopeO = dVarB != null ? dVarB.O() : null;
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = memberScopeO != null ? memberScopeO.c(javaClass.getName(), NoLookupLocation.FROM_JAVA_LOADER) : null;
            return (d) (fVarC instanceof d ? fVarC : null);
        }
        if (fqNameE == null) {
            return null;
        }
        LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider = this.a;
        FqName fqNameE2 = fqNameE.e();
        Intrinsics.checkExpressionValueIsNotNull(fqNameE2, "fqName.parent()");
        LazyJavaPackageFragment lazyJavaPackageFragment = (LazyJavaPackageFragment) p.firstOrNull((List) lazyJavaPackageFragmentProvider.a(fqNameE2));
        if (lazyJavaPackageFragment != null) {
            return lazyJavaPackageFragment.b0(javaClass);
        }
        return null;
    }
}
