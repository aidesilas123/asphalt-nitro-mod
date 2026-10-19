package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.Sets;
import com.google.common.collect.o3;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: AbstractBaseGraph.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class l<N> implements s<N> {

    /* JADX INFO: compiled from: AbstractBaseGraph.java */
    class a extends AbstractSet<EndpointPair<N>> {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair<?> endpointPair = (EndpointPair) obj;
            return l.this.A(endpointPair) && l.this.i().contains(endpointPair.g()) && l.this.a(endpointPair.g()).contains(endpointPair.h());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<EndpointPair<N>> iterator() {
            return x.f(l.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return Ints.saturatedCast(l.this.z());
        }
    }

    /* JADX INFO: compiled from: AbstractBaseGraph.java */
    class b extends d0<N> {
        b(l lVar, s sVar, Object obj) {
            super(sVar, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ EndpointPair g(Object obj) {
            return EndpointPair.ordered(obj, this.a);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ EndpointPair i(Object obj) {
            return EndpointPair.ordered(this.a, obj);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ EndpointPair l(Object obj) {
            return EndpointPair.unordered(this.a, obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public o3<EndpointPair<N>> iterator() {
            return this.b.d() ? Iterators.unmodifiableIterator(Iterators.concat(Iterators.transform(this.b.c(this.a).iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.a
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return this.a.g(obj);
                }
            }), Iterators.transform(Sets.difference(this.b.a((Object) this.a), ImmutableSet.of(this.a)).iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.b
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return this.a.i(obj);
                }
            }))) : Iterators.unmodifiableIterator(Iterators.transform(this.b.g(this.a).iterator(), new com.google.common.base.f() { // from class: com.google.common.graph.c
                @Override // com.google.common.base.f
                public final Object apply(Object obj) {
                    return this.a.l(obj);
                }
            }));
        }
    }

    l() {
    }

    protected final boolean A(EndpointPair<?> endpointPair) {
        return endpointPair.e() || !d();
    }

    @Override // com.google.common.graph.s
    public Set<EndpointPair<N>> b() {
        return new a();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public Set<EndpointPair<N>> h(N n) {
        Preconditions.checkNotNull(n);
        Preconditions.checkArgument(i().contains(n), "Node %s is not an element of this graph.", n);
        return new b(this, this, n);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public ElementOrder<N> j() {
        return ElementOrder.unordered();
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public int l(N n) {
        return d() ? a((Object) n).size() : n(n);
    }

    @Override // com.google.common.graph.s, com.google.common.graph.b0
    public int m(N n) {
        return d() ? c(n).size() : n(n);
    }

    @Override // com.google.common.graph.s
    public int n(N n) {
        if (d()) {
            return IntMath.saturatedAdd(c(n).size(), a((Object) n).size());
        }
        Set<N> setG = g(n);
        return IntMath.saturatedAdd(setG.size(), (f() && setG.contains(n)) ? 1 : 0);
    }

    protected long z() {
        Iterator<N> it = i().iterator();
        long jN = 0;
        while (it.hasNext()) {
            jN += (long) n(it.next());
        }
        Preconditions.checkState((1 & jN) == 0);
        return jN >>> 1;
    }
}
