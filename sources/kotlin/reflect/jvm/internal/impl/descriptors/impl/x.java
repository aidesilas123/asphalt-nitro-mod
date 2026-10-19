package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.descriptors.ModuleDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.PackageViewDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.c;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: SubpackagesScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public class x extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {
    private final ModuleDescriptor b;
    private final FqName c;

    public x(ModuleDescriptor moduleDescriptor, FqName fqName) {
        Intrinsics.checkParameterIsNotNull(moduleDescriptor, "moduleDescriptor");
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        this.b = moduleDescriptor;
        this.c = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        if (!kindFilter.a(DescriptorKindFilter.x.e())) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (this.c.d() && kindFilter.b().contains(c.b.a)) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        Collection<FqName> collectionL = this.b.l(this.c, nameFilter);
        ArrayList arrayList = new ArrayList(collectionL.size());
        Iterator<FqName> it = collectionL.iterator();
        while (it.hasNext()) {
            Name nameG = it.next().g();
            Intrinsics.checkExpressionValueIsNotNull(nameG, "subFqName.shortName()");
            if (nameFilter.invoke(nameG).booleanValue()) {
                CollectionsKt.addIfNotNull(arrayList, g(nameG));
            }
        }
        return arrayList;
    }

    protected final PackageViewDescriptor g(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        if (name.h()) {
            return null;
        }
        ModuleDescriptor moduleDescriptor = this.b;
        FqName fqNameC = this.c.c(name);
        Intrinsics.checkExpressionValueIsNotNull(fqNameC, "fqName.child(name)");
        PackageViewDescriptor packageViewDescriptorD0 = moduleDescriptor.d0(fqNameC);
        if (packageViewDescriptorD0.isEmpty()) {
            return null;
        }
        return packageViewDescriptorD0;
    }
}
