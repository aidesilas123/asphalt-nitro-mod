package kotlin.reflect.jvm.internal.impl.load.java.lazy;

import java.util.List;
import kotlin.LazyKt__LazyKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.t;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.h;
import kotlin.reflect.jvm.internal.impl.load.java.structure.r;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: LazyJavaPackageFragmentProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class LazyJavaPackageFragmentProvider implements t {
    private final d a;
    private final kotlin.reflect.jvm.internal.impl.storage.a<FqName, LazyJavaPackageFragment> b;

    /* JADX INFO: compiled from: LazyJavaPackageFragmentProvider.kt */
    static final class a extends Lambda implements Function0<LazyJavaPackageFragment> {
        final /* synthetic */ r b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(r rVar) {
            super(0);
            this.b = rVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final LazyJavaPackageFragment invoke() {
            return new LazyJavaPackageFragment(LazyJavaPackageFragmentProvider.this.a, this.b);
        }
    }

    public LazyJavaPackageFragmentProvider(kotlin.reflect.jvm.internal.impl.load.java.lazy.a components) {
        Intrinsics.checkParameterIsNotNull(components, "components");
        d dVar = new d(components, h.a.a, LazyKt__LazyKt.lazyOf(null));
        this.a = dVar;
        this.b = dVar.e().a();
    }

    private final LazyJavaPackageFragment b(FqName fqName) {
        r rVarB = this.a.a().d().b(fqName);
        if (rVarB != null) {
            return this.b.a(fqName, new a(rVarB));
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public List<LazyJavaPackageFragment> a(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        return CollectionsKt__CollectionsKt.listOfNotNull(b(fqName));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public List<FqName> l(FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        LazyJavaPackageFragment lazyJavaPackageFragmentB = b(fqName);
        List<FqName> listZ0 = lazyJavaPackageFragmentB != null ? lazyJavaPackageFragmentB.z0() : null;
        return listZ0 != null ? listZ0 : CollectionsKt__CollectionsKt.emptyList();
    }
}
