package com.google.common.collect;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSortedSet;
import com.google.common.collect.y2;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ImmutableSetMultimap<K, V> extends ImmutableMultimap<K, V> implements z2<K, V> {
    private static final long serialVersionUID = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final transient ImmutableSet<V> f3589f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private transient ImmutableSet<Map.Entry<K, V>> f3590g;

    public static final class a<K, V> extends ImmutableMultimap.b<K, V> {
        @Override // com.google.common.collect.ImmutableMultimap.b
        Collection<V> b() {
            return i2.g();
        }

        public ImmutableSetMultimap<K, V> f() {
            Collection collectionEntrySet = this.a.entrySet();
            Comparator<? super K> comparator = this.b;
            if (comparator != null) {
                collectionEntrySet = Ordering.from(comparator).d().a(collectionEntrySet);
            }
            return ImmutableSetMultimap.x(collectionEntrySet, this.c);
        }

        @Override // com.google.common.collect.ImmutableMultimap.b
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public a<K, V> c(K k, V v) {
            super.c(k, v);
            return this;
        }

        @Override // com.google.common.collect.ImmutableMultimap.b
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public a<K, V> d(Map.Entry<? extends K, ? extends V> entry) {
            super.d(entry);
            return this;
        }

        public a<K, V> i(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
            super.e(iterable);
            return this;
        }
    }

    private static final class b<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        private final transient ImmutableSetMultimap<K, V> c;

        b(ImmutableSetMultimap<K, V> immutableSetMultimap) {
            this.c = immutableSetMultimap;
        }

        @Override // com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.c.A(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.n1
        boolean j() {
            return false;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.n1, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: n */
        public o3<Map.Entry<K, V>> iterator() {
            return this.c.h();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.c.size();
        }
    }

    private static final class c {
        static final y2.b<ImmutableSetMultimap> a = y2.a(ImmutableSetMultimap.class, "emptySet");
    }

    ImmutableSetMultimap(ImmutableMap<K, ImmutableSet<V>> immutableMap, int i, Comparator<? super V> comparator) {
        super(immutableMap, i);
        this.f3589f = v(comparator);
    }

    private static <V> ImmutableSet<V> D(Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? ImmutableSet.copyOf((Collection) collection) : ImmutableSortedSet.copyOf((Comparator) comparator, (Collection) collection);
    }

    private static <V> ImmutableSet.a<V> E(Comparator<? super V> comparator) {
        return comparator == null ? new ImmutableSet.a<>() : new ImmutableSortedSet.a(comparator);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(b2<? extends K, ? extends V> b2Var) {
        return u(b2Var, null);
    }

    public static <K, V> ImmutableSetMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().i(iterable).f();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of() {
        return l0.h;
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        aVarBuilder.c(k3, v3);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        aVarBuilder.c(k3, v3);
        aVarBuilder.c(k4, v4);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableSetMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        aVarBuilder.c(k3, v3);
        aVarBuilder.c(k4, v4);
        aVarBuilder.c(k5, v5);
        return aVarBuilder.f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Invalid key count ");
            sb.append(i);
            throw new InvalidObjectException(sb.toString());
        }
        ImmutableMap.b bVarBuilder = ImmutableMap.builder();
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object object = objectInputStream.readObject();
            int i4 = objectInputStream.readInt();
            if (i4 <= 0) {
                StringBuilder sb2 = new StringBuilder(31);
                sb2.append("Invalid value count ");
                sb2.append(i4);
                throw new InvalidObjectException(sb2.toString());
            }
            ImmutableSet.a aVarE = E(comparator);
            for (int i5 = 0; i5 < i4; i5++) {
                aVarE.a(objectInputStream.readObject());
            }
            ImmutableSet immutableSetN = aVarE.n();
            if (immutableSetN.size() != i4) {
                String strValueOf = String.valueOf(object);
                StringBuilder sb3 = new StringBuilder(strValueOf.length() + 40);
                sb3.append("Duplicate key-value pairs exist for key ");
                sb3.append(strValueOf);
                throw new InvalidObjectException(sb3.toString());
            }
            bVarBuilder.g(object, immutableSetN);
            i2 += i4;
        }
        try {
            ImmutableMultimap.d.a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.b.a(this, i2);
            c.a.b(this, v(comparator));
        } catch (IllegalArgumentException e2) {
            throw ((InvalidObjectException) new InvalidObjectException(e2.getMessage()).initCause(e2));
        }
    }

    private static <K, V> ImmutableSetMultimap<K, V> u(b2<? extends K, ? extends V> b2Var, Comparator<? super V> comparator) {
        Preconditions.checkNotNull(b2Var);
        if (b2Var.isEmpty() && comparator == null) {
            return of();
        }
        if (b2Var instanceof ImmutableSetMultimap) {
            ImmutableSetMultimap<K, V> immutableSetMultimap = (ImmutableSetMultimap) b2Var;
            if (!immutableSetMultimap.r()) {
                return immutableSetMultimap;
            }
        }
        return x(b2Var.e().entrySet(), comparator);
    }

    private static <V> ImmutableSet<V> v(Comparator<? super V> comparator) {
        return comparator == null ? ImmutableSet.of() : ImmutableSortedSet.F(comparator);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(C());
        y2.j(this, objectOutputStream);
    }

    static <K, V> ImmutableSetMultimap<K, V> x(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            ImmutableSet immutableSetD = D(comparator, entry.getValue());
            if (!immutableSetD.isEmpty()) {
                bVar.g(key, immutableSetD);
                size += immutableSetD.size();
            }
        }
        return new ImmutableSetMultimap<>(bVar.d(), size, comparator);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    @Deprecated
    /* JADX INFO: renamed from: B, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet<V> a(Object obj) {
        throw new UnsupportedOperationException();
    }

    Comparator<? super V> C() {
        ImmutableSet<V> immutableSet = this.f3589f;
        if (immutableSet instanceof ImmutableSortedSet) {
            return ((ImmutableSortedSet) immutableSet).comparator();
        }
        return null;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<Map.Entry<K, V>> f() {
        ImmutableSet<Map.Entry<K, V>> immutableSet = this.f3590g;
        if (immutableSet != null) {
            return immutableSet;
        }
        b bVar = new b(this);
        this.f3590g = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* JADX INFO: renamed from: z, reason: merged with bridge method [inline-methods] */
    public ImmutableSet<V> get(K k) {
        return (ImmutableSet) MoreObjects.firstNonNull((ImmutableSet) this.f3584d.get(k), this.f3589f);
    }
}
