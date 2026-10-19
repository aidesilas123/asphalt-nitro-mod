package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.q;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.Annotations;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.g0;
import kotlin.reflect.jvm.internal.impl.descriptors.i;
import kotlin.reflect.jvm.internal.impl.descriptors.i0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ClassConstructorDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.EnumEntrySyntheticClassDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.y;
import kotlin.reflect.jvm.internal.impl.incremental.UtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$EnumEntry;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeTable;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.ProtoTypeTableUtilKt;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.VersionRequirementTable;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorFactory;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.DescriptorKindFilter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.StaticScopeForKotlinEnum;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializationContext;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.MemberDeserializer;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.NameResolverUtilKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.j;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.m;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.t;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.v;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.u;

/* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class DeserializedClassDescriptor extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ClassId f9790f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Modality f9791g;
    private final m0 h;
    private final ClassKind i;
    private final DeserializationContext j;
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.f k;
    private final a l;
    private final ScopesHolderForClass<DeserializedClassMemberScope> m;
    private final EnumEntryClassDescriptors n;
    private final i o;
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.descriptors.c> p;
    private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<kotlin.reflect.jvm.internal.impl.descriptors.c>> q;
    private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.descriptors.d> r;
    private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<kotlin.reflect.jvm.internal.impl.descriptors.d>> s;
    private final t.a t;
    private final Annotations u;
    private final ProtoBuf$Class v;
    private final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a w;
    private final d0 x;

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    private final class DeserializedClassMemberScope extends DeserializedMemberScope {
        private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<i>> m;
        private final kotlin.reflect.jvm.internal.impl.storage.e<Collection<u>> n;
        private final kotlin.reflect.jvm.internal.impl.types.checker.d o;
        final /* synthetic */ DeserializedClassDescriptor p;

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class a extends Lambda implements Function0<List<? extends Name>> {
            final /* synthetic */ List a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(List list) {
                super(0);
                this.a = list;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<Name> invoke() {
                return this.a;
            }
        }

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class b extends Lambda implements Function0<Collection<? extends i>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<i> invoke() {
                return DeserializedClassMemberScope.this.i(DescriptorKindFilter.l, MemberScope.a.a(), NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
            }
        }

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class c extends Lambda implements Function1<c0, Boolean> {
            c() {
                super(1);
            }

            public final boolean a(c0 it) {
                Intrinsics.checkParameterIsNotNull(it, "it");
                return DeserializedClassMemberScope.this.q().b().s().b(DeserializedClassMemberScope.this.p, it);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(c0 c0Var) {
                return Boolean.valueOf(a(c0Var));
            }
        }

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        public static final class d extends kotlin.reflect.jvm.internal.impl.resolve.b {
            final /* synthetic */ Collection a;

            d(Collection collection) {
                this.a = collection;
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.c
            public void a(CallableMemberDescriptor fakeOverride) {
                Intrinsics.checkParameterIsNotNull(fakeOverride, "fakeOverride");
                OverridingUtil.resolveUnknownVisibilityForMember(fakeOverride, null);
                this.a.add(fakeOverride);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.b
            protected void e(CallableMemberDescriptor fromSuper, CallableMemberDescriptor fromCurrent) {
                Intrinsics.checkParameterIsNotNull(fromSuper, "fromSuper");
                Intrinsics.checkParameterIsNotNull(fromCurrent, "fromCurrent");
            }
        }

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class e extends Lambda implements Function0<Collection<? extends u>> {
            e() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Collection<u> invoke() {
                return DeserializedClassMemberScope.this.o.f(DeserializedClassMemberScope.this.A());
            }
        }

        public DeserializedClassMemberScope(DeserializedClassDescriptor deserializedClassDescriptor, kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
            Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.p = deserializedClassDescriptor;
            DeserializationContext deserializationContextH0 = deserializedClassDescriptor.H0();
            List<ProtoBuf$Function> listK0 = deserializedClassDescriptor.I0().k0();
            Intrinsics.checkExpressionValueIsNotNull(listK0, "classProto.functionList");
            List<ProtoBuf$Property> listO0 = deserializedClassDescriptor.I0().o0();
            Intrinsics.checkExpressionValueIsNotNull(listO0, "classProto.propertyList");
            List<ProtoBuf$TypeAlias> listW0 = deserializedClassDescriptor.I0().w0();
            Intrinsics.checkExpressionValueIsNotNull(listW0, "classProto.typeAliasList");
            List<Integer> listL0 = deserializedClassDescriptor.I0().l0();
            Intrinsics.checkExpressionValueIsNotNull(listL0, "classProto.nestedClassNameList");
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVarF = deserializedClassDescriptor.H0().f();
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listL0, 10));
            Iterator<T> it = listL0.iterator();
            while (it.hasNext()) {
                arrayList.add(NameResolverUtilKt.getName(bVarF, ((Number) it.next()).intValue()));
            }
            super(deserializationContextH0, listK0, listO0, listW0, new a(arrayList));
            this.o = kotlinTypeRefiner;
            this.m = q().g().c(new b());
            this.n = q().g().c(new e());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final DeserializedClassDescriptor A() {
            return this.p;
        }

        private final <D extends CallableMemberDescriptor> void z(Name name, Collection<? extends D> collection, Collection<D> collection2) {
            q().b().m().a().q(name, collection, new ArrayList(collection2), A(), new d(collection2));
        }

        public void B(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(location, "location");
            UtilsKt.record(q().b().o(), location, A(), name);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<c0> a(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(location, "location");
            B(name, location);
            return super.a(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public kotlin.reflect.jvm.internal.impl.descriptors.f c(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarC;
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(location, "location");
            B(name, location);
            EnumEntryClassDescriptors enumEntryClassDescriptors = A().n;
            return (enumEntryClassDescriptors == null || (dVarC = enumEntryClassDescriptors.c(name)) == null) ? super.c(name, location) : dVarC;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.ResolutionScope
        public Collection<i> d(DescriptorKindFilter kindFilter, Function1<? super Name, Boolean> nameFilter) {
            Intrinsics.checkParameterIsNotNull(kindFilter, "kindFilter");
            Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
            return this.m.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<y> e(Name name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(location, "location");
            B(name, location);
            return super.e(name, location);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void g(Collection<i> result, Function1<? super Name, Boolean> nameFilter) {
            Intrinsics.checkParameterIsNotNull(result, "result");
            Intrinsics.checkParameterIsNotNull(nameFilter, "nameFilter");
            EnumEntryClassDescriptors enumEntryClassDescriptors = A().n;
            Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionA = enumEntryClassDescriptors != null ? enumEntryClassDescriptors.a() : null;
            if (collectionA == null) {
                collectionA = CollectionsKt__CollectionsKt.emptyList();
            }
            result.addAll(collectionA);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void k(Name name, Collection<c0> functions) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(functions, "functions");
            ArrayList arrayList = new ArrayList();
            Iterator<u> it = this.n.invoke().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().m().a(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            CollectionsKt__MutableCollectionsKt.retainAll(functions, new c());
            functions.addAll(q().b().c().a(name, this.p));
            z(name, arrayList, functions);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected void l(Name name, Collection<y> descriptors) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            Intrinsics.checkParameterIsNotNull(descriptors, "descriptors");
            ArrayList arrayList = new ArrayList();
            Iterator<u> it = this.n.invoke().iterator();
            while (it.hasNext()) {
                arrayList.addAll(it.next().m().e(name, NoLookupLocation.FOR_ALREADY_TRACKED));
            }
            z(name, arrayList, descriptors);
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected ClassId n(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            ClassId classIdD = this.p.f9790f.d(name);
            Intrinsics.checkExpressionValueIsNotNull(classIdD, "classId.createNestedClassId(name)");
            return classIdD;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected Set<Name> t() {
            List<u> listH = A().l.h();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listH.iterator();
            while (it.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((u) it.next()).m().b());
            }
            linkedHashSet.addAll(q().b().c().e(this.p));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedMemberScope
        protected Set<Name> u() {
            List<u> listH = A().l.h();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listH.iterator();
            while (it.hasNext()) {
                CollectionsKt__MutableCollectionsKt.addAll(linkedHashSet, ((u) it.next()).m().f());
            }
            return linkedHashSet;
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    private final class EnumEntryClassDescriptors {
        private final Map<Name, ProtoBuf$EnumEntry> a;
        private final kotlin.reflect.jvm.internal.impl.storage.c<Name, kotlin.reflect.jvm.internal.impl.descriptors.d> b;
        private final kotlin.reflect.jvm.internal.impl.storage.e<Set<Name>> c;

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class a extends Lambda implements Function1<Name, EnumEntrySyntheticClassDescriptor> {

            /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$EnumEntryClassDescriptors$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
            static final class C0546a extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
                final /* synthetic */ ProtoBuf$EnumEntry a;
                final /* synthetic */ a b;
                final /* synthetic */ Name c;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0546a(ProtoBuf$EnumEntry protoBuf$EnumEntry, a aVar, Name name) {
                    super(0);
                    this.a = protoBuf$EnumEntry;
                    this.b = aVar;
                    this.c = name;
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public final List<AnnotationDescriptor> invoke() {
                    return CollectionsKt___CollectionsKt.toList(DeserializedClassDescriptor.this.H0().b().d().d(DeserializedClassDescriptor.this.M0(), this.a));
                }
            }

            a() {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final EnumEntrySyntheticClassDescriptor invoke(Name name) {
                Intrinsics.checkParameterIsNotNull(name, "name");
                ProtoBuf$EnumEntry protoBuf$EnumEntry = (ProtoBuf$EnumEntry) EnumEntryClassDescriptors.this.a.get(name);
                if (protoBuf$EnumEntry == null) {
                    return null;
                }
                kotlin.reflect.jvm.internal.impl.storage.h hVarG = DeserializedClassDescriptor.this.H0().g();
                EnumEntryClassDescriptors enumEntryClassDescriptors = EnumEntryClassDescriptors.this;
                return EnumEntrySyntheticClassDescriptor.create(hVarG, DeserializedClassDescriptor.this, name, enumEntryClassDescriptors.c, new kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a(DeserializedClassDescriptor.this.H0().g(), new C0546a(protoBuf$EnumEntry, this, name)), d0.a);
            }
        }

        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class b extends Lambda implements Function0<Set<? extends Name>> {
            b() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final Set<Name> invoke() {
                return EnumEntryClassDescriptors.this.b();
            }
        }

        public EnumEntryClassDescriptors() {
            List<ProtoBuf$EnumEntry> listF0 = DeserializedClassDescriptor.this.I0().f0();
            Intrinsics.checkExpressionValueIsNotNull(listF0, "classProto.enumEntryList");
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listF0, 10)), 16));
            for (Object obj : listF0) {
                ProtoBuf$EnumEntry it = (ProtoBuf$EnumEntry) obj;
                kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVarF = DeserializedClassDescriptor.this.H0().f();
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                linkedHashMap.put(NameResolverUtilKt.getName(bVarF, it.z()), obj);
            }
            this.a = linkedHashMap;
            this.b = DeserializedClassDescriptor.this.H0().g().g(new a());
            this.c = DeserializedClassDescriptor.this.H0().g().c(new b());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Set<Name> b() {
            HashSet hashSet = new HashSet();
            Iterator<u> it = DeserializedClassDescriptor.this.i().h().iterator();
            while (it.hasNext()) {
                for (i iVar : ResolutionScope.DefaultImpls.getContributedDescriptors$default(it.next().m(), null, null, 3, null)) {
                    if ((iVar instanceof c0) || (iVar instanceof y)) {
                        hashSet.add(iVar.getName());
                    }
                }
            }
            List<ProtoBuf$Function> listK0 = DeserializedClassDescriptor.this.I0().k0();
            Intrinsics.checkExpressionValueIsNotNull(listK0, "classProto.functionList");
            for (ProtoBuf$Function it2 : listK0) {
                kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVarF = DeserializedClassDescriptor.this.H0().f();
                Intrinsics.checkExpressionValueIsNotNull(it2, "it");
                hashSet.add(NameResolverUtilKt.getName(bVarF, it2.P()));
            }
            List<ProtoBuf$Property> listO0 = DeserializedClassDescriptor.this.I0().o0();
            Intrinsics.checkExpressionValueIsNotNull(listO0, "classProto.propertyList");
            for (ProtoBuf$Property it3 : listO0) {
                kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVarF2 = DeserializedClassDescriptor.this.H0().f();
                Intrinsics.checkExpressionValueIsNotNull(it3, "it");
                hashSet.add(NameResolverUtilKt.getName(bVarF2, it3.O()));
            }
            return SetsKt___SetsKt.plus((Set) hashSet, (Iterable) hashSet);
        }

        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> a() {
            Set<Name> setKeySet = this.a.keySet();
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = setKeySet.iterator();
            while (it.hasNext()) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = c((Name) it.next());
                if (dVarC != null) {
                    arrayList.add(dVarC);
                }
            }
            return arrayList;
        }

        public final kotlin.reflect.jvm.internal.impl.descriptors.d c(Name name) {
            Intrinsics.checkParameterIsNotNull(name, "name");
            return this.b.invoke(name);
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    private final class a extends kotlin.reflect.jvm.internal.impl.types.b {
        private final kotlin.reflect.jvm.internal.impl.storage.e<List<i0>> c;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
        static final class C0547a extends Lambda implements Function0<List<? extends i0>> {
            C0547a() {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public final List<i0> invoke() {
                return TypeParameterUtilsKt.computeConstructorTypeParameters(DeserializedClassDescriptor.this);
            }
        }

        public a() {
            super(DeserializedClassDescriptor.this.H0().g());
            this.c = DeserializedClassDescriptor.this.H0().g().c(new C0547a());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<u> f() {
            String strE;
            FqName fqNameB;
            List<ProtoBuf$Type> listSupertypes = ProtoTypeTableUtilKt.supertypes(DeserializedClassDescriptor.this.I0(), DeserializedClassDescriptor.this.H0().i());
            ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listSupertypes, 10));
            Iterator<T> it = listSupertypes.iterator();
            while (it.hasNext()) {
                arrayList.add(DeserializedClassDescriptor.this.H0().h().k((ProtoBuf$Type) it.next()));
            }
            List listPlus = CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) DeserializedClassDescriptor.this.H0().b().c().d(DeserializedClassDescriptor.this));
            ArrayList<NotFoundClasses.b> arrayList2 = new ArrayList();
            Iterator it2 = listPlus.iterator();
            while (it2.hasNext()) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarQ = ((u) it2.next()).H0().q();
                if (!(fVarQ instanceof NotFoundClasses.b)) {
                    fVarQ = null;
                }
                NotFoundClasses.b bVar = (NotFoundClasses.b) fVarQ;
                if (bVar != null) {
                    arrayList2.add(bVar);
                }
            }
            if (!arrayList2.isEmpty()) {
                m mVarI = DeserializedClassDescriptor.this.H0().b().i();
                DeserializedClassDescriptor deserializedClassDescriptor = DeserializedClassDescriptor.this;
                ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList2, 10));
                for (NotFoundClasses.b bVar2 : arrayList2) {
                    ClassId classId = DescriptorUtilsKt.getClassId(bVar2);
                    if (classId == null || (fqNameB = classId.b()) == null || (strE = fqNameB.b()) == null) {
                        strE = bVar2.getName().e();
                    }
                    arrayList3.add(strE);
                }
                mVarI.b(deserializedClassDescriptor, arrayList3);
            }
            return CollectionsKt___CollectionsKt.toList(listPlus);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public List<i0> getParameters() {
            return this.c.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected g0 j() {
            return g0.a.a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.b
        /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
        public DeserializedClassDescriptor q() {
            return DeserializedClassDescriptor.this;
        }

        public String toString() {
            String string = DeserializedClassDescriptor.this.getName().toString();
            Intrinsics.checkExpressionValueIsNotNull(string, "name.toString()");
            return string;
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    static final class b extends Lambda implements Function0<List<? extends AnnotationDescriptor>> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final List<AnnotationDescriptor> invoke() {
            return CollectionsKt___CollectionsKt.toList(DeserializedClassDescriptor.this.H0().b().d().b(DeserializedClassDescriptor.this.M0()));
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    static final class c extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.d> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
            return DeserializedClassDescriptor.this.k0();
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    static final class d extends Lambda implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.c>> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> invoke() {
            return DeserializedClassDescriptor.this.z0();
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    static final /* synthetic */ class e extends q implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.d, DeserializedClassMemberScope> {
        e(DeserializedClassDescriptor deserializedClassDescriptor) {
            super(1, deserializedClassDescriptor);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final DeserializedClassMemberScope invoke(kotlin.reflect.jvm.internal.impl.types.checker.d p1) {
            Intrinsics.checkParameterIsNotNull(p1, "p1");
            return new DeserializedClassMemberScope((DeserializedClassDescriptor) this.receiver, p1);
        }

        @Override // kotlin.jvm.internal.l, kotlin.reflect.KCallable
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.l
        public final KDeclarationContainer getOwner() {
            return Reflection.getOrCreateKotlinClass(DeserializedClassMemberScope.class);
        }

        @Override // kotlin.jvm.internal.l
        public final String getSignature() {
            return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    static final class f extends Lambda implements Function0<kotlin.reflect.jvm.internal.impl.descriptors.c> {
        f() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final kotlin.reflect.jvm.internal.impl.descriptors.c invoke() {
            return DeserializedClassDescriptor.this.B0();
        }
    }

    /* JADX INFO: compiled from: DeserializedClassDescriptor.kt */
    static final class g extends Lambda implements Function0<Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.d>> {
        g() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> invoke() {
            return DeserializedClassDescriptor.this.G0();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedClassDescriptor(DeserializationContext outerContext, ProtoBuf$Class classProto, kotlin.reflect.jvm.internal.impl.metadata.deserialization.b nameResolver, kotlin.reflect.jvm.internal.impl.metadata.deserialization.a metadataVersion, d0 sourceElement) {
        super(outerContext.g(), NameResolverUtilKt.getClassId(nameResolver, classProto.h0()).h());
        Intrinsics.checkParameterIsNotNull(outerContext, "outerContext");
        Intrinsics.checkParameterIsNotNull(classProto, "classProto");
        Intrinsics.checkParameterIsNotNull(nameResolver, "nameResolver");
        Intrinsics.checkParameterIsNotNull(metadataVersion, "metadataVersion");
        Intrinsics.checkParameterIsNotNull(sourceElement, "sourceElement");
        this.v = classProto;
        this.w = metadataVersion;
        this.x = sourceElement;
        this.f9790f = NameResolverUtilKt.getClassId(nameResolver, classProto.h0());
        v vVar = v.a;
        this.f9791g = vVar.c(Flags.f9619d.a(classProto.g0()));
        this.h = vVar.f(Flags.c.a(classProto.g0()));
        ClassKind classKindA = vVar.a(Flags.f9620e.a(classProto.g0()));
        this.i = classKindA;
        List<ProtoBuf$TypeParameter> listZ0 = classProto.z0();
        Intrinsics.checkExpressionValueIsNotNull(listZ0, "classProto.typeParameterList");
        ProtoBuf$TypeTable protoBuf$TypeTableA0 = classProto.A0();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$TypeTableA0, "classProto.typeTable");
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVar = new kotlin.reflect.jvm.internal.impl.metadata.deserialization.e(protoBuf$TypeTableA0);
        VersionRequirementTable.a aVar = VersionRequirementTable.b;
        ProtoBuf$VersionRequirementTable protoBuf$VersionRequirementTableC0 = classProto.C0();
        Intrinsics.checkExpressionValueIsNotNull(protoBuf$VersionRequirementTableC0, "classProto.versionRequirementTable");
        DeserializationContext deserializationContextA = outerContext.a(this, listZ0, nameResolver, eVar, aVar.a(protoBuf$VersionRequirementTableC0), metadataVersion);
        this.j = deserializationContextA;
        ClassKind classKind = ClassKind.ENUM_CLASS;
        this.k = classKindA == classKind ? new StaticScopeForKotlinEnum(deserializationContextA.g(), this) : MemberScope.b.b;
        this.l = new a();
        this.m = ScopesHolderForClass.b.a(this, deserializationContextA.g(), deserializationContextA.b().m().c(), new e(this));
        this.n = classKindA == classKind ? new EnumEntryClassDescriptors() : null;
        i iVarD = outerContext.d();
        this.o = iVarD;
        this.p = deserializationContextA.g().e(new f());
        this.q = deserializationContextA.g().c(new d());
        this.r = deserializationContextA.g().e(new c());
        this.s = deserializationContextA.g().c(new g());
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVarF = deserializationContextA.f();
        kotlin.reflect.jvm.internal.impl.metadata.deserialization.e eVarI = deserializationContextA.i();
        DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) (iVarD instanceof DeserializedClassDescriptor ? iVarD : null);
        this.t = new t.a(classProto, bVarF, eVarI, sourceElement, deserializedClassDescriptor != null ? deserializedClassDescriptor.t : null);
        this.u = !Flags.b.a(classProto.g0()).booleanValue() ? Annotations.e0.b() : new h(deserializationContextA.g(), new b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.c B0() {
        Object next;
        if (this.i.e()) {
            ClassConstructorDescriptorImpl classConstructorDescriptorImplCreatePrimaryConstructorForObject = DescriptorFactory.createPrimaryConstructorForObject(this, d0.a);
            classConstructorDescriptorImplCreatePrimaryConstructorForObject.U0(n());
            return classConstructorDescriptorImplCreatePrimaryConstructorForObject;
        }
        List<ProtoBuf$Constructor> listB0 = this.v.b0();
        Intrinsics.checkExpressionValueIsNotNull(listB0, "classProto.constructorList");
        Iterator<T> it = listB0.iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ProtoBuf$Constructor it2 = (ProtoBuf$Constructor) next;
            Flags.b bVar = Flags.k;
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            if (!bVar.a(it2.D()).booleanValue()) {
                break;
            }
        }
        ProtoBuf$Constructor protoBuf$Constructor = (ProtoBuf$Constructor) next;
        if (protoBuf$Constructor != null) {
            return this.j.e().k(protoBuf$Constructor, true);
        }
        return null;
    }

    private final List<kotlin.reflect.jvm.internal.impl.descriptors.c> F0() {
        List<ProtoBuf$Constructor> listB0 = this.v.b0();
        Intrinsics.checkExpressionValueIsNotNull(listB0, "classProto.constructorList");
        ArrayList<ProtoBuf$Constructor> arrayList = new ArrayList();
        for (Object obj : listB0) {
            ProtoBuf$Constructor it = (ProtoBuf$Constructor) obj;
            Flags.b bVar = Flags.k;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            Boolean boolA = bVar.a(it.D());
            Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_SECONDARY.get(it.flags)");
            if (boolA.booleanValue()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        for (ProtoBuf$Constructor it2 : arrayList) {
            MemberDeserializer memberDeserializerE = this.j.e();
            Intrinsics.checkExpressionValueIsNotNull(it2, "it");
            arrayList2.add(memberDeserializerE.k(it2, false));
        }
        return arrayList2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> G0() {
        if (this.f9791g != Modality.SEALED) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        List<Integer> fqNames = this.v.p0();
        Intrinsics.checkExpressionValueIsNotNull(fqNames, "fqNames");
        if (!(!fqNames.isEmpty())) {
            return DescriptorUtilsKt.computeSealedSubclasses(this);
        }
        ArrayList arrayList = new ArrayList();
        for (Integer index : fqNames) {
            j jVarB = this.j.b();
            kotlin.reflect.jvm.internal.impl.metadata.deserialization.b bVarF = this.j.f();
            Intrinsics.checkExpressionValueIsNotNull(index, "index");
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = jVarB.b(NameResolverUtilKt.getClassId(bVarF, index.intValue()));
            if (dVarB != null) {
                arrayList.add(dVarB);
            }
        }
        return arrayList;
    }

    private final DeserializedClassMemberScope J0() {
        return (DeserializedClassMemberScope) this.m.a(this.j.b().m().c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d k0() {
        if (!this.v.D0()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = J0().c(NameResolverUtilKt.getName(this.j.f(), this.v.Y()), NoLookupLocation.FROM_DESERIALIZATION);
        return (kotlin.reflect.jvm.internal.impl.descriptors.d) (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? fVarC : null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> z0() {
        return CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) F0(), (Iterable) CollectionsKt__CollectionsKt.listOfNotNull(A())), (Iterable) this.j.b().c().c(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c A() {
        return this.p.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean C0() {
        Boolean boolA = Flags.f9622g.a(this.v.g0());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_DATA.get(classProto.flags)");
        return boolA.booleanValue();
    }

    public final DeserializationContext H0() {
        return this.j;
    }

    public final ProtoBuf$Class I0() {
        return this.v;
    }

    public final kotlin.reflect.jvm.internal.impl.metadata.deserialization.a K0() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.resolve.scopes.f f0() {
        return this.k;
    }

    public final t.a M0() {
        return this.t;
    }

    public final boolean N0(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return J0().r().contains(name);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean R() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean U() {
        return Flags.f9620e.a(this.v.g0()) == ProtoBuf$Class.Kind.COMPANION_OBJECT;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.p
    protected MemberScope Z(kotlin.reflect.jvm.internal.impl.types.checker.d kotlinTypeRefiner) {
        Intrinsics.checkParameterIsNotNull(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.m.a(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.j, kotlin.reflect.jvm.internal.impl.descriptors.i
    public i b() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean c0() {
        Boolean boolA = Flags.i.a(this.v.g0());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_EXPECT_CLASS.get(classProto.flags)");
        return boolA.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> f() {
        return this.q.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d g0() {
        return this.r.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public Annotations getAnnotations() {
        return this.u;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind getKind() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l
    public d0 getSource() {
        return this.x;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.m, kotlin.reflect.jvm.internal.impl.descriptors.q
    public m0 getVisibility() {
        return this.h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public f0 i() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q
    public boolean isExternal() {
        Boolean boolA = Flags.h.a(this.v.g0());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_EXTERNAL_CLASS.get(classProto.flags)");
        return boolA.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        Boolean boolA = Flags.j.a(this.v.g0());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_INLINE_CLASS.get(classProto.flags)");
        return boolA.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<i0> o() {
        return this.j.h().h();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.q
    public Modality p() {
        return this.f9791g;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("deserialized ");
        sb.append(c0() ? "expect" : "");
        sb.append(" class ");
        sb.append(getName());
        return sb.toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> v() {
        return this.s.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean x() {
        Boolean boolA = Flags.f9621f.a(this.v.g0());
        Intrinsics.checkExpressionValueIsNotNull(boolA, "Flags.IS_INNER.get(classProto.flags)");
        return boolA.booleanValue();
    }
}
