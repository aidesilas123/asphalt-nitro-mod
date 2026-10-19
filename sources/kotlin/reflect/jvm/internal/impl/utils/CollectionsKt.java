package kotlin.reflect.jvm.internal.impl.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.p;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: collections.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class CollectionsKt {
    private static final int a(int i) {
        if (i < 3) {
            return 3;
        }
        return i + (i / 3) + 1;
    }

    public static final <T> void addIfNotNull(Collection<T> addIfNotNull, T t) {
        Intrinsics.checkParameterIsNotNull(addIfNotNull, "$this$addIfNotNull");
        if (t != null) {
            addIfNotNull.add(t);
        }
    }

    public static final <T> List<T> compact(ArrayList<T> compact) {
        Intrinsics.checkParameterIsNotNull(compact, "$this$compact");
        int size = compact.size();
        if (size == 0) {
            return CollectionsKt__CollectionsKt.emptyList();
        }
        if (size == 1) {
            return CollectionsKt__CollectionsJVMKt.listOf(p.first((List) compact));
        }
        compact.trimToSize();
        return compact;
    }

    public static final <K> Map<K, Integer> mapToIndex(Iterable<? extends K> mapToIndex) {
        Intrinsics.checkParameterIsNotNull(mapToIndex, "$this$mapToIndex");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<? extends K> it = mapToIndex.iterator();
        int i = 0;
        while (it.hasNext()) {
            linkedHashMap.put(it.next(), Integer.valueOf(i));
            i++;
        }
        return linkedHashMap;
    }

    public static final <K, V> HashMap<K, V> newHashMapWithExpectedSize(int i) {
        return new HashMap<>(a(i));
    }

    public static final <E> HashSet<E> newHashSetWithExpectedSize(int i) {
        return new HashSet<>(a(i));
    }

    public static final <E> LinkedHashSet<E> newLinkedHashSetWithExpectedSize(int i) {
        return new LinkedHashSet<>(a(i));
    }
}
