package com.google.common.graph;

import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AbstractNetwork.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class p<N, E> implements k0<N, E> {

    /* JADX INFO: compiled from: AbstractNetwork.java */
    class a extends n<N> {

        /* JADX INFO: renamed from: com.google.common.graph.p$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AbstractNetwork.java */
        class C0266a extends AbstractSet<EndpointPair<N>> {

            /* JADX INFO: renamed from: com.google.common.graph.p$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: AbstractNetwork.java */
            class C0267a implements com.google.common.base.f<E, EndpointPair<N>> {
                C0267a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public EndpointPair<N> apply(E e2) {
                    return p.this.s(e2);
                }
            }

            C0266a() {
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                if (!(obj instanceof EndpointPair)) {
                    return false;
                }
                EndpointPair<?> endpointPair = (EndpointPair) obj;
                return a.this.A(endpointPair) && a.this.i().contains(endpointPair.g()) && a.this.a(endpointPair.g()).contains(endpointPair.h());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<EndpointPair<N>> iterator() {
                return Iterators.transform(p.this.b().iterator(), new C0267a());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return p.this.b().size();
            }
        }

        a() {
        }

        @Override // com.google.common.graph.r0
        public Set<N> a(N n) {
            return p.this.a((Object) n);
        }

        @Override // com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s
        public Set<EndpointPair<N>> b() {
            return p.this.q() ? super.b() : new C0266a();
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public Set<N> c(N n) {
            return p.this.c(n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public boolean d() {
            return p.this.d();
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public ElementOrder<N> e() {
            return p.this.e();
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public boolean f() {
            return p.this.f();
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public Set<N> g(N n) {
            return p.this.g(n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public Set<N> i() {
            return p.this.i();
        }

        @Override // com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
        public ElementOrder<N> j() {
            return ElementOrder.unordered();
        }
    }

    /* JADX INFO: compiled from: AbstractNetwork.java */
    class b implements com.google.common.base.f<E, EndpointPair<N>> {
        final /* synthetic */ k0 a;

        b(k0 k0Var) {
            this.a = k0Var;
        }

        @Override // com.google.common.base.f
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> apply(E e2) {
            return this.a.s(e2);
        }
    }

    private static <N, E> Map<E, EndpointPair<N>> z(k0<N, E> k0Var) {
        return Maps.asMap(k0Var.b(), new b(k0Var));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k0)) {
            return false;
        }
        k0 k0Var = (k0) obj;
        return d() == k0Var.d() && i().equals(k0Var.i()) && z(this).equals(z(k0Var));
    }

    public final int hashCode() {
        return z(this).hashCode();
    }

    @Override // com.google.common.graph.k0
    public b0<N> t() {
        return new a();
    }

    public String toString() {
        boolean zD = d();
        boolean zQ = q();
        boolean zF = f();
        String strValueOf = String.valueOf(i());
        String strValueOf2 = String.valueOf(z(this));
        StringBuilder sb = new StringBuilder(strValueOf.length() + 87 + strValueOf2.length());
        sb.append("isDirected: ");
        sb.append(zD);
        sb.append(", allowsParallelEdges: ");
        sb.append(zQ);
        sb.append(", allowsSelfLoops: ");
        sb.append(zF);
        sb.append(", nodes: ");
        sb.append(strValueOf);
        sb.append(", edges: ");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
