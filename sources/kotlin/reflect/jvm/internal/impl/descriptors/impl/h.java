package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: compiled from: CompositePackageFragmentProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class h implements kotlin.reflect.jvm.internal.impl.descriptors.t {
    private final List<kotlin.reflect.jvm.internal.impl.descriptors.t> a;

    /* JADX WARN: Multi-variable type inference failed */
    public h(List<? extends kotlin.reflect.jvm.internal.impl.descriptors.t> providers) {
        Intrinsics.checkParameterIsNotNull(providers, "providers");
        this.a = providers;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public List<kotlin.reflect.jvm.internal.impl.descriptors.s> a(FqName fqName) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        ArrayList arrayList = new ArrayList();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.t> it = this.a.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().a(fqName));
        }
        return CollectionsKt___CollectionsKt.toList(arrayList);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t
    public Collection<FqName> l(FqName fqName, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(fqName, "fqName");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        HashSet hashSet = new HashSet();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.t> it = this.a.iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().l(fqName, nameFilter));
        }
        return hashSet;
    }
}
