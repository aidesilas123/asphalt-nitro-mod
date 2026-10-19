package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Primitives;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class MutableClassToInstanceMap<B> extends y0<Class<? extends B>, B> implements Serializable, Serializable {
    private final Map<Class<? extends B>, B> a;

    class a extends z0<Class<? extends B>, B> {
        final /* synthetic */ Map.Entry a;

        a(Map.Entry entry) {
            this.a = entry;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        /* JADX INFO: renamed from: C */
        public Map.Entry<Class<? extends B>, B> P() {
            return this.a;
        }

        @Override // com.google.common.collect.z0, java.util.Map.Entry
        public B setValue(B b) {
            return (B) super.setValue(MutableClassToInstanceMap.E(getKey(), b));
        }
    }

    class b extends f1<Map.Entry<Class<? extends B>, B>> {

        class a extends m3<Map.Entry<Class<? extends B>, B>, Map.Entry<Class<? extends B>, B>> {
            a(b bVar, Iterator it) {
                super(it);
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            @Override // com.google.common.collect.m3
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<Class<? extends B>, B> a(Map.Entry<Class<? extends B>, B> entry) {
                return MutableClassToInstanceMap.F(entry);
            }
        }

        b() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.u0
        public Set<Map.Entry<Class<? extends B>, B>> P() {
            return MutableClassToInstanceMap.this.P().entrySet();
        }

        @Override // com.google.common.collect.u0, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<Class<? extends B>, B>> iterator() {
            return new a(this, P().iterator());
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public Object[] toArray() {
            return G();
        }

        @Override // com.google.common.collect.u0, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) H(tArr);
        }
    }

    private static final class c<B> implements Serializable {
        private static final long serialVersionUID = 0;
        private final Map<Class<? extends B>, B> a;

        c(Map<Class<? extends B>, B> map) {
            this.a = map;
        }

        Object readResolve() {
            return MutableClassToInstanceMap.create(this.a);
        }
    }

    private MutableClassToInstanceMap(Map<Class<? extends B>, B> map) {
        this.a = (Map) Preconditions.checkNotNull(map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <B, T extends B> T E(Class<T> cls, B b2) {
        return (T) Primitives.wrap(cls).cast(b2);
    }

    static <B> Map.Entry<Class<? extends B>, B> F(Map.Entry<Class<? extends B>, B> entry) {
        return new a(entry);
    }

    public static <B> MutableClassToInstanceMap<B> create() {
        return new MutableClassToInstanceMap<>(new HashMap());
    }

    public static <B> MutableClassToInstanceMap<B> create(Map<Class<? extends B>, B> map) {
        return new MutableClassToInstanceMap<>(map);
    }

    private Object writeReplace() {
        return new c(P());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.d1
    /* JADX INFO: renamed from: C */
    public Map<Class<? extends B>, B> P() {
        return this.a;
    }

    @Override // com.google.common.collect.y0, java.util.Map
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public B put(Class<? extends B> cls, B b2) {
        return (B) super.put(cls, E(cls, b2));
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public Set<Map.Entry<Class<? extends B>, B>> entrySet() {
        return new b();
    }

    @Override // com.google.common.collect.y0, java.util.Map
    public void putAll(Map<? extends Class<? extends B>, ? extends B> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(map);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            E((Class) entry.getKey(), entry.getValue());
        }
        super.putAll(linkedHashMap);
    }
}
