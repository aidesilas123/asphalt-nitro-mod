package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.n;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: TypeIntersectionScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class TypeIntersectionScope extends kotlin.reflect.jvm.internal.impl.resolve.scopes.a {
    public static final a b = new a(null);
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.b c;

    /* JADX INFO: compiled from: TypeIntersectionScope.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }

        public final MemberScope a(String message, Collection<? extends u> types) {
            Intrinsics.checkParameterIsNotNull(message, "message");
            Intrinsics.checkParameterIsNotNull(types, "types");
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(types, 10));
            Iterator<T> it = types.iterator();
            while (it.hasNext()) {
                arrayList.add(((u) it.next()).m());
            }
            kotlin.reflect.jvm.internal.impl.resolve.scopes.b bVar = new kotlin.reflect.jvm.internal.impl.resolve.scopes.b(message, arrayList);
            return types.size() <= 1 ? bVar : new TypeIntersectionScope(bVar, null);
        }
    }

    /* JADX INFO: compiled from: TypeIntersectionScope.kt */
    static final class b extends Lambda implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.a> {
        public static final b a = new b();

        b() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.a receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return receiver;
        }
    }

    /* JADX INFO: compiled from: TypeIntersectionScope.kt */
    static final class c extends Lambda implements Function1<c0, c0> {
        public static final c a = new c();

        c() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final c0 invoke(c0 receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return receiver;
        }
    }

    /* JADX INFO: compiled from: TypeIntersectionScope.kt */
    static final class d extends Lambda implements Function1<y, y> {
        public static final d a = new d();

        d() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final y invoke(y receiver) {
            Intrinsics.checkParameterIsNotNull(receiver, "$receiver");
            return receiver;
        }
    }

    private TypeIntersectionScope(kotlin.reflect.jvm.internal.impl.resolve.scopes.b bVar) {
        this.c = bVar;
    }

    public /* synthetic */ TypeIntersectionScope(kotlin.reflect.jvm.internal.impl.resolve.scopes.b bVar, n nVar) {
        this(bVar);
    }

    public static final MemberScope create(String str, Collection<? extends u> collection) {
        return b.a(str, collection);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(super.a(name, location), c.a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        Collection<i> collectionD = super.d(kindFilter, nameFilter);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : collectionD) {
            if (((i) obj) instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.c();
        List list2 = (List) pair.d();
        if (list != null) {
            return CollectionsKt___CollectionsKt.plus(OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(list, b.a), (Iterable) list2);
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Collection<org.jetbrains.kotlin.descriptors.CallableDescriptor>");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return OverridingUtilsKt.selectMostSpecificInEachOverridableGroup(super.e(name, location), d.a);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.b g() {
        return this.c;
    }
}
