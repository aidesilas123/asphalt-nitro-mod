package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import com.applovin.exoplayer2.common.base.Supplier;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes.dex */
public final class ae {

    private static class a<K, V> extends c<K, V> {
        transient Supplier<? extends List<V>> qM;

        a(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
            super(map);
            this.qM = (Supplier) Preconditions.checkNotNull(supplier);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.applovin.exoplayer2.common.a.c, com.applovin.exoplayer2.common.a.d
        /* JADX INFO: renamed from: fb, reason: merged with bridge method [inline-methods] */
        public List<V> fd() {
            return this.qM.get();
        }

        @Override // com.applovin.exoplayer2.common.a.d, com.applovin.exoplayer2.common.a.f
        Set<K> fe() {
            return ff();
        }

        @Override // com.applovin.exoplayer2.common.a.d, com.applovin.exoplayer2.common.a.f
        Map<K, Collection<V>> fl() {
            return fm();
        }
    }

    static abstract class b<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            fF().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return fF().h(entry.getKey(), entry.getValue());
        }

        abstract ac<K, V> fF();

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@NullableDecl Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return fF().i(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return fF().size();
        }
    }

    public static <K, V> z<K, V> a(Map<K, Collection<V>> map, Supplier<? extends List<V>> supplier) {
        return new a(map, supplier);
    }

    static boolean a(ac<?, ?> acVar, @NullableDecl Object obj) {
        if (obj == acVar) {
            return true;
        }
        if (obj instanceof ac) {
            return acVar.fc().equals(((ac) obj).fc());
        }
        return false;
    }
}
