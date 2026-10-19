package kotlin.reflect.jvm.internal.impl.load.java;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.builtins.KotlinBuiltIns;
import kotlin.reflect.jvm.internal.impl.name.FqName;

/* JADX INFO: compiled from: FakePureImplementationsProvider.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class g {
    private static final HashMap<FqName, FqName> a;
    public static final g b;

    static {
        g gVar = new g();
        b = gVar;
        a = new HashMap<>();
        KotlinBuiltIns.e eVar = KotlinBuiltIns.h;
        FqName fqName = eVar.W;
        Intrinsics.checkExpressionValueIsNotNull(fqName, "FQ_NAMES.mutableList");
        gVar.c(fqName, gVar.a("java.util.ArrayList", "java.util.LinkedList"));
        FqName fqName2 = eVar.Y;
        Intrinsics.checkExpressionValueIsNotNull(fqName2, "FQ_NAMES.mutableSet");
        gVar.c(fqName2, gVar.a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        FqName fqName3 = eVar.Z;
        Intrinsics.checkExpressionValueIsNotNull(fqName3, "FQ_NAMES.mutableMap");
        gVar.c(fqName3, gVar.a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        gVar.c(new FqName("java.util.function.Function"), gVar.a("java.util.function.UnaryOperator"));
        gVar.c(new FqName("java.util.function.BiFunction"), gVar.a("java.util.function.BinaryOperator"));
    }

    private g() {
    }

    private final List<FqName> a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(new FqName(str));
        }
        return arrayList;
    }

    private final void c(FqName fqName, List<FqName> list) {
        HashMap<FqName, FqName> map = a;
        for (Object obj : list) {
            map.put((FqName) obj, fqName);
        }
    }

    public final FqName b(FqName classFqName) {
        Intrinsics.checkParameterIsNotNull(classFqName, "classFqName");
        return a.get(classFqName);
    }
}
