package com.applovin.exoplayer2.common.a;

import com.applovin.exoplayer2.common.base.Preconditions;
import com.applovin.exoplayer2.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class ad<K0, V0> {

    /* JADX INFO: renamed from: com.applovin.exoplayer2.common.a.ad$1, reason: invalid class name */
    class AnonymousClass1 extends c<Object> {
        final /* synthetic */ int qH;

        @Override // com.applovin.exoplayer2.common.a.ad.c
        <K, V> Map<K, Collection<V>> gJ() {
            return aj.bn(this.qH);
        }
    }

    private static final class a<V> implements Supplier<List<V>>, Serializable {
        private final int qJ;

        a(int i) {
            this.qJ = j.a(i, "expectedValuesPerKey");
        }

        @Override // com.applovin.exoplayer2.common.base.Supplier
        /* JADX INFO: renamed from: gK, reason: merged with bridge method [inline-methods] */
        public List<V> get() {
            return new ArrayList(this.qJ);
        }
    }

    public static abstract class b<K0, V0> extends ad<K0, V0> {
        b() {
            super(null);
        }

        public abstract <K extends K0, V extends V0> z<K, V> gL();
    }

    public static abstract class c<K0> {
        c() {
        }

        public b<K0, Object> bm(final int i) {
            j.a(i, "expectedValuesPerKey");
            return new b<K0, Object>() { // from class: com.applovin.exoplayer2.common.a.ad.c.1
                @Override // com.applovin.exoplayer2.common.a.ad.b
                public <K extends K0, V> z<K, V> gL() {
                    return ae.a(c.this.gJ(), new a(i));
                }
            };
        }

        abstract <K extends K0, V> Map<K, Collection<V>> gJ();

        public b<K0, Object> gM() {
            return bm(2);
        }
    }

    private ad() {
    }

    /* synthetic */ ad(AnonymousClass1 anonymousClass1) {
        this();
    }

    public static <K0> c<K0> a(final Comparator<K0> comparator) {
        Preconditions.checkNotNull(comparator);
        return new c<K0>() { // from class: com.applovin.exoplayer2.common.a.ad.2
            @Override // com.applovin.exoplayer2.common.a.ad.c
            <K extends K0, V> Map<K, Collection<V>> gJ() {
                return new TreeMap(comparator);
            }
        };
    }

    public static c<Comparable> gI() {
        return a(ai.gP());
    }
}
