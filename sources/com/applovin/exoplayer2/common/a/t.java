package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.a.u;
import com.applovin.exoplayer2.common.a.v;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public class t<K, V> extends v<K, V> implements z<K, V> {

    public static final class a<K, V> extends v.a<K, V> {
        @Override // com.applovin.exoplayer2.common.a.v.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a<K, V> b(K k, Iterable<? extends V> iterable) {
            super.b(k, iterable);
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.v.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a<K, V> b(K k, V... vArr) {
            super.b(k, vArr);
            return this;
        }

        @Override // com.applovin.exoplayer2.common.a.v.a
        /* JADX INFO: renamed from: gg, reason: merged with bridge method [inline-methods] */
        public t<K, V> gh() {
            return (t) super.gh();
        }
    }

    t(u<K, s<V>> uVar, int i) {
        super(uVar, i);
    }

    static <K, V> t<K, V> a(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, @NullableDecl Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return ge();
        }
        u.a aVar = new u.a(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            Collection<? extends V> value = entry.getValue();
            s sVarD = comparator == null ? s.d(value) : s.a(comparator, value);
            if (!sVarD.isEmpty()) {
                aVar.l(key, sVarD);
                size += sVarD.size();
            }
        }
        return new t<>(aVar.gq(), size);
    }

    public static <K, V> t<K, V> ge() {
        return o.qa;
    }

    public static <K, V> a<K, V> gf() {
        return new a<>();
    }

    @Override // com.applovin.exoplayer2.common.a.v
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public s<V> k(@NullableDecl K k) {
        s<V> sVar = (s) this.qn.get(k);
        return sVar == null ? s.ga() : sVar;
    }
}
