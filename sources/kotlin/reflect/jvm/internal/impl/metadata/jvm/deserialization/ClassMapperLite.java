package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.v;

/* JADX INFO: compiled from: ClassMapperLite.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class ClassMapperLite {
    private static final Map<String, String> a;
    public static final ClassMapperLite b = new ClassMapperLite();

    /* JADX INFO: compiled from: ClassMapperLite.kt */
    static final class a extends Lambda implements Function2<String, String, v> {
        final /* synthetic */ Map a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Map map) {
            super(2);
            this.a = map;
        }

        public final void a(String kotlinSimpleName, String javaInternalName) {
            Intrinsics.checkParameterIsNotNull(kotlinSimpleName, "kotlinSimpleName");
            Intrinsics.checkParameterIsNotNull(javaInternalName, "javaInternalName");
            this.a.put("kotlin/" + kotlinSimpleName, 'L' + javaInternalName + ';');
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ v invoke(String str, String str2) {
            a(str, str2);
            return v.a;
        }
    }

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        List listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Boolean", "Z", "Char", "C", "Byte", "B", "Short", "S", "Int", "I", "Float", "F", "Long", "J", "Double", "D"});
        IntProgression intProgressionStep = RangesKt___RangesKt.step(CollectionsKt__CollectionsKt.getIndices(listListOf), 2);
        int b2 = intProgressionStep.getB();
        int c = intProgressionStep.getC();
        int f8961d = intProgressionStep.getF8961d();
        if (f8961d < 0 ? b2 >= c : b2 <= c) {
            while (true) {
                int i = b2 + 1;
                linkedHashMap.put("kotlin/" + ((String) listListOf.get(b2)), listListOf.get(i));
                linkedHashMap.put("kotlin/" + ((String) listListOf.get(b2)) + "Array", '[' + ((String) listListOf.get(i)));
                if (b2 == c) {
                    break;
                } else {
                    b2 += f8961d;
                }
            }
        }
        linkedHashMap.put("kotlin/Unit", "V");
        a aVar = new a(linkedHashMap);
        aVar.a("Any", "java/lang/Object");
        aVar.a("Nothing", "java/lang/Void");
        aVar.a("Annotation", "java/lang/annotation/Annotation");
        for (String str : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"String", "CharSequence", "Throwable", "Cloneable", "Number", "Comparable", "Enum"})) {
            aVar.a(str, "java/lang/" + str);
        }
        for (String str2 : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Iterator", "Collection", "List", "Set", "Map", "ListIterator"})) {
            aVar.a("collections/" + str2, "java/util/" + str2);
            aVar.a("collections/Mutable" + str2, "java/util/" + str2);
        }
        aVar.a("collections/Iterable", "java/lang/Iterable");
        aVar.a("collections/MutableIterable", "java/lang/Iterable");
        aVar.a("collections/Map.Entry", "java/util/Map$Entry");
        aVar.a("collections/MutableMap.MutableEntry", "java/util/Map$Entry");
        for (int i2 = 0; i2 <= 22; i2++) {
            aVar.a("Function" + i2, "kotlin/jvm/functions/Function" + i2);
            aVar.a("reflect/KFunction" + i2, "kotlin/reflect/KFunction");
        }
        for (String str3 : CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"Char", "Byte", "Short", "Int", "Float", "Long", "Double", "String", "Enum"})) {
            aVar.a(str3 + ".Companion", "kotlin/jvm/internal/" + str3 + "CompanionObject");
        }
        a = linkedHashMap;
    }

    private ClassMapperLite() {
    }

    public static final String mapClass(String classId) {
        Intrinsics.checkParameterIsNotNull(classId, "classId");
        String str = a.get(classId);
        if (str != null) {
            return str;
        }
        return 'L' + StringsKt__StringsJVMKt.replace$default(classId, '.', '$', false, 4, (Object) null) + ';';
    }
}
