package kotlin.reflect.jvm.internal.impl.load.kotlin;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: methodSignatureBuilding.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class SignatureBuildingComponents {
    public static final SignatureBuildingComponents a = new SignatureBuildingComponents();

    /* JADX INFO: compiled from: methodSignatureBuilding.kt */
    static final class a extends Lambda implements Function1<String, String> {
        public static final a a = new a();

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke(String it) {
            Intrinsics.checkParameterIsNotNull(it, "it");
            return SignatureBuildingComponents.a.b(it);
        }
    }

    private SignatureBuildingComponents() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String b(String str) {
        if (str.length() <= 1) {
            return str;
        }
        return 'L' + str + ';';
    }

    public final String[] a(String... signatures) {
        Intrinsics.checkParameterIsNotNull(signatures, "signatures");
        ArrayList arrayList = new ArrayList(signatures.length);
        for (String str : signatures) {
            arrayList.add("<init>(" + str + ")V");
        }
        Object[] array = arrayList.toArray(new String[0]);
        if (array != null) {
            return (String[]) array;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public final LinkedHashSet<String> c(String internalName, String... signatures) {
        Intrinsics.checkParameterIsNotNull(internalName, "internalName");
        Intrinsics.checkParameterIsNotNull(signatures, "signatures");
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        for (String str : signatures) {
            linkedHashSet.add(internalName + '.' + str);
        }
        return linkedHashSet;
    }

    public final LinkedHashSet<String> d(String name, String... signatures) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signatures, "signatures");
        return c(g(name), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    public final LinkedHashSet<String> e(String name, String... signatures) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(signatures, "signatures");
        return c(h(name), (String[]) Arrays.copyOf(signatures, signatures.length));
    }

    public final String f(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return "java/util/function/" + name;
    }

    public final String g(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return "java/lang/" + name;
    }

    public final String h(String name) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        return "java/util/" + name;
    }

    public final String i(String name, List<String> parameters, String ret) {
        Intrinsics.checkParameterIsNotNull(name, "name");
        Intrinsics.checkParameterIsNotNull(parameters, "parameters");
        Intrinsics.checkParameterIsNotNull(ret, "ret");
        return name + '(' + CollectionsKt___CollectionsKt.joinToString$default(parameters, "", null, null, 0, null, a.a, 30, null) + ')' + b(ret);
    }

    public final String j(String internalName, String jvmDescriptor) {
        Intrinsics.checkParameterIsNotNull(internalName, "internalName");
        Intrinsics.checkParameterIsNotNull(jvmDescriptor, "jvmDescriptor");
        return internalName + '.' + jvmDescriptor;
    }

    public final String k(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, String jvmDescriptor) {
        Intrinsics.checkParameterIsNotNull(classDescriptor, "classDescriptor");
        Intrinsics.checkParameterIsNotNull(jvmDescriptor, "jvmDescriptor");
        return j(MethodSignatureMappingKt.getInternalName(classDescriptor), jvmDescriptor);
    }
}
