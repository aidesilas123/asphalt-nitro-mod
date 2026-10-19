package kotlin.reflect.jvm.internal.impl.load.java;

import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: compiled from: specialBuiltinMembers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class a {
    private static final Map<FqName, Name> a;
    private static final Map<Name, List<Name>> b;
    private static final Set<FqName> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Set<Name> f9193d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f9194e = new a();

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class C0523a extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        public static final C0523a a = new C0523a();

        C0523a() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return a.f9194e.d(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    static {
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        FqNameUnsafe fqNameUnsafe = eVar.r;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe, "BUILTIN_NAMES._enum");
        FqNameUnsafe fqNameUnsafe2 = eVar.r;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe2, "BUILTIN_NAMES._enum");
        FqName fqName = eVar.N;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "BUILTIN_NAMES.collection");
        FqName fqName2 = eVar.R;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "BUILTIN_NAMES.map");
        FqNameUnsafe fqNameUnsafe3 = eVar.f9043f;
        Intrinsics.checkExpressionValueIsNotNull(fqNameUnsafe3, "BUILTIN_NAMES.charSequence");
        FqName fqName3 = eVar.R;
        Intrinsics.checkExpressionValueIsNotNull(fqName3, "BUILTIN_NAMES.map");
        FqName fqName4 = eVar.R;
        Intrinsics.checkExpressionValueIsNotNull(fqName4, "BUILTIN_NAMES.map");
        FqName fqName5 = eVar.R;
        Intrinsics.checkExpressionValueIsNotNull(fqName5, "BUILTIN_NAMES.map");
        Map<FqName, Name> mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(SpecialBuiltinMembers.b(fqNameUnsafe, "name"), Name.identifier("name")), TuplesKt.to(SpecialBuiltinMembers.b(fqNameUnsafe2, MediationMetaData.KEY_ORDINAL), Name.identifier(MediationMetaData.KEY_ORDINAL)), TuplesKt.to(SpecialBuiltinMembers.a(fqName, "size"), Name.identifier("size")), TuplesKt.to(SpecialBuiltinMembers.a(fqName2, "size"), Name.identifier("size")), TuplesKt.to(SpecialBuiltinMembers.b(fqNameUnsafe3, "length"), Name.identifier("length")), TuplesKt.to(SpecialBuiltinMembers.a(fqName3, "keys"), Name.identifier("keySet")), TuplesKt.to(SpecialBuiltinMembers.a(fqName4, "values"), Name.identifier("values")), TuplesKt.to(SpecialBuiltinMembers.a(fqName5, "entries"), Name.identifier("entrySet")));
        a = mapMapOf;
        Set<Map.Entry<FqName, Name>> setEntrySet = mapMapOf.entrySet();
        ArrayList<Pair> arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setEntrySet, 10));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            arrayList.add(new Pair(((FqName) entry.getKey()).g(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Pair pair : arrayList) {
            Name name = (Name) pair.g();
            Object arrayList2 = linkedHashMap.get(name);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(name, arrayList2);
            }
            ((List) arrayList2).add((Name) pair.f());
        }
        b = linkedHashMap;
        Set<FqName> setKeySet = a.keySet();
        c = setKeySet;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setKeySet, 10));
        Iterator<T> it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((FqName) it2.next()).g());
        }
        f9193d = CollectionsKt___CollectionsKt.toSet(arrayList3);
    }

    private a() {
    }

    private final boolean e(CallableMemberDescriptor callableMemberDescriptor) {
        if (CollectionsKt___CollectionsKt.contains(c, DescriptorUtilsKt.fqNameOrNull(callableMemberDescriptor)) && callableMemberDescriptor.g().isEmpty()) {
            return true;
        }
        if (!KotlinBuiltIns.isBuiltIn(callableMemberDescriptor)) {
            return false;
        }
        Collection<? extends CallableMemberDescriptor> overriddenDescriptors = callableMemberDescriptor.d();
        Intrinsics.checkExpressionValueIsNotNull(overriddenDescriptors, "overriddenDescriptors");
        if (!(overriddenDescriptors instanceof Collection) || !overriddenDescriptors.isEmpty()) {
            for (CallableMemberDescriptor it : overriddenDescriptors) {
                a aVar = f9194e;
                Intrinsics.checkExpressionValueIsNotNull(it, "it");
                if (aVar.d(it)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final String a(CallableMemberDescriptor getBuiltinSpecialPropertyGetterName) {
        Name name;
        Intrinsics.checkParameterIsNotNull(getBuiltinSpecialPropertyGetterName, "$this$getBuiltinSpecialPropertyGetterName");
        KotlinBuiltIns.isBuiltIn(getBuiltinSpecialPropertyGetterName);
        CallableMemberDescriptor callableMemberDescriptorFirstOverridden$default = DescriptorUtilsKt.firstOverridden$default(DescriptorUtilsKt.getPropertyIfAccessor(getBuiltinSpecialPropertyGetterName), false, C0523a.a, 1, null);
        if (callableMemberDescriptorFirstOverridden$default == null || (name = a.get(DescriptorUtilsKt.getFqNameSafe(callableMemberDescriptorFirstOverridden$default))) == null) {
            return null;
        }
        return name.e();
    }

    public final List<Name> b(Name name1) {
        Intrinsics.checkParameterIsNotNull(name1, "name1");
        List<Name> list = b.get(name1);
        return list != null ? list : CollectionsKt__CollectionsKt.emptyList();
    }

    public final Set<Name> c() {
        return f9193d;
    }

    public final boolean d(CallableMemberDescriptor callableMemberDescriptor) {
        Intrinsics.checkParameterIsNotNull(callableMemberDescriptor, "callableMemberDescriptor");
        if (f9193d.contains(callableMemberDescriptor.getName())) {
            return e(callableMemberDescriptor);
        }
        return false;
    }
}
