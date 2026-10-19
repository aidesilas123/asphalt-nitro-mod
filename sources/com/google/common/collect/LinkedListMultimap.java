package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.Multimaps;
import com.google.common.collect.Sets;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class LinkedListMultimap<K, V> extends j<K, V> implements z1<K, V>, Serializable {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private transient f<K, V> f3620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private transient f<K, V> f3621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private transient Map<K, e<K, V>> f3622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient int f3623g;
    private transient int h;

    class a extends AbstractSequentialList<V> {
        final /* synthetic */ Object a;

        a(Object obj) {
            this.a = obj;
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<V> listIterator(int i) {
            return new h(this.a, i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            e eVar = (e) LinkedListMultimap.this.f3622f.get(this.a);
            if (eVar == null) {
                return 0;
            }
            return eVar.c;
        }
    }

    class b extends AbstractSequentialList<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
        public ListIterator<Map.Entry<K, V>> listIterator(int i) {
            return new g(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return LinkedListMultimap.this.f3623g;
        }
    }

    class c extends Sets.j<K> {
        c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedListMultimap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new d(LinkedListMultimap.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return !LinkedListMultimap.this.a(obj).isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedListMultimap.this.f3622f.size();
        }
    }

    private class d implements Iterator<K> {
        final Set<K> a;
        f<K, V> b;
        f<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3624d;

        private d() {
            this.a = Sets.newHashSetWithExpectedSize(LinkedListMultimap.this.keySet().size());
            this.b = LinkedListMultimap.this.f3620d;
            this.f3624d = LinkedListMultimap.this.h;
        }

        /* synthetic */ d(LinkedListMultimap linkedListMultimap, a aVar) {
            this();
        }

        private void b() {
            if (LinkedListMultimap.this.h != this.f3624d) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            b();
            return this.b != null;
        }

        @Override // java.util.Iterator
        public K next() {
            f<K, V> fVar;
            b();
            f<K, V> fVar2 = this.b;
            if (fVar2 == null) {
                throw new NoSuchElementException();
            }
            this.c = fVar2;
            this.a.add(fVar2.a);
            do {
                fVar = this.b.c;
                this.b = fVar;
                if (fVar == null) {
                    break;
                }
            } while (!this.a.add(fVar.a));
            return this.c.a;
        }

        @Override // java.util.Iterator
        public void remove() {
            b();
            Preconditions.checkState(this.c != null, "no calls to next() since the last call to remove()");
            LinkedListMultimap.this.z(this.c.a);
            this.c = null;
            this.f3624d = LinkedListMultimap.this.h;
        }
    }

    private static class e<K, V> {
        f<K, V> a;
        f<K, V> b;
        int c;

        e(f<K, V> fVar) {
            this.a = fVar;
            this.b = fVar;
            fVar.f3628f = null;
            fVar.f3627e = null;
            this.c = 1;
        }
    }

    private static final class f<K, V> extends i<K, V> {
        final K a;
        V b;
        f<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        f<K, V> f3626d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        f<K, V> f3627e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        f<K, V> f3628f;

        f(K k, V v) {
            this.a = k;
            this.b = v;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // com.google.common.collect.i, java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.b;
            this.b = v;
            return v2;
        }
    }

    private class g implements ListIterator<Map.Entry<K, V>> {
        int a;
        f<K, V> b;
        f<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        f<K, V> f3629d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3630e;

        g(int i) {
            this.f3630e = LinkedListMultimap.this.h;
            int size = LinkedListMultimap.this.size();
            Preconditions.checkPositionIndex(i, size);
            if (i < size / 2) {
                this.b = LinkedListMultimap.this.f3620d;
                while (true) {
                    int i2 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i2;
                }
            } else {
                this.f3629d = LinkedListMultimap.this.f3621e;
                this.a = size;
                while (true) {
                    int i3 = i + 1;
                    if (i >= size) {
                        break;
                    }
                    previous();
                    i = i3;
                }
            }
            this.c = null;
        }

        private void b() {
            if (LinkedListMultimap.this.h != this.f3630e) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public f<K, V> next() {
            b();
            f<K, V> fVar = this.b;
            if (fVar == null) {
                throw new NoSuchElementException();
            }
            this.c = fVar;
            this.f3629d = fVar;
            this.b = fVar.c;
            this.a++;
            return fVar;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public f<K, V> previous() {
            b();
            f<K, V> fVar = this.f3629d;
            if (fVar == null) {
                throw new NoSuchElementException();
            }
            this.c = fVar;
            this.b = fVar;
            this.f3629d = fVar.f3626d;
            this.a--;
            return fVar;
        }

        @Override // java.util.ListIterator
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public void set(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            b();
            return this.b != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            b();
            return this.f3629d != null;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.a;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.a - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            b();
            Preconditions.checkState(this.c != null, "no calls to next() since the last call to remove()");
            f<K, V> fVar = this.c;
            if (fVar != this.b) {
                this.f3629d = fVar.f3626d;
                this.a--;
            } else {
                this.b = fVar.c;
            }
            LinkedListMultimap.this.B(fVar);
            this.c = null;
            this.f3630e = LinkedListMultimap.this.h;
        }
    }

    private class h implements ListIterator<V> {
        final K a;
        int b;
        f<K, V> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        f<K, V> f3632d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        f<K, V> f3633e;

        h(K k) {
            this.a = k;
            e eVar = (e) LinkedListMultimap.this.f3622f.get(k);
            this.c = eVar == null ? null : eVar.a;
        }

        public h(K k, int i) {
            e eVar = (e) LinkedListMultimap.this.f3622f.get(k);
            int i2 = eVar == null ? 0 : eVar.c;
            Preconditions.checkPositionIndex(i, i2);
            if (i < i2 / 2) {
                this.c = eVar == null ? null : eVar.a;
                while (true) {
                    int i3 = i - 1;
                    if (i <= 0) {
                        break;
                    }
                    next();
                    i = i3;
                }
            } else {
                this.f3633e = eVar == null ? null : eVar.b;
                this.b = i2;
                while (true) {
                    int i4 = i + 1;
                    if (i >= i2) {
                        break;
                    }
                    previous();
                    i = i4;
                }
            }
            this.a = k;
            this.f3632d = null;
        }

        @Override // java.util.ListIterator
        public void add(V v) {
            this.f3633e = LinkedListMultimap.this.u(this.a, v, this.c);
            this.b++;
            this.f3632d = null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.c != null;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f3633e != null;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public V next() {
            f<K, V> fVar = this.c;
            if (fVar == null) {
                throw new NoSuchElementException();
            }
            this.f3632d = fVar;
            this.f3633e = fVar;
            this.c = fVar.f3627e;
            this.b++;
            return fVar.b;
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.b;
        }

        @Override // java.util.ListIterator
        public V previous() {
            f<K, V> fVar = this.f3633e;
            if (fVar == null) {
                throw new NoSuchElementException();
            }
            this.f3632d = fVar;
            this.c = fVar;
            this.f3633e = fVar.f3628f;
            this.b--;
            return fVar.b;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            Preconditions.checkState(this.f3632d != null, "no calls to next() since the last call to remove()");
            f<K, V> fVar = this.f3632d;
            if (fVar != this.c) {
                this.f3633e = fVar.f3628f;
                this.b--;
            } else {
                this.c = fVar.f3627e;
            }
            LinkedListMultimap.this.B(fVar);
            this.f3632d = null;
        }

        @Override // java.util.ListIterator
        public void set(V v) {
            Preconditions.checkState(this.f3632d != null);
            this.f3632d.b = v;
        }
    }

    LinkedListMultimap() {
        this(12);
    }

    private LinkedListMultimap(int i) {
        this.f3622f = i2.c(i);
    }

    private LinkedListMultimap(b2<? extends K, ? extends V> b2Var) {
        this(b2Var.keySet().size());
        j(b2Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(f<K, V> fVar) {
        f<K, V> fVar2 = fVar.f3626d;
        if (fVar2 != null) {
            fVar2.c = fVar.c;
        } else {
            this.f3620d = fVar.c;
        }
        f<K, V> fVar3 = fVar.c;
        if (fVar3 != null) {
            fVar3.f3626d = fVar2;
        } else {
            this.f3621e = fVar2;
        }
        if (fVar.f3628f == null && fVar.f3627e == null) {
            e<K, V> eVarRemove = this.f3622f.remove(fVar.a);
            Objects.requireNonNull(eVarRemove);
            eVarRemove.c = 0;
            this.h++;
        } else {
            e<K, V> eVar = this.f3622f.get(fVar.a);
            Objects.requireNonNull(eVar);
            e<K, V> eVar2 = eVar;
            eVar2.c--;
            f<K, V> fVar4 = fVar.f3628f;
            if (fVar4 == null) {
                f<K, V> fVar5 = fVar.f3627e;
                Objects.requireNonNull(fVar5);
                eVar2.a = fVar5;
            } else {
                fVar4.f3627e = fVar.f3627e;
            }
            f<K, V> fVar6 = fVar.f3627e;
            if (fVar6 == null) {
                f<K, V> fVar7 = fVar.f3628f;
                Objects.requireNonNull(fVar7);
                eVar2.b = fVar7;
            } else {
                fVar6.f3628f = fVar.f3628f;
            }
        }
        this.f3623g--;
    }

    public static <K, V> LinkedListMultimap<K, V> create() {
        return new LinkedListMultimap<>();
    }

    public static <K, V> LinkedListMultimap<K, V> create(int i) {
        return new LinkedListMultimap<>(i);
    }

    public static <K, V> LinkedListMultimap<K, V> create(b2<? extends K, ? extends V> b2Var) {
        return new LinkedListMultimap<>(b2Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        this.f3622f = CompactLinkedHashMap.create();
        int i = objectInputStream.readInt();
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public f<K, V> u(K k, V v, f<K, V> fVar) {
        f<K, V> fVar2 = new f<>(k, v);
        if (this.f3620d == null) {
            this.f3621e = fVar2;
            this.f3620d = fVar2;
            this.f3622f.put(k, new e<>(fVar2));
            this.h++;
        } else if (fVar == null) {
            f<K, V> fVar3 = this.f3621e;
            Objects.requireNonNull(fVar3);
            fVar3.c = fVar2;
            fVar2.f3626d = this.f3621e;
            this.f3621e = fVar2;
            e<K, V> eVar = this.f3622f.get(k);
            if (eVar == null) {
                this.f3622f.put(k, new e<>(fVar2));
                this.h++;
            } else {
                eVar.c++;
                f<K, V> fVar4 = eVar.b;
                fVar4.f3627e = fVar2;
                fVar2.f3628f = fVar4;
                eVar.b = fVar2;
            }
        } else {
            e<K, V> eVar2 = this.f3622f.get(k);
            Objects.requireNonNull(eVar2);
            e<K, V> eVar3 = eVar2;
            eVar3.c++;
            fVar2.f3626d = fVar.f3626d;
            fVar2.f3628f = fVar.f3628f;
            fVar2.c = fVar;
            fVar2.f3627e = fVar;
            f<K, V> fVar5 = fVar.f3628f;
            if (fVar5 == null) {
                eVar3.a = fVar2;
            } else {
                fVar5.f3627e = fVar2;
            }
            f<K, V> fVar6 = fVar.f3626d;
            if (fVar6 == null) {
                this.f3620d = fVar2;
            } else {
                fVar6.c = fVar2;
            }
            fVar.f3626d = fVar2;
            fVar.f3628f = fVar2;
        }
        this.f3623g++;
        return fVar2;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        for (Map.Entry<K, V> entry : f()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeObject(entry.getValue());
        }
    }

    private List<V> x(K k) {
        return Collections.unmodifiableList(Lists.newArrayList(new h(k)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(K k) {
        Iterators.c(new h(k));
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean A(Object obj, Object obj2) {
        return super.A(obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public List<V> a(Object obj) {
        List<V> listX = x(obj);
        z(obj);
        return listX;
    }

    @Override // com.google.common.collect.j
    Map<K, Collection<V>> c() {
        return new Multimaps.a(this);
    }

    @Override // com.google.common.collect.b2
    public void clear() {
        this.f3620d = null;
        this.f3621e = null;
        this.f3622f.clear();
        this.f3623g = 0;
        this.h++;
    }

    @Override // com.google.common.collect.b2
    public boolean containsKey(Object obj) {
        return this.f3622f.containsKey(obj);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2, com.google.common.collect.z1
    public /* bridge */ /* synthetic */ Map e() {
        return super.e();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // com.google.common.collect.j
    Set<K> g() {
        return new c();
    }

    @Override // com.google.common.collect.b2, com.google.common.collect.z1
    public List<V> get(K k) {
        return new a(k);
    }

    @Override // com.google.common.collect.j
    Iterator<Map.Entry<K, V>> h() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public boolean isEmpty() {
        return this.f3620d == null;
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ boolean j(b2 b2Var) {
        return super.j(b2Var);
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public boolean put(K k, V v) {
        u(k, v, null);
        return true;
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    public /* bridge */ /* synthetic */ boolean remove(Object obj, Object obj2) {
        return super.remove(obj, obj2);
    }

    @Override // com.google.common.collect.b2
    public int size() {
        return this.f3623g;
    }

    @Override // com.google.common.collect.j
    public /* bridge */ /* synthetic */ String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.j
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public List<Map.Entry<K, V>> d() {
        return new b();
    }

    @Override // com.google.common.collect.j, com.google.common.collect.b2
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public List<Map.Entry<K, V>> f() {
        return (List) super.f();
    }
}
