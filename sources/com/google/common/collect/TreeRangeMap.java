package com.google.common.collect;

import com.google.common.collect.Maps;
import java.lang.Comparable;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.NavigableMap;

/* JADX INFO: loaded from: classes3.dex */
public final class TreeRangeMap<K extends Comparable, V> implements k2<K, V> {
    private static final k2<Comparable<?>, Object> a = new a();
    private final NavigableMap<e0<K>, c<K, V>> b = Maps.newTreeMap();

    class a implements k2<Comparable<?>, Object> {
        a() {
        }

        @Override // com.google.common.collect.k2
        public Map<Range<Comparable<?>>, Object> c() {
            return Collections.emptyMap();
        }
    }

    private final class b extends Maps.x<Range<K>, V> {
        final Iterable<Map.Entry<Range<K>, V>> a;

        b(Iterable<c<K, V>> iterable) {
            this.a = iterable;
        }

        @Override // com.google.common.collect.Maps.x
        Iterator<Map.Entry<Range<K>, V>> a() {
            return this.a.iterator();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return get(obj) != null;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public V get(Object obj) {
            if (!(obj instanceof Range)) {
                return null;
            }
            Range range = (Range) obj;
            c cVar = (c) TreeRangeMap.this.b.get(range.b);
            if (cVar == null || !cVar.getKey().equals(range)) {
                return null;
            }
            return (V) cVar.getValue();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return TreeRangeMap.this.b.size();
        }
    }

    private static final class c<K extends Comparable, V> extends i<Range<K>, V> {
        private final Range<K> a;
        private final V b;

        @Override // com.google.common.collect.i, java.util.Map.Entry
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Range<K> getKey() {
            return this.a;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getValue() {
            return this.b;
        }
    }

    private TreeRangeMap() {
    }

    public static <K extends Comparable, V> TreeRangeMap<K, V> create() {
        return new TreeRangeMap<>();
    }

    @Override // com.google.common.collect.k2
    public Map<Range<K>, V> c() {
        return new b(this.b.values());
    }

    public boolean equals(Object obj) {
        if (obj instanceof k2) {
            return c().equals(((k2) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return c().hashCode();
    }

    public String toString() {
        return this.b.values().toString();
    }
}
