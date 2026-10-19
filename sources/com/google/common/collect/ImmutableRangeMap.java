package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.io.Serializable;
import java.lang.Comparable;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ImmutableRangeMap<K extends Comparable<?>, V> implements k2<K, V>, Serializable {
    private static final ImmutableRangeMap<Comparable<?>, Object> a = new ImmutableRangeMap<>(ImmutableList.of(), ImmutableList.of());
    private static final long serialVersionUID = 0;
    private final transient ImmutableList<Range<K>> b;
    private final transient ImmutableList<V> c;

    public static final class a<K extends Comparable<?>, V> {
        private final List<Map.Entry<Range<K>, V>> a = Lists.newArrayList();

        public ImmutableRangeMap<K, V> a() {
            Collections.sort(this.a, Range.p().d());
            ImmutableList.a aVar = new ImmutableList.a(this.a.size());
            ImmutableList.a aVar2 = new ImmutableList.a(this.a.size());
            for (int i = 0; i < this.a.size(); i++) {
                Range<K> key = this.a.get(i).getKey();
                if (i > 0) {
                    Range<K> key2 = this.a.get(i - 1).getKey();
                    if (key.i(key2) && !key.h(key2).j()) {
                        String strValueOf = String.valueOf(key2);
                        String strValueOf2 = String.valueOf(key);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 47 + strValueOf2.length());
                        sb.append("Overlapping ranges: range ");
                        sb.append(strValueOf);
                        sb.append(" overlaps with entry ");
                        sb.append(strValueOf2);
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
                aVar.a(key);
                aVar2.a(this.a.get(i).getValue());
            }
            return new ImmutableRangeMap<>(aVar.k(), aVar2.k());
        }

        public a<K, V> b(Range<K> range, V v) {
            Preconditions.checkNotNull(range);
            Preconditions.checkNotNull(v);
            Preconditions.checkArgument(!range.j(), "Range must not be empty, but was %s", range);
            this.a.add(Maps.immutableEntry(range, v));
            return this;
        }
    }

    private static class b<K extends Comparable<?>, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final ImmutableMap<Range<K>, V> a;

        b(ImmutableMap<Range<K>, V> immutableMap) {
            this.a = immutableMap;
        }

        Object c() {
            a aVar = new a();
            o3<Map.Entry<Range<K>, V>> it = this.a.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Range<K>, V> next = it.next();
                aVar.b(next.getKey(), next.getValue());
            }
            return aVar.a();
        }

        Object readResolve() {
            return this.a.isEmpty() ? ImmutableRangeMap.of() : c();
        }
    }

    ImmutableRangeMap(ImmutableList<Range<K>> immutableList, ImmutableList<V> immutableList2) {
        this.b = immutableList;
        this.c = immutableList2;
    }

    public static <K extends Comparable<?>, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> copyOf(k2<K, ? extends V> k2Var) {
        if (k2Var instanceof ImmutableRangeMap) {
            return (ImmutableRangeMap) k2Var;
        }
        Map<Range<K>, ? extends V> mapC = k2Var.c();
        ImmutableList.a aVar = new ImmutableList.a(mapC.size());
        ImmutableList.a aVar2 = new ImmutableList.a(mapC.size());
        for (Map.Entry entry : mapC.entrySet()) {
            aVar.a((Range) entry.getKey());
            aVar2.a(entry.getValue());
        }
        return new ImmutableRangeMap<>(aVar.k(), aVar2.k());
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of() {
        return (ImmutableRangeMap<K, V>) a;
    }

    public static <K extends Comparable<?>, V> ImmutableRangeMap<K, V> of(Range<K> range, V v) {
        return new ImmutableRangeMap<>(ImmutableList.of(range), ImmutableList.of(v));
    }

    @Override // com.google.common.collect.k2
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public ImmutableMap<Range<K>, V> c() {
        return this.b.isEmpty() ? ImmutableMap.of() : new ImmutableSortedMap(new t2(this.b, Range.p()), this.c);
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
        return c().toString();
    }

    Object writeReplace() {
        return new b(c());
    }
}
