package com.google.common.collect;

import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableMultimap;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class ImmutableListMultimap<K, V> extends ImmutableMultimap<K, V> implements z1<K, V> {
    private static final long serialVersionUID = 0;

    public static final class a<K, V> extends ImmutableMultimap.b<K, V> {
        public ImmutableListMultimap<K, V> f() {
            return (ImmutableListMultimap) super.a();
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

    ImmutableListMultimap(ImmutableMap<K, ImmutableList<V>> immutableMap, int i) {
        super(immutableMap, i);
    }

    public static <K, V> a<K, V> builder() {
        return new a<>();
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(b2<? extends K, ? extends V> b2Var) {
        if (b2Var.isEmpty()) {
            return of();
        }
        if (b2Var instanceof ImmutableListMultimap) {
            ImmutableListMultimap<K, V> immutableListMultimap = (ImmutableListMultimap) b2Var;
            if (!immutableListMultimap.r()) {
                return immutableListMultimap;
            }
        }
        return u(b2Var.e().entrySet(), null);
    }

    public static <K, V> ImmutableListMultimap<K, V> copyOf(Iterable<? extends Map.Entry<? extends K, ? extends V>> iterable) {
        return new a().i(iterable).f();
    }

    public static <K, V> ImmutableListMultimap<K, V> of() {
        return k0.f3792f;
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        aVarBuilder.c(k3, v3);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4) {
        a aVarBuilder = builder();
        aVarBuilder.c(k, v);
        aVarBuilder.c(k2, v2);
        aVarBuilder.c(k3, v3);
        aVarBuilder.c(k4, v4);
        return aVarBuilder.f();
    }

    public static <K, V> ImmutableListMultimap<K, V> of(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
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
            ImmutableList.a aVarBuilder = ImmutableList.builder();
            for (int i5 = 0; i5 < i4; i5++) {
                aVarBuilder.a(objectInputStream.readObject());
            }
            bVarBuilder.g(object, aVarBuilder.k());
            i2 += i4;
        }
        try {
            ImmutableMultimap.d.a.b(this, bVarBuilder.d());
            ImmutableMultimap.d.b.a(this, i2);
        } catch (IllegalArgumentException e2) {
            throw ((InvalidObjectException) new InvalidObjectException(e2.getMessage()).initCause(e2));
        }
    }

    static <K, V> ImmutableListMultimap<K, V> u(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return of();
        }
        ImmutableMap.b bVar = new ImmutableMap.b(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            ImmutableList immutableListCopyOf = comparator == null ? ImmutableList.copyOf((Collection) value) : ImmutableList.sortedCopyOf(comparator, value);
            if (!immutableListCopyOf.isEmpty()) {
                bVar.g(key, immutableListCopyOf);
                size += immutableListCopyOf.size();
            }
        }
        return new ImmutableListMultimap<>(bVar.d(), size);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        y2.j(this, objectOutputStream);
    }

    @Override // com.google.common.collect.ImmutableMultimap
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public ImmutableList<V> get(K k) {
        ImmutableList<V> immutableList = (ImmutableList) this.f3584d.get(k);
        return immutableList == null ? ImmutableList.of() : immutableList;
    }

    @Override // com.google.common.collect.ImmutableMultimap
    @Deprecated
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final ImmutableList<V> a(Object obj) {
        throw new UnsupportedOperationException();
    }
}
