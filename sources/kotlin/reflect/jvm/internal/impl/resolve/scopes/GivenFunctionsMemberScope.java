package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;

/* JADX INFO: compiled from: GivenFunctionsMemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class GivenFunctionsMemberScope extends f {
    static final /* synthetic */ KProperty[] b = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(GivenFunctionsMemberScope.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};
    private final kotlin.reflect.jvm.internal.impl.storage.e c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.d f9767d;

    /* JADX INFO: compiled from: GivenFunctionsMemberScope.kt */
    static final class a extends Lambda implements Function0<List<? extends i>> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<i> invoke() {
            List<o> listG = GivenFunctionsMemberScope.this.g();
            return CollectionsKt___CollectionsKt.plus((Collection) listG, (Iterable) GivenFunctionsMemberScope.this.h(listG));
        }
    }

    /* JADX INFO: compiled from: GivenFunctionsMemberScope.kt */
    public static final class b extends kotlin.reflect.jvm.internal.impl.resolve.b {
        final /* synthetic */ ArrayList b;

        b(ArrayList arrayList) {
            this.b = arrayList;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.c
        public void a(CallableMemberDescriptor fakeOverride) {
            Intrinsics.checkParameterIsNotNull(fakeOverride, "fakeOverride");
            OverridingUtil.resolveUnknownVisibilityForMember(fakeOverride, null);
            this.b.add(fakeOverride);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.b
        protected void e(CallableMemberDescriptor fromSuper, CallableMemberDescriptor fromCurrent) {
            Intrinsics.checkParameterIsNotNull(fromSuper, "fromSuper");
            Intrinsics.checkParameterIsNotNull(fromCurrent, "fromCurrent");
            throw new IllegalStateException(("Conflict in scope of " + GivenFunctionsMemberScope.this.j() + ": " + fromSuper + " vs " + fromCurrent).toString());
        }
    }

    public GivenFunctionsMemberScope(h storageManager, kotlin.reflect.jvm.internal.impl.descriptors.d containingClass) {
        Intrinsics.checkParameterIsNotNull(storageManager, "storageManager");
        Intrinsics.checkParameterIsNotNull(containingClass, "containingClass");
        this.f9767d = containingClass;
        this.c = storageManager.c(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<i> h(List<? extends o> list) {
        Collection<? extends CallableMemberDescriptor> collectionEmptyList;
        ArrayList arrayList = new ArrayList(3);
        f0 f0VarI = this.f9767d.i();
        Intrinsics.checkExpressionValueIsNotNull(f0VarI, "containingClass.typeConstructor");
        Collection<u> collectionH = f0VarI.h();
        Intrinsics.checkExpressionValueIsNotNull(collectionH, "containingClass.typeConstructor.supertypes");
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = collectionH.iterator();
        while (it.hasNext()) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList2, ResolutionScope.DefaultImpls.getContributedDescriptors$default(((u) it.next()).m(), null, null, 3, null));
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (obj instanceof CallableMemberDescriptor) {
                arrayList3.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList3) {
            Name name = ((CallableMemberDescriptor) obj2).getName();
            Object arrayList4 = linkedHashMap.get(name);
            if (arrayList4 == null) {
                arrayList4 = new ArrayList();
                linkedHashMap.put(name, arrayList4);
            }
            ((List) arrayList4).add(obj2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Name name2 = (Name) entry.getKey();
            List list2 = (List) entry.getValue();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : list2) {
                Boolean boolValueOf = Boolean.valueOf(((CallableMemberDescriptor) obj3) instanceof o);
                Object arrayList5 = linkedHashMap2.get(boolValueOf);
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                    linkedHashMap2.put(boolValueOf, arrayList5);
                }
                ((List) arrayList5).add(obj3);
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                boolean zBooleanValue = ((Boolean) entry2.getKey()).booleanValue();
                List list3 = (List) entry2.getValue();
                OverridingUtil overridingUtil = OverridingUtil.b;
                if (zBooleanValue) {
                    collectionEmptyList = new ArrayList<>();
                    for (Object obj4 : list) {
                        if (Intrinsics.areEqual(((o) obj4).getName(), name2)) {
                            collectionEmptyList.add(obj4);
                        }
                    }
                } else {
                    collectionEmptyList = CollectionsKt__CollectionsKt.emptyList();
                }
                overridingUtil.q(name2, list3, collectionEmptyList, this.f9767d, new b(arrayList));
            }
        }
        return CollectionsKt.compact(arrayList);
    }

    private final List<i> i() {
        return (List) StorageKt.getValue(this.c, this, (KProperty<?>) b[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        List<i> listI = i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI) {
            if (obj instanceof c0) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (Intrinsics.areEqual(((c0) obj2).getName(), name)) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        return !kindFilter.a(DescriptorKindFilter.m.c()) ? CollectionsKt__CollectionsKt.emptyList() : i();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        List<i> listI = i();
        ArrayList arrayList = new ArrayList();
        for (Object obj : listI) {
            if (obj instanceof y) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (Intrinsics.areEqual(((y) obj2).getName(), name)) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }

    protected abstract List<o> g();

    protected final kotlin.reflect.jvm.internal.impl.descriptors.d j() {
        return this.f9767d;
    }
}
