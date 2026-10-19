package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.c0;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: compiled from: specialBuiltinMembers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BuiltinMethodsWithDifferentJvmName {
    private static final o a;
    private static final Map<o, Name> b;
    private static final Map<String, Name> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final List<Name> f9176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<Name, List<Name>> f9177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final BuiltinMethodsWithDifferentJvmName f9178f = new BuiltinMethodsWithDifferentJvmName();

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class a extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        final /* synthetic */ c0 a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(c0 c0Var) {
            super(1);
            this.a = c0Var;
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            Map mapAccess$getSIGNATURE_TO_JVM_REPRESENTATION_NAME$p = BuiltinMethodsWithDifferentJvmName.access$getSIGNATURE_TO_JVM_REPRESENTATION_NAME$p(BuiltinMethodsWithDifferentJvmName.f9178f);
            String strComputeJvmSignature = MethodSignatureMappingKt.computeJvmSignature(this.a);
            if (mapAccess$getSIGNATURE_TO_JVM_REPRESENTATION_NAME$p != null) {
                return mapAccess$getSIGNATURE_TO_JVM_REPRESENTATION_NAME$p.containsKey(strComputeJvmSignature);
            }
            throw new TypeCastException("null cannot be cast to non-null type kotlin.collections.Map<K, *>");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    static {
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.INT;
        String strE = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE, "JvmPrimitiveType.INT.desc");
        o oVarD = SpecialBuiltinMembers.d("java/util/List", "removeAt", strE, "Ljava/lang/Object;");
        a = oVarD;
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        String strG = signatureBuildingComponents.g("Number");
        String strE2 = JvmPrimitiveType.BYTE.e();
        Intrinsics.checkExpressionValueIsNotNull(strE2, "JvmPrimitiveType.BYTE.desc");
        String strG2 = signatureBuildingComponents.g("Number");
        String strE3 = JvmPrimitiveType.SHORT.e();
        Intrinsics.checkExpressionValueIsNotNull(strE3, "JvmPrimitiveType.SHORT.desc");
        String strG3 = signatureBuildingComponents.g("Number");
        String strE4 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE4, "JvmPrimitiveType.INT.desc");
        String strG4 = signatureBuildingComponents.g("Number");
        String strE5 = JvmPrimitiveType.LONG.e();
        Intrinsics.checkExpressionValueIsNotNull(strE5, "JvmPrimitiveType.LONG.desc");
        String strG5 = signatureBuildingComponents.g("Number");
        String strE6 = JvmPrimitiveType.FLOAT.e();
        Intrinsics.checkExpressionValueIsNotNull(strE6, "JvmPrimitiveType.FLOAT.desc");
        String strG6 = signatureBuildingComponents.g("Number");
        String strE7 = JvmPrimitiveType.DOUBLE.e();
        Intrinsics.checkExpressionValueIsNotNull(strE7, "JvmPrimitiveType.DOUBLE.desc");
        String strG7 = signatureBuildingComponents.g("CharSequence");
        String strE8 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE8, "JvmPrimitiveType.INT.desc");
        String strE9 = JvmPrimitiveType.CHAR.e();
        Intrinsics.checkExpressionValueIsNotNull(strE9, "JvmPrimitiveType.CHAR.desc");
        Map<o, Name> mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(SpecialBuiltinMembers.d(strG, "toByte", "", strE2), Name.identifier("byteValue")), TuplesKt.to(SpecialBuiltinMembers.d(strG2, "toShort", "", strE3), Name.identifier("shortValue")), TuplesKt.to(SpecialBuiltinMembers.d(strG3, "toInt", "", strE4), Name.identifier("intValue")), TuplesKt.to(SpecialBuiltinMembers.d(strG4, "toLong", "", strE5), Name.identifier("longValue")), TuplesKt.to(SpecialBuiltinMembers.d(strG5, "toFloat", "", strE6), Name.identifier("floatValue")), TuplesKt.to(SpecialBuiltinMembers.d(strG6, "toDouble", "", strE7), Name.identifier("doubleValue")), TuplesKt.to(oVarD, Name.identifier("remove")), TuplesKt.to(SpecialBuiltinMembers.d(strG7, "get", strE8, strE9), Name.identifier("charAt")));
        b = mapMapOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(mapMapOf.size()));
        Iterator<T> it = mapMapOf.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(((o) entry.getKey()).b(), entry.getValue());
        }
        c = linkedHashMap;
        Set<o> setKeySet = b.keySet();
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setKeySet, 10));
        Iterator<T> it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            arrayList.add(((o) it2.next()).a());
        }
        f9176d = arrayList;
        Set<Map.Entry<o, Name>> setEntrySet = b.entrySet();
        ArrayList<Pair> arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setEntrySet, 10));
        Iterator<T> it3 = setEntrySet.iterator();
        while (it3.hasNext()) {
            Map.Entry entry2 = (Map.Entry) it3.next();
            arrayList2.add(new Pair(((o) entry2.getKey()).a(), entry2.getValue()));
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Pair pair : arrayList2) {
            Name name = (Name) pair.g();
            Object arrayList3 = linkedHashMap2.get(name);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap2.put(name, arrayList3);
            }
            ((List) arrayList3).add((Name) pair.f());
        }
        f9177e = linkedHashMap2;
    }

    private BuiltinMethodsWithDifferentJvmName() {
    }

    public static final /* synthetic */ Map access$getSIGNATURE_TO_JVM_REPRESENTATION_NAME$p(BuiltinMethodsWithDifferentJvmName builtinMethodsWithDifferentJvmName) {
        return c;
    }

    public final List<Name> a(Name name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        List<Name> list = f9177e.get(name);
        return list != null ? list : CollectionsKt__CollectionsKt.emptyList();
    }

    public final Name b(c0 functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        Map<String, Name> map = c;
        String strComputeJvmSignature = MethodSignatureMappingKt.computeJvmSignature(functionDescriptor);
        if (strComputeJvmSignature != null) {
            return map.get(strComputeJvmSignature);
        }
        return null;
    }

    public final List<Name> c() {
        return f9176d;
    }

    public final boolean d(Name sameAsRenamedInJvmBuiltin) {
        Intrinsics.checkParameterIsNotNull(sameAsRenamedInJvmBuiltin, "$this$sameAsRenamedInJvmBuiltin");
        return f9176d.contains(sameAsRenamedInJvmBuiltin);
    }

    public final boolean e(c0 functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        return KotlinBuiltIns.isBuiltIn(functionDescriptor) && DescriptorUtilsKt.firstOverridden$default(functionDescriptor, false, new a(functionDescriptor), 1, null) != null;
    }

    public final boolean f(c0 isRemoveAtByIndex) {
        Intrinsics.checkParameterIsNotNull(isRemoveAtByIndex, "$this$isRemoveAtByIndex");
        return Intrinsics.areEqual(isRemoveAtByIndex.getName().e(), "removeAt") && Intrinsics.areEqual(MethodSignatureMappingKt.computeJvmSignature(isRemoveAtByIndex), a.b());
    }
}
