package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsJVMKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.e0;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.h0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.protobuf.j;
import kotlin.reflect.jvm.internal.impl.protobuf.l;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.storage.StorageKt;
import kotlin.reflect.jvm.internal.impl.utils.CollectionsKt;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.v;

/* JADX INFO: compiled from: DeserializedMemberScope.kt */
/* JADX INFO: loaded from: classes5.dex */
public abstract class DeserializedMemberScope extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {
    static final /* synthetic */ KProperty[] b = {Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "variableNamesLazy", "getVariableNamesLazy()Ljava/util/Set;")), Reflection.property1(new e0(Reflection.getOrCreateKotlinClass(DeserializedMemberScope.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;"))};
    private final Map<Name, byte[]> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Map<Name, byte[]> f9795d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<Name, byte[]> f9796e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.b<Name, Collection<c0>> f9797f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.b<Name, Collection<y>> f9798g;
    private final kotlin.reflect.jvm.internal.impl.storage.c<Name, h0> h;
    private final kotlin.reflect.jvm.internal.impl.storage.e i;
    private final kotlin.reflect.jvm.internal.impl.storage.e j;
    private final kotlin.reflect.jvm.internal.impl.storage.e k;
    private final DeserializationContext l;

    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    static final class a extends Lambda implements Function0<Set<? extends Name>> {
        final /* synthetic */ Function0 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Function0 function0) {
            super(0);
            this.a = function0;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return CollectionsKt___CollectionsKt.toSet((Iterable) this.a.invoke());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [M] */
    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    public static final class b<M> extends Lambda implements Function0<M> {
        final /* synthetic */ ByteArrayInputStream a;
        final /* synthetic */ DeserializedMemberScope b;
        final /* synthetic */ l c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ByteArrayInputStream byteArrayInputStream, DeserializedMemberScope deserializedMemberScope, l lVar) {
            super(0);
            this.a = byteArrayInputStream;
            this.b = deserializedMemberScope;
            this.c = lVar;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TM; */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final j invoke() {
            return (j) this.c.d(this.a, this.b.q().b().j());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [M] */
    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    public static final class c<M> extends Lambda implements Function0<M> {
        final /* synthetic */ ByteArrayInputStream a;
        final /* synthetic */ DeserializedMemberScope b;
        final /* synthetic */ l c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(ByteArrayInputStream byteArrayInputStream, DeserializedMemberScope deserializedMemberScope, l lVar) {
            super(0);
            this.a = byteArrayInputStream;
            this.b = deserializedMemberScope;
            this.c = lVar;
        }

        /* JADX WARN: Incorrect return type in method signature: ()TM; */
        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final j invoke() {
            return (j) this.c.d(this.a, this.b.q().b().j());
        }
    }

    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    static final class d extends Lambda implements Function0<Set<? extends Name>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return SetsKt___SetsKt.plus((Set) DeserializedMemberScope.this.c.keySet(), (Iterable) DeserializedMemberScope.this.t());
        }
    }

    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    static final class e extends Lambda implements Function1<Name, Collection<? extends c0>> {
        e() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<c0> invoke(Name it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return DeserializedMemberScope.this.j(it);
        }
    }

    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    static final class f extends Lambda implements Function1<Name, Collection<? extends y>> {
        f() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Collection<y> invoke(Name it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return DeserializedMemberScope.this.m(it);
        }
    }

    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    static final class g extends Lambda implements Function1<Name, h0> {
        g() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final h0 invoke(Name it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return DeserializedMemberScope.this.o(it);
        }
    }

    /* JADX INFO: compiled from: DeserializedMemberScope.kt */
    static final class h extends Lambda implements Function0<Set<? extends Name>> {
        h() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Set<Name> invoke() {
            return SetsKt___SetsKt.plus((Set) DeserializedMemberScope.this.f9795d.keySet(), (Iterable) DeserializedMemberScope.this.u());
        }
    }

    protected DeserializedMemberScope(DeserializationContext c2, Collection<ProtoBuf$Function> functionList, Collection<ProtoBuf$Property> propertyList, Collection<ProtoBuf$TypeAlias> typeAliasList, Function0<? extends Collection<Name>> classNames) throws IOException {
        Map<Name, byte[]> mapEmptyMap;
        Intrinsics.checkParameterIsNotNull(c2, "c");
        Intrinsics.checkParameterIsNotNull(functionList, "functionList");
        Intrinsics.checkParameterIsNotNull(propertyList, "propertyList");
        Intrinsics.checkParameterIsNotNull(typeAliasList, "typeAliasList");
        Intrinsics.checkParameterIsNotNull(classNames, "classNames");
        this.l = c2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : functionList) {
            Name name = NameResolverUtilKt.getName(this.l.f(), ((ProtoBuf$Function) ((j) obj)).P());
            Object arrayList = linkedHashMap.get(name);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(name, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.c = y(linkedHashMap);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj2 : propertyList) {
            Name name2 = NameResolverUtilKt.getName(this.l.f(), ((ProtoBuf$Property) ((j) obj2)).O());
            Object arrayList2 = linkedHashMap2.get(name2);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap2.put(name2, arrayList2);
            }
            ((List) arrayList2).add(obj2);
        }
        this.f9795d = y(linkedHashMap2);
        if (this.l.b().g().a()) {
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Object obj3 : typeAliasList) {
                Name name3 = NameResolverUtilKt.getName(this.l.f(), ((ProtoBuf$TypeAlias) ((j) obj3)).Q());
                Object arrayList3 = linkedHashMap3.get(name3);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    linkedHashMap3.put(name3, arrayList3);
                }
                ((List) arrayList3).add(obj3);
            }
            mapEmptyMap = y(linkedHashMap3);
        } else {
            mapEmptyMap = MapsKt__MapsKt.emptyMap();
        }
        this.f9796e = mapEmptyMap;
        this.f9797f = this.l.g().h(new e());
        this.f9798g = this.l.g().h(new f());
        this.h = this.l.g().g(new g());
        this.i = this.l.g().c(new d());
        this.j = this.l.g().c(new h());
        this.k = this.l.g().c(new a(classNames));
    }

    private final void h(Collection<i> collection, DescriptorKindFilter descriptorKindFilter, Function1<? super Name, Boolean> function1, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
        if (descriptorKindFilter.a(DescriptorKindFilter.x.h())) {
            Set<Name> setF = f();
            ArrayList arrayList = new ArrayList();
            for (Name name : setF) {
                if (function1.invoke(name).booleanValue()) {
                    arrayList.addAll(e(name, bVar));
                }
            }
            kotlin.reflect.jvm.internal.impl.resolve.a aVar = kotlin.reflect.jvm.internal.impl.resolve.a.a;
            Intrinsics.checkExpressionValueIsNotNull(aVar, "MemberComparator.NameAnd…MemberComparator.INSTANCE");
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList, aVar);
            collection.addAll(arrayList);
        }
        if (descriptorKindFilter.a(DescriptorKindFilter.x.c())) {
            Set<Name> setB = b();
            ArrayList arrayList2 = new ArrayList();
            for (Name name2 : setB) {
                if (function1.invoke(name2).booleanValue()) {
                    arrayList2.addAll(a(name2, bVar));
                }
            }
            kotlin.reflect.jvm.internal.impl.resolve.a aVar2 = kotlin.reflect.jvm.internal.impl.resolve.a.a;
            Intrinsics.checkExpressionValueIsNotNull(aVar2, "MemberComparator.NameAnd…MemberComparator.INSTANCE");
            CollectionsKt__MutableCollectionsJVMKt.sortWith(arrayList2, aVar2);
            collection.addAll(arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<c0> j(Name name) {
        List<ProtoBuf$Function> listEmptyList;
        Map<Name, byte[]> map = this.c;
        l<ProtoBuf$Function> lVar = ProtoBuf$Function.f9485d;
        Intrinsics.checkExpressionValueIsNotNull(lVar, "ProtoBuf.Function.PARSER");
        byte[] bArr = map.get(name);
        if (bArr == null || (listEmptyList = SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.generateSequence(new b(new ByteArrayInputStream(bArr), this, lVar)))) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (ProtoBuf$Function it : listEmptyList) {
            MemberDeserializer memberDeserializerE = this.l.e();
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(memberDeserializerE.l(it));
        }
        k(name, arrayList);
        return CollectionsKt.compact(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<y> m(Name name) {
        List<ProtoBuf$Property> listEmptyList;
        Map<Name, byte[]> map = this.f9795d;
        l<ProtoBuf$Property> lVar = ProtoBuf$Property.f9517d;
        Intrinsics.checkExpressionValueIsNotNull(lVar, "ProtoBuf.Property.PARSER");
        byte[] bArr = map.get(name);
        if (bArr == null || (listEmptyList = SequencesKt___SequencesKt.toList(SequencesKt__SequencesKt.generateSequence(new c(new ByteArrayInputStream(bArr), this, lVar)))) == null) {
            listEmptyList = CollectionsKt__CollectionsKt.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (ProtoBuf$Property it : listEmptyList) {
            MemberDeserializer memberDeserializerE = this.l.e();
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            arrayList.add(memberDeserializerE.n(it));
        }
        l(name, arrayList);
        return CollectionsKt.compact(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final h0 o(Name name) {
        ProtoBuf$TypeAlias delimitedFrom;
        byte[] bArr = this.f9796e.get(name);
        if (bArr == null || (delimitedFrom = ProtoBuf$TypeAlias.parseDelimitedFrom(new ByteArrayInputStream(bArr), this.l.b().j())) == null) {
            return null;
        }
        return this.l.e().o(delimitedFrom);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d p(Name name) {
        return this.l.b().b(n(name));
    }

    private final Set<Name> s() {
        return (Set) StorageKt.getValue(this.i, this, (KProperty<?>) b[0]);
    }

    private final Set<Name> v() {
        return this.f9796e.keySet();
    }

    private final Set<Name> w() {
        return (Set) StorageKt.getValue(this.j, this, (KProperty<?>) b[1]);
    }

    private final Map<Name, byte[]> y(Map<Name, ? extends Collection<? extends kotlin.reflect.jvm.internal.impl.protobuf.a>> map) throws IOException {
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object key = entry.getKey();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Iterable iterable = (Iterable) entry.getValue();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterable, 10));
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                ((kotlin.reflect.jvm.internal.impl.protobuf.a) it2.next()).d(byteArrayOutputStream);
                arrayList.add(v.a);
            }
            linkedHashMap.put(key, byteArrayOutputStream.toByteArray());
        }
        return linkedHashMap;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return !b().contains(name) ? CollectionsKt__CollectionsKt.emptyList() : this.f9797f.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> b() {
        return s();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
    public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        if (x(name)) {
            return p(name);
        }
        if (v().contains(name)) {
            return this.h.invoke(name);
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(location, "location");
        return !f().contains(name) ? CollectionsKt__CollectionsKt.emptyList() : this.f9798g.invoke(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Set<Name> f() {
        return w();
    }

    protected abstract void g(Collection<i> collection, Function1<? super Name, Boolean> function1);

    protected final Collection<i> i(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
        Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
        Intrinsics.checkParameterIsNotNull(location, "location");
        ArrayList arrayList = new ArrayList(0);
        DescriptorKindFilter.Companion companion = DescriptorKindFilter.x;
        if (kindFilter.a(companion.f())) {
            g(arrayList, nameFilter);
        }
        h(arrayList, kindFilter, nameFilter, location);
        if (kindFilter.a(companion.b())) {
            for (Name name : r()) {
                if (nameFilter.invoke(name).booleanValue()) {
                    CollectionsKt.addIfNotNull(arrayList, p(name));
                }
            }
        }
        if (kindFilter.a(DescriptorKindFilter.x.g())) {
            for (Name name2 : v()) {
                if (nameFilter.invoke(name2).booleanValue()) {
                    CollectionsKt.addIfNotNull(arrayList, this.h.invoke(name2));
                }
            }
        }
        return CollectionsKt.compact(arrayList);
    }

    protected void k(Name name, Collection<c0> functions) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(functions, "functions");
    }

    protected void l(Name name, Collection<y> descriptors) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(descriptors, "descriptors");
    }

    protected abstract ClassId n(Name name);

    protected final DeserializationContext q() {
        return this.l;
    }

    public final Set<Name> r() {
        return (Set) StorageKt.getValue(this.k, this, (KProperty<?>) b[2]);
    }

    protected abstract Set<Name> t();

    protected abstract Set<Name> u();

    protected boolean x(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return r().contains(name);
    }
}
