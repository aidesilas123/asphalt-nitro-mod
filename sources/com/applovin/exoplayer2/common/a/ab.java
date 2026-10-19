package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.aq;
import com.applovin.exoplayer2.common.base.Function;
import com.applovin.exoplayer2.common.base.Objects;
import com.applovin.exoplayer2.common.base.Preconditions;
import com.json.b4;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class ab {

    private enum a implements Function<Map.Entry<?, ?>, Object> {
        KEY { // from class: com.applovin.exoplayer2.common.a.ab.a.1
            @Override // com.applovin.exoplayer2.common.base.Function
            @NullableDecl
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getKey();
            }
        },
        VALUE { // from class: com.applovin.exoplayer2.common.a.ab.a.2
            @Override // com.applovin.exoplayer2.common.base.Function
            @NullableDecl
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public Object apply(Map.Entry<?, ?> entry) {
                return entry.getValue();
            }
        }
    }

    static abstract class b<K, V> extends aq.a<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            fo().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object objA = ab.a(fo(), key);
            if (Objects.equal(objA, entry.getValue())) {
                return objA != null || fo().containsKey(key);
            }
            return false;
        }

        abstract Map<K, V> fo();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return fo().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (contains(obj)) {
                return fo().keySet().remove(((Map.Entry) obj).getKey());
            }
            return false;
        }

        @Override // com.applovin.exoplayer2.common.a.aq.a, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                return aq.a((Set<?>) this, collection.iterator());
            }
        }

        @Override // com.applovin.exoplayer2.common.a.aq.a, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetBp = aq.bp(collection.size());
                for (Object obj : collection) {
                    if (contains(obj)) {
                        hashSetBp.add(((Map.Entry) obj).getKey());
                    }
                }
                return fo().keySet().retainAll(hashSetBp);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return fo().size();
        }
    }

    static class c<K, V> extends aq.a<K> {
        final Map<K, V> pf;

        c(Map<K, V> map) {
            this.pf = (Map) Preconditions.checkNotNull(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            fo().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return fo().containsKey(obj);
        }

        Map<K, V> fo() {
            return this.pf;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return fo().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return ab.g(fo().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!contains(obj)) {
                return false;
            }
            fo().remove(obj);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return fo().size();
        }
    }

    static class d<K, V> extends AbstractCollection<V> {
        final Map<K, V> pf;

        d(Map<K, V> map) {
            this.pf = (Map) Preconditions.checkNotNull(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            fo().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            return fo().containsValue(obj);
        }

        final Map<K, V> fo() {
            return this.pf;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return fo().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return ab.h(fo().entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            try {
                return super.remove(obj);
            } catch (UnsupportedOperationException unused) {
                for (Map.Entry<K, V> entry : fo().entrySet()) {
                    if (Objects.equal(obj, entry.getValue())) {
                        fo().remove(entry.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            try {
                return super.removeAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetGS = aq.gS();
                for (Map.Entry<K, V> entry : fo().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetGS.add(entry.getKey());
                    }
                }
                return fo().keySet().removeAll(hashSetGS);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            try {
                return super.retainAll((Collection) Preconditions.checkNotNull(collection));
            } catch (UnsupportedOperationException unused) {
                HashSet hashSetGS = aq.gS();
                for (Map.Entry<K, V> entry : fo().entrySet()) {
                    if (collection.contains(entry.getValue())) {
                        hashSetGS.add(entry.getKey());
                    }
                }
                return fo().keySet().retainAll(hashSetGS);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return fo().size();
        }
    }

    static abstract class e<K, V> extends AbstractMap<K, V> {

        @MonotonicNonNullDecl
        private transient Set<K> pA;

        @MonotonicNonNullDecl
        private transient Collection<V> pB;

        @MonotonicNonNullDecl
        private transient Set<Map.Entry<K, V>> qG;

        e() {
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            Set<Map.Entry<K, V>> set = this.qG;
            if (set != null) {
                return set;
            }
            Set<Map.Entry<K, V>> setFn = fn();
            this.qG = setFn;
            return setFn;
        }

        /* JADX INFO: renamed from: fe */
        Set<K> ft() {
            return new c(this);
        }

        Collection<V> fg() {
            return new d(this);
        }

        abstract Set<Map.Entry<K, V>> fn();

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            Set<K> set = this.pA;
            if (set != null) {
                return set;
            }
            Set<K> setFe = ft();
            this.pA = setFe;
            return setFe;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Collection<V> values() {
            Collection<V> collection = this.pB;
            if (collection != null) {
                return collection;
            }
            Collection<V> collectionFg = fg();
            this.pB = collectionFg;
            return collectionFg;
        }
    }

    static <V> V a(Map<?, V> map, @NullableDecl Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.get(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static String b(Map<?, ?> map) {
        StringBuilder sbAS = k.aS(map.size());
        sbAS.append('{');
        boolean z = true;
        for (Map.Entry<?, ?> entry : map.entrySet()) {
            if (!z) {
                sbAS.append(", ");
            }
            z = false;
            sbAS.append(entry.getKey());
            sbAS.append(b4.R);
            sbAS.append(entry.getValue());
        }
        sbAS.append('}');
        return sbAS.toString();
    }

    static boolean b(Map<?, ?> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    static int bl(int i) {
        if (i < 3) {
            j.a(i, "expectedSize");
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    static <V> V c(Map<?, V> map, Object obj) {
        Preconditions.checkNotNull(map);
        try {
            return map.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return null;
        }
    }

    static boolean d(Map<?, ?> map, Object obj) {
        if (map == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return map.entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    static <K, V> Iterator<K> g(Iterator<Map.Entry<K, V>> it) {
        return new aw<Map.Entry<K, V>, K>(it) { // from class: com.applovin.exoplayer2.common.a.ab.1
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.applovin.exoplayer2.common.a.aw
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public K A(Map.Entry<K, V> entry) {
                return entry.getKey();
            }
        };
    }

    static <K> Function<Map.Entry<K, ?>, K> gF() {
        return a.KEY;
    }

    static <V> Function<Map.Entry<?, V>, V> gG() {
        return a.VALUE;
    }

    public static <K, V> IdentityHashMap<K, V> gH() {
        return new IdentityHashMap<>();
    }

    static <K, V> Iterator<V> h(Iterator<Map.Entry<K, V>> it) {
        return new aw<Map.Entry<K, V>, V>(it) { // from class: com.applovin.exoplayer2.common.a.ab.2
            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.applovin.exoplayer2.common.a.aw
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public V A(Map.Entry<K, V> entry) {
                return entry.getValue();
            }
        };
    }

    public static <K, V> Map.Entry<K, V> n(@NullableDecl K k, @NullableDecl V v) {
        return new r(k, v);
    }
}
