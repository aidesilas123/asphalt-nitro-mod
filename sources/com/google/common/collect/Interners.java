package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMaker;
import com.google.common.collect.MapMakerInternalMap;

/* JADX INFO: loaded from: classes3.dex */
public final class Interners {

    public static class b {
        private final MapMaker a;
        private boolean b;

        private b() {
            this.a = new MapMaker();
            this.b = true;
        }

        public <E> w1<E> a() {
            if (!this.b) {
                this.a.l();
            }
            return new d(this.a);
        }

        public b b() {
            this.b = true;
            return this;
        }

        public b c() {
            this.b = false;
            return this;
        }
    }

    private static class c<E> implements com.google.common.base.f<E, E> {
        private final w1<E> a;

        public c(w1<E> w1Var) {
            this.a = w1Var;
        }

        @Override // com.google.common.base.f
        public E apply(E e2) {
            return this.a.a(e2);
        }

        @Override // com.google.common.base.f
        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return this.a.equals(((c) obj).a);
            }
            return false;
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    static final class d<E> implements w1<E> {
        final MapMakerInternalMap<E, MapMaker.Dummy, ?, ?> a;

        private d(MapMaker mapMaker) {
            this.a = MapMakerInternalMap.d(mapMaker.h(Equivalence.equals()));
        }

        @Override // com.google.common.collect.w1
        public E a(E e2) {
            E e3;
            do {
                MapMakerInternalMap.i iVarE = this.a.e(e2);
                if (iVarE != null && (e3 = (E) iVarE.getKey()) != null) {
                    return e3;
                }
            } while (this.a.putIfAbsent(e2, MapMaker.Dummy.VALUE) != null);
            return e2;
        }
    }

    private Interners() {
    }

    public static <E> com.google.common.base.f<E, E> asFunction(w1<E> w1Var) {
        return new c((w1) Preconditions.checkNotNull(w1Var));
    }

    public static b newBuilder() {
        return new b();
    }

    public static <E> w1<E> newStrongInterner() {
        return newBuilder().b().a();
    }

    public static <E> w1<E> newWeakInterner() {
        return newBuilder().c().a();
    }
}
