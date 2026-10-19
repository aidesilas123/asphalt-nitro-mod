package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.collections.d0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.load.kotlin.MethodSignatureMappingKt;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: compiled from: specialBuiltinMembers.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class BuiltinMethodsWithSpecialGenericSignature {
    private static final List<o> a;
    private static final List<String> b;
    private static final List<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Map<o, TypeSafeBarrierDescription> f9179d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Map<String, TypeSafeBarrierDescription> f9180e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<Name> f9181f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Set<String> f9182g;
    public static final BuiltinMethodsWithSpecialGenericSignature h = new BuiltinMethodsWithSpecialGenericSignature();

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    public enum SpecialSignatureInfo {
        ONE_COLLECTION_PARAMETER("Ljava/util/Collection<+Ljava/lang/Object;>;", false),
        OBJECT_PARAMETER_NON_GENERIC(null, true),
        OBJECT_PARAMETER_GENERIC("Ljava/lang/Object;", true);


        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final String f9184e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final boolean f9185f;

        SpecialSignatureInfo(String str, boolean z) {
            this.f9184e = str;
            this.f9185f = z;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    public static final class TypeSafeBarrierDescription {
        public static final TypeSafeBarrierDescription a;
        public static final TypeSafeBarrierDescription b;
        public static final TypeSafeBarrierDescription c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final TypeSafeBarrierDescription f9186d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final /* synthetic */ TypeSafeBarrierDescription[] f9187e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Object f9188f;

        /* JADX INFO: compiled from: specialBuiltinMembers.kt */
        static final class a extends TypeSafeBarrierDescription {
            /* JADX WARN: Illegal instructions before constructor call */
            a(String str, int i) {
                kotlin.jvm.internal.n nVar = null;
                super(str, i, nVar, nVar);
            }
        }

        static {
            TypeSafeBarrierDescription typeSafeBarrierDescription = new TypeSafeBarrierDescription("NULL", 0, null);
            a = typeSafeBarrierDescription;
            TypeSafeBarrierDescription typeSafeBarrierDescription2 = new TypeSafeBarrierDescription("INDEX", 1, -1);
            b = typeSafeBarrierDescription2;
            TypeSafeBarrierDescription typeSafeBarrierDescription3 = new TypeSafeBarrierDescription("FALSE", 2, Boolean.FALSE);
            c = typeSafeBarrierDescription3;
            a aVar = new a("MAP_GET_OR_DEFAULT", 3);
            f9186d = aVar;
            f9187e = new TypeSafeBarrierDescription[]{typeSafeBarrierDescription, typeSafeBarrierDescription2, typeSafeBarrierDescription3, aVar};
        }

        private TypeSafeBarrierDescription(String str, int i, Object obj) {
            this.f9188f = obj;
        }

        public /* synthetic */ TypeSafeBarrierDescription(String str, int i, Object obj, kotlin.jvm.internal.n nVar) {
            this(str, i, obj);
        }

        public static TypeSafeBarrierDescription valueOf(String str) {
            return (TypeSafeBarrierDescription) Enum.valueOf(TypeSafeBarrierDescription.class, str);
        }

        public static TypeSafeBarrierDescription[] values() {
            return (TypeSafeBarrierDescription[]) f9187e.clone();
        }
    }

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class a extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        public static final a a = new a();

        a() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return BuiltinMethodsWithSpecialGenericSignature.h.a(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    /* JADX INFO: compiled from: specialBuiltinMembers.kt */
    static final class b extends Lambda implements Function1<CallableMemberDescriptor, Boolean> {
        public static final b a = new b();

        b() {
            super(1);
        }

        public final boolean a(CallableMemberDescriptor it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return (it instanceof kotlin.reflect.jvm.internal.impl.descriptors.o) && BuiltinMethodsWithSpecialGenericSignature.h.a(it);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
            return Boolean.valueOf(a(callableMemberDescriptor));
        }
    }

    static {
        Set<String> of = SetsKt__SetsKt.setOf((Object[]) new String[]{"containsAll", "removeAll", "retainAll"});
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(of, 10));
        for (String str : of) {
            String strE = JvmPrimitiveType.BOOLEAN.e();
            Intrinsics.checkExpressionValueIsNotNull(strE, "JvmPrimitiveType.BOOLEAN.desc");
            arrayList.add(SpecialBuiltinMembers.d("java/util/Collection", str, "Ljava/util/Collection;", strE));
        }
        a = arrayList;
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((o) it.next()).b());
        }
        b = arrayList2;
        List<o> list = a;
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((o) it2.next()).a().e());
        }
        c = arrayList3;
        SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.a;
        String strH = signatureBuildingComponents.h("Collection");
        JvmPrimitiveType jvmPrimitiveType = JvmPrimitiveType.BOOLEAN;
        String strE2 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE2, "JvmPrimitiveType.BOOLEAN.desc");
        o oVarD = SpecialBuiltinMembers.d(strH, "contains", "Ljava/lang/Object;", strE2);
        TypeSafeBarrierDescription typeSafeBarrierDescription = TypeSafeBarrierDescription.c;
        String strH2 = signatureBuildingComponents.h("Collection");
        String strE3 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE3, "JvmPrimitiveType.BOOLEAN.desc");
        String strH3 = signatureBuildingComponents.h("Map");
        String strE4 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE4, "JvmPrimitiveType.BOOLEAN.desc");
        String strH4 = signatureBuildingComponents.h("Map");
        String strE5 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE5, "JvmPrimitiveType.BOOLEAN.desc");
        String strH5 = signatureBuildingComponents.h("Map");
        String strE6 = jvmPrimitiveType.e();
        Intrinsics.checkExpressionValueIsNotNull(strE6, "JvmPrimitiveType.BOOLEAN.desc");
        o oVarD2 = SpecialBuiltinMembers.d(signatureBuildingComponents.h("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        TypeSafeBarrierDescription typeSafeBarrierDescription2 = TypeSafeBarrierDescription.a;
        String strH6 = signatureBuildingComponents.h("List");
        JvmPrimitiveType jvmPrimitiveType2 = JvmPrimitiveType.INT;
        String strE7 = jvmPrimitiveType2.e();
        Intrinsics.checkExpressionValueIsNotNull(strE7, "JvmPrimitiveType.INT.desc");
        o oVarD3 = SpecialBuiltinMembers.d(strH6, "indexOf", "Ljava/lang/Object;", strE7);
        TypeSafeBarrierDescription typeSafeBarrierDescription3 = TypeSafeBarrierDescription.b;
        String strH7 = signatureBuildingComponents.h("List");
        String strE8 = jvmPrimitiveType2.e();
        Intrinsics.checkExpressionValueIsNotNull(strE8, "JvmPrimitiveType.INT.desc");
        Map<o, TypeSafeBarrierDescription> mapMapOf = MapsKt__MapsKt.mapOf(TuplesKt.to(oVarD, typeSafeBarrierDescription), TuplesKt.to(SpecialBuiltinMembers.d(strH2, "remove", "Ljava/lang/Object;", strE3), typeSafeBarrierDescription), TuplesKt.to(SpecialBuiltinMembers.d(strH3, "containsKey", "Ljava/lang/Object;", strE4), typeSafeBarrierDescription), TuplesKt.to(SpecialBuiltinMembers.d(strH4, "containsValue", "Ljava/lang/Object;", strE5), typeSafeBarrierDescription), TuplesKt.to(SpecialBuiltinMembers.d(strH5, "remove", "Ljava/lang/Object;Ljava/lang/Object;", strE6), typeSafeBarrierDescription), TuplesKt.to(SpecialBuiltinMembers.d(signatureBuildingComponents.h("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), TypeSafeBarrierDescription.f9186d), TuplesKt.to(oVarD2, typeSafeBarrierDescription2), TuplesKt.to(SpecialBuiltinMembers.d(signatureBuildingComponents.h("Map"), "remove", "Ljava/lang/Object;", "Ljava/lang/Object;"), typeSafeBarrierDescription2), TuplesKt.to(oVarD3, typeSafeBarrierDescription3), TuplesKt.to(SpecialBuiltinMembers.d(strH7, "lastIndexOf", "Ljava/lang/Object;", strE8), typeSafeBarrierDescription3));
        f9179d = mapMapOf;
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt__MapsJVMKt.mapCapacity(mapMapOf.size()));
        Iterator<T> it3 = mapMapOf.entrySet().iterator();
        while (it3.hasNext()) {
            Map.Entry entry = (Map.Entry) it3.next();
            linkedHashMap.put(((o) entry.getKey()).b(), entry.getValue());
        }
        f9180e = linkedHashMap;
        Set setPlus = SetsKt___SetsKt.plus((Set) f9179d.keySet(), (Iterable) a);
        ArrayList arrayList4 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setPlus, 10));
        Iterator it4 = setPlus.iterator();
        while (it4.hasNext()) {
            arrayList4.add(((o) it4.next()).a());
        }
        f9181f = CollectionsKt___CollectionsKt.toSet(arrayList4);
        ArrayList arrayList5 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(setPlus, 10));
        Iterator it5 = setPlus.iterator();
        while (it5.hasNext()) {
            arrayList5.add(((o) it5.next()).b());
        }
        f9182g = CollectionsKt___CollectionsKt.toSet(arrayList5);
    }

    private BuiltinMethodsWithSpecialGenericSignature() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean a(CallableMemberDescriptor callableMemberDescriptor) {
        return CollectionsKt___CollectionsKt.contains(f9182g, MethodSignatureMappingKt.computeJvmSignature(callableMemberDescriptor));
    }

    public static final kotlin.reflect.jvm.internal.impl.descriptors.o getOverriddenBuiltinFunctionWithErasedValueParametersInJava(kotlin.reflect.jvm.internal.impl.descriptors.o functionDescriptor) {
        Intrinsics.checkParameterIsNotNull(functionDescriptor, "functionDescriptor");
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = h;
        Name name = functionDescriptor.getName();
        Intrinsics.checkExpressionValueIsNotNull(name, "functionDescriptor.name");
        if (builtinMethodsWithSpecialGenericSignature.b(name)) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.o) DescriptorUtilsKt.firstOverridden$default(functionDescriptor, false, a.a, 1, null);
        }
        return null;
    }

    public static final SpecialSignatureInfo getSpecialSignatureInfo(CallableMemberDescriptor getSpecialSignatureInfo) {
        CallableMemberDescriptor callableMemberDescriptorFirstOverridden$default;
        String strComputeJvmSignature;
        Intrinsics.checkParameterIsNotNull(getSpecialSignatureInfo, "$this$getSpecialSignatureInfo");
        if (!f9181f.contains(getSpecialSignatureInfo.getName()) || (callableMemberDescriptorFirstOverridden$default = DescriptorUtilsKt.firstOverridden$default(getSpecialSignatureInfo, false, b.a, 1, null)) == null || (strComputeJvmSignature = MethodSignatureMappingKt.computeJvmSignature(callableMemberDescriptorFirstOverridden$default)) == null) {
            return null;
        }
        return b.contains(strComputeJvmSignature) ? SpecialSignatureInfo.ONE_COLLECTION_PARAMETER : ((TypeSafeBarrierDescription) d0.getValue(f9180e, strComputeJvmSignature)) == TypeSafeBarrierDescription.a ? SpecialSignatureInfo.OBJECT_PARAMETER_GENERIC : SpecialSignatureInfo.OBJECT_PARAMETER_NON_GENERIC;
    }

    public final boolean b(Name sameAsBuiltinMethodWithErasedValueParameters) {
        Intrinsics.checkParameterIsNotNull(sameAsBuiltinMethodWithErasedValueParameters, "$this$sameAsBuiltinMethodWithErasedValueParameters");
        return f9181f.contains(sameAsBuiltinMethodWithErasedValueParameters);
    }
}
