package com.bykv.vk.openvk.preload.a.b;

import com.json.o2;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: LinkedTreeMap.java */
/* JADX INFO: loaded from: classes.dex */
public final class h<K, V> extends AbstractMap<K, V> implements Serializable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final /* synthetic */ boolean f510f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Comparator<Comparable> f511g = new Comparator<Comparable>() { // from class: com.bykv.vk.openvk.preload.a.b.h.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    };
    Comparator<? super K> a;
    d<K, V> b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f512d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final d<K, V> f513e;
    private h<K, V>.a h;
    private h<K, V>.b i;

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    class a extends AbstractSet<Map.Entry<K, V>> {
        a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && h.this.a((Map.Entry<?, ?>) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new h<K, V>.c<Map.Entry<K, V>>() { // from class: com.bykv.vk.openvk.preload.a.b.h.a.1
                {
                    h hVar = h.this;
                }

                @Override // java.util.Iterator
                public final /* synthetic */ Object next() {
                    return a();
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            d<K, V> dVarA;
            if (!(obj instanceof Map.Entry) || (dVarA = h.this.a((Map.Entry<?, ?>) obj)) == null) {
                return false;
            }
            h.this.a((d) dVarA, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h.this.c;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    final class b extends AbstractSet<K> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return h.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new h<K, V>.c<K>() { // from class: com.bykv.vk.openvk.preload.a.b.h.b.1
                {
                    h hVar = h.this;
                }

                @Override // java.util.Iterator
                public final K next() {
                    return a().f518f;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            return h.this.a(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h.this.c;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    abstract class c<T> implements Iterator<T> {
        d<K, V> b;
        d<K, V> c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f514d;

        c() {
            this.b = h.this.f513e.f516d;
            this.f514d = h.this.f512d;
        }

        final d<K, V> a() {
            d<K, V> dVar = this.b;
            h hVar = h.this;
            if (dVar == hVar.f513e) {
                throw new NoSuchElementException();
            }
            if (hVar.f512d != this.f514d) {
                throw new ConcurrentModificationException();
            }
            this.b = dVar.f516d;
            this.c = dVar;
            return dVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b != h.this.f513e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            d<K, V> dVar = this.c;
            if (dVar == null) {
                throw new IllegalStateException();
            }
            h.this.a((d) dVar, true);
            this.c = null;
            this.f514d = h.this.f512d;
        }
    }

    /* JADX INFO: compiled from: LinkedTreeMap.java */
    static final class d<K, V> implements Map.Entry<K, V> {
        d<K, V> a;
        d<K, V> b;
        d<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d<K, V> f516d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        d<K, V> f517e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final K f518f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        V f519g;
        int h;

        d() {
            this.f518f = null;
            this.f517e = this;
            this.f516d = this;
        }

        d(d<K, V> dVar, K k, d<K, V> dVar2, d<K, V> dVar3) {
            this.a = dVar;
            this.f518f = k;
            this.h = 1;
            this.f516d = dVar2;
            this.f517e = dVar3;
            dVar3.f516d = this;
            dVar2.f517e = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.f518f;
                if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.f519g;
                    if (v == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f518f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f519g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.f518f;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.f519g;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            V v2 = this.f519g;
            this.f519g = v;
            return v2;
        }

        public final String toString() {
            return this.f518f + o2.i.b + this.f519g;
        }
    }

    public h() {
        this(f511g);
    }

    private h(Comparator<? super K> comparator) {
        this.c = 0;
        this.f512d = 0;
        this.f513e = new d<>();
        this.a = comparator == null ? f511g : comparator;
    }

    private d<K, V> a(K k, boolean z) {
        int iCompareTo;
        d<K, V> dVar;
        Comparator<? super K> comparator = this.a;
        d<K, V> dVar2 = this.b;
        if (dVar2 != null) {
            Comparable comparable = comparator == f511g ? (Comparable) k : null;
            while (true) {
                iCompareTo = comparable != null ? comparable.compareTo(dVar2.f518f) : comparator.compare(k, dVar2.f518f);
                if (iCompareTo != 0) {
                    d<K, V> dVar3 = iCompareTo < 0 ? dVar2.b : dVar2.c;
                    if (dVar3 == null) {
                        break;
                    }
                    dVar2 = dVar3;
                } else {
                    return dVar2;
                }
            }
        } else {
            iCompareTo = 0;
        }
        if (!z) {
            return null;
        }
        d<K, V> dVar4 = this.f513e;
        if (dVar2 != null) {
            dVar = new d<>(dVar2, k, dVar4, dVar4.f517e);
            if (iCompareTo < 0) {
                dVar2.b = dVar;
            } else {
                dVar2.c = dVar;
            }
            b(dVar2, true);
        } else {
            if (comparator == f511g && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            dVar = new d<>(dVar2, k, dVar4, dVar4.f517e);
            this.b = dVar;
        }
        this.c++;
        this.f512d++;
        return dVar;
    }

    private void a(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar3.b;
        d<K, V> dVar5 = dVar3.c;
        dVar.c = dVar4;
        if (dVar4 != null) {
            dVar4.a = dVar;
        }
        a(dVar, dVar3);
        dVar3.b = dVar;
        dVar.a = dVar3;
        int iMax = Math.max(dVar2 != null ? dVar2.h : 0, dVar4 != null ? dVar4.h : 0) + 1;
        dVar.h = iMax;
        dVar3.h = Math.max(iMax, dVar5 != null ? dVar5.h : 0) + 1;
    }

    private void a(d<K, V> dVar, d<K, V> dVar2) {
        d<K, V> dVar3 = dVar.a;
        dVar.a = null;
        if (dVar2 != null) {
            dVar2.a = dVar3;
        }
        if (dVar3 == null) {
            this.b = dVar2;
            return;
        }
        if (dVar3.b == dVar) {
            dVar3.b = dVar2;
        } else {
            if (!f510f && dVar3.c != dVar) {
                throw new AssertionError();
            }
            dVar3.c = dVar2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private d<K, V> b(Object obj) {
        if (obj != 0) {
            try {
                return a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return null;
    }

    private void b(d<K, V> dVar) {
        d<K, V> dVar2 = dVar.b;
        d<K, V> dVar3 = dVar.c;
        d<K, V> dVar4 = dVar2.b;
        d<K, V> dVar5 = dVar2.c;
        dVar.b = dVar5;
        if (dVar5 != null) {
            dVar5.a = dVar;
        }
        a(dVar, dVar2);
        dVar2.c = dVar;
        dVar.a = dVar2;
        int iMax = Math.max(dVar3 != null ? dVar3.h : 0, dVar5 != null ? dVar5.h : 0) + 1;
        dVar.h = iMax;
        dVar2.h = Math.max(iMax, dVar4 != null ? dVar4.h : 0) + 1;
    }

    private void b(d<K, V> dVar, boolean z) {
        while (dVar != null) {
            d<K, V> dVar2 = dVar.b;
            d<K, V> dVar3 = dVar.c;
            int i = dVar2 != null ? dVar2.h : 0;
            int i2 = dVar3 != null ? dVar3.h : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                d<K, V> dVar4 = dVar3.b;
                d<K, V> dVar5 = dVar3.c;
                int i4 = (dVar4 != null ? dVar4.h : 0) - (dVar5 != null ? dVar5.h : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    a((d) dVar);
                } else {
                    if (!f510f && i4 != 1) {
                        throw new AssertionError();
                    }
                    b((d) dVar3);
                    a((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                d<K, V> dVar6 = dVar2.b;
                d<K, V> dVar7 = dVar2.c;
                int i5 = (dVar6 != null ? dVar6.h : 0) - (dVar7 != null ? dVar7.h : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    b((d) dVar);
                } else {
                    if (!f510f && i5 != -1) {
                        throw new AssertionError();
                    }
                    a((d) dVar2);
                    b((d) dVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                dVar.h = i + 1;
                if (z) {
                    return;
                }
            } else {
                if (!f510f && i3 != -1 && i3 != 1) {
                    throw new AssertionError();
                }
                dVar.h = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            dVar = dVar.a;
        }
    }

    final d<K, V> a(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            a((d) dVarB, true);
        }
        return dVarB;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final com.bykv.vk.openvk.preload.a.b.h.d<K, V> a(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            com.bykv.vk.openvk.preload.a.b.h$d r0 = r4.b(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L23
            V r3 = r0.f519g
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L1f
            if (r3 == 0) goto L1d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L1d
            goto L1f
        L1d:
            r5 = 0
            goto L20
        L1f:
            r5 = 1
        L20:
            if (r5 == 0) goto L23
            goto L24
        L23:
            r1 = 0
        L24:
            if (r1 == 0) goto L27
            return r0
        L27:
            r5 = 0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bykv.vk.openvk.preload.a.b.h.a(java.util.Map$Entry):com.bykv.vk.openvk.preload.a.b.h$d");
    }

    final void a(d<K, V> dVar, boolean z) {
        int i;
        if (z) {
            d<K, V> dVar2 = dVar.f517e;
            dVar2.f516d = dVar.f516d;
            dVar.f516d.f517e = dVar2;
        }
        d<K, V> dVar3 = dVar.b;
        d<K, V> dVar4 = dVar.c;
        d<K, V> dVar5 = dVar.a;
        int i2 = 0;
        if (dVar3 == null || dVar4 == null) {
            if (dVar3 != null) {
                a(dVar, dVar3);
                dVar.b = null;
            } else if (dVar4 != null) {
                a(dVar, dVar4);
                dVar.c = null;
            } else {
                a(dVar, (d) null);
            }
            b(dVar5, false);
            this.c--;
            this.f512d++;
            return;
        }
        if (dVar3.h > dVar4.h) {
            d<K, V> dVar6 = dVar3.c;
            while (true) {
                d<K, V> dVar7 = dVar6;
                dVar4 = dVar3;
                dVar3 = dVar7;
                if (dVar3 == null) {
                    break;
                } else {
                    dVar6 = dVar3.c;
                }
            }
        } else {
            while (true) {
                d<K, V> dVar8 = dVar4.b;
                if (dVar8 == null) {
                    break;
                } else {
                    dVar4 = dVar8;
                }
            }
        }
        a((d) dVar4, false);
        d<K, V> dVar9 = dVar.b;
        if (dVar9 != null) {
            i = dVar9.h;
            dVar4.b = dVar9;
            dVar9.a = dVar4;
            dVar.b = null;
        } else {
            i = 0;
        }
        d<K, V> dVar10 = dVar.c;
        if (dVar10 != null) {
            i2 = dVar10.h;
            dVar4.c = dVar10;
            dVar10.a = dVar4;
            dVar.c = null;
        }
        dVar4.h = Math.max(i, i2) + 1;
        a(dVar, dVar4);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.b = null;
        this.c = 0;
        this.f512d++;
        d<K, V> dVar = this.f513e;
        dVar.f517e = dVar;
        dVar.f516d = dVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        return b(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        h<K, V>.a aVar = this.h;
        if (aVar != null) {
            return aVar;
        }
        h<K, V>.a aVar2 = new a();
        this.h = aVar2;
        return aVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        d<K, V> dVarB = b(obj);
        if (dVarB != null) {
            return dVarB.f519g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        h<K, V>.b bVar = this.i;
        if (bVar != null) {
            return bVar;
        }
        h<K, V>.b bVar2 = new b();
        this.i = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        d<K, V> dVarA = a((Object) k, true);
        V v2 = dVarA.f519g;
        dVarA.f519g = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        d<K, V> dVarA = a(obj);
        if (dVarA != null) {
            return dVarA.f519g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.c;
    }
}
