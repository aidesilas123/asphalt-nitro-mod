package kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;

/* JADX INFO: compiled from: JvmNameResolver.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class e implements kotlin.reflect.jvm.internal.impl.metadata.deserialization.b {
    private static final List<String> a;
    private static final Map<String, Integer> b;
    public static final a c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<Integer> f9670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<JvmProtoBuf.StringTableTypes.Record> f9671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final JvmProtoBuf.StringTableTypes f9672f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final String[] f9673g;

    /* JADX INFO: compiled from: JvmNameResolver.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(n nVar) {
            this();
        }
    }

    static {
        List<String> listListOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{"kotlin/Any", "kotlin/Nothing", "kotlin/Unit", "kotlin/Throwable", "kotlin/Number", "kotlin/Byte", "kotlin/Double", "kotlin/Float", "kotlin/Int", "kotlin/Long", "kotlin/Short", "kotlin/Boolean", "kotlin/Char", "kotlin/CharSequence", "kotlin/String", "kotlin/Comparable", "kotlin/Enum", "kotlin/Array", "kotlin/ByteArray", "kotlin/DoubleArray", "kotlin/FloatArray", "kotlin/IntArray", "kotlin/LongArray", "kotlin/ShortArray", "kotlin/BooleanArray", "kotlin/CharArray", "kotlin/Cloneable", "kotlin/Annotation", "kotlin/collections/Iterable", "kotlin/collections/MutableIterable", "kotlin/collections/Collection", "kotlin/collections/MutableCollection", "kotlin/collections/List", "kotlin/collections/MutableList", "kotlin/collections/Set", "kotlin/collections/MutableSet", "kotlin/collections/Map", "kotlin/collections/MutableMap", "kotlin/collections/Map.Entry", "kotlin/collections/MutableMap.MutableEntry", "kotlin/collections/Iterator", "kotlin/collections/MutableIterator", "kotlin/collections/ListIterator", "kotlin/collections/MutableListIterator"});
        a = listListOf;
        Iterable<IndexedValue> iterableWithIndex = CollectionsKt___CollectionsKt.withIndex(listListOf);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt___RangesKt.coerceAtLeast(MapsKt__MapsJVMKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(iterableWithIndex, 10)), 16));
        for (IndexedValue indexedValue : iterableWithIndex) {
            linkedHashMap.put((String) indexedValue.e(), Integer.valueOf(indexedValue.d()));
        }
        b = linkedHashMap;
    }

    public e(JvmProtoBuf.StringTableTypes types, String[] strings) {
        Intrinsics.checkParameterIsNotNull(types, "types");
        Intrinsics.checkParameterIsNotNull(strings, "strings");
        this.f9672f = types;
        this.f9673g = strings;
        List<Integer> listR = types.r();
        this.f9670d = listR.isEmpty() ? SetsKt__SetsKt.emptySet() : CollectionsKt___CollectionsKt.toSet(listR);
        ArrayList arrayList = new ArrayList();
        List<JvmProtoBuf.StringTableTypes.Record> listS = types.s();
        arrayList.ensureCapacity(listS.size());
        for (JvmProtoBuf.StringTableTypes.Record record : listS) {
            Intrinsics.checkExpressionValueIsNotNull(record, "record");
            int iZ = record.z();
            for (int i = 0; i < iZ; i++) {
                arrayList.add(record);
            }
        }
        arrayList.trimToSize();
        this.f9671e = arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.b
    public boolean a(int i) {
        return this.f9670d.contains(Integer.valueOf(i));
    }

    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.b
    public String b(int i) {
        return getString(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    @Override // kotlin.reflect.jvm.internal.impl.metadata.deserialization.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getString(int r18) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.metadata.jvm.deserialization.e.getString(int):java.lang.String");
    }
}
