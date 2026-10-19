package com.google.common.graph;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Iterators;
import com.google.common.collect.Maps;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public final class Graphs {

    private enum NodeVisitState {
        PENDING,
        COMPLETE
    }

    private static class a<N> extends y<N> {
        private final b0<N> a;

        /* JADX INFO: renamed from: com.google.common.graph.Graphs$a$a, reason: collision with other inner class name */
        class C0263a extends d0<N> {

            /* JADX INFO: renamed from: com.google.common.graph.Graphs$a$a$a, reason: collision with other inner class name */
            class C0264a implements com.google.common.base.f<EndpointPair<N>, EndpointPair<N>> {
                C0264a() {
                }

                @Override // com.google.common.base.f
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public EndpointPair<N> apply(EndpointPair<N> endpointPair) {
                    return EndpointPair.i(a.this.B(), endpointPair.h(), endpointPair.g());
                }
            }

            C0263a(s sVar, Object obj) {
                super(sVar, obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<EndpointPair<N>> iterator() {
                return Iterators.transform(a.this.B().h(this.a).iterator(), new C0264a());
            }
        }

        a(b0<N> b0Var) {
            this.a = b0Var;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.graph.y
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public b0<N> B() {
            return this.a;
        }

        @Override // com.google.common.graph.y, com.google.common.graph.r0
        public Set<N> a(N n) {
            return B().c(n);
        }

        @Override // com.google.common.graph.y, com.google.common.graph.s, com.google.common.graph.b0
        public Set<N> c(N n) {
            return B().a((Object) n);
        }

        @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
        public Set<EndpointPair<N>> h(N n) {
            return new C0263a(this, n);
        }

        @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
        public int l(N n) {
            return B().m(n);
        }

        @Override // com.google.common.graph.y, com.google.common.graph.n, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
        public int m(N n) {
            return B().l(n);
        }
    }

    private static class b<N, E> extends z<N, E> {
        private final k0<N, E> a;

        b(k0<N, E> k0Var) {
            this.a = k0Var;
        }

        @Override // com.google.common.graph.z
        k0<N, E> A() {
            return this.a;
        }

        @Override // com.google.common.graph.r0
        public Set<N> a(N n) {
            return A().c(n);
        }

        @Override // com.google.common.graph.k0
        public Set<N> c(N n) {
            return A().a((Object) n);
        }

        @Override // com.google.common.graph.k0
        public Set<E> o(N n) {
            return A().w(n);
        }

        @Override // com.google.common.graph.k0
        public Set<E> p(N n, N n2) {
            return A().p(n2, n);
        }

        @Override // com.google.common.graph.k0
        public EndpointPair<N> s(E e2) {
            EndpointPair<N> endpointPairS = A().s(e2);
            return EndpointPair.j(this.a, endpointPairS.h(), endpointPairS.g());
        }

        @Override // com.google.common.graph.k0
        public Set<E> w(N n) {
            return A().o(n);
        }
    }

    private static class c<N, V> extends a0<N, V> {
        private final v0<N, V> a;

        c(v0<N, V> v0Var) {
            this.a = v0Var;
        }

        @Override // com.google.common.graph.a0
        v0<N, V> C() {
            return this.a;
        }

        @Override // com.google.common.graph.r0
        public Set<N> a(N n) {
            return C().c(n);
        }

        @Override // com.google.common.graph.s, com.google.common.graph.b0
        public Set<N> c(N n) {
            return C().a((Object) n);
        }

        @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
        public int l(N n) {
            return C().m(n);
        }

        @Override // com.google.common.graph.r, com.google.common.graph.l, com.google.common.graph.s, com.google.common.graph.b0
        public int m(N n) {
            return C().l(n);
        }

        @Override // com.google.common.graph.v0
        public V r(N n, N n2, V v) {
            return C().r(n2, n, v);
        }
    }

    private Graphs() {
    }

    private static boolean a(b0<?> b0Var, Object obj, Object obj2) {
        return b0Var.d() || !Objects.equal(obj2, obj);
    }

    static int b(int i) {
        Preconditions.checkArgument(i >= 0, "Not true that %s is non-negative.", i);
        return i;
    }

    static long c(long j) {
        Preconditions.checkArgument(j >= 0, "Not true that %s is non-negative.", j);
        return j;
    }

    public static <N> h0<N> copyOf(b0<N> b0Var) {
        h0<N> h0Var = (h0<N>) GraphBuilder.from(b0Var).d(b0Var.i().size()).b();
        Iterator<N> it = b0Var.i().iterator();
        while (it.hasNext()) {
            h0Var.k(it.next());
        }
        for (EndpointPair<N> endpointPair : b0Var.b()) {
            h0Var.u(endpointPair.g(), endpointPair.h());
        }
        return h0Var;
    }

    public static <N, E> i0<N, E> copyOf(k0<N, E> k0Var) {
        i0<N, E> i0Var = (i0<N, E>) NetworkBuilder.from(k0Var).g(k0Var.i().size()).f(k0Var.b().size()).c();
        Iterator<N> it = k0Var.i().iterator();
        while (it.hasNext()) {
            i0Var.k(it.next());
        }
        for (E e2 : k0Var.b()) {
            EndpointPair<N> endpointPairS = k0Var.s(e2);
            i0Var.y(endpointPairS.g(), endpointPairS.h(), e2);
        }
        return i0Var;
    }

    public static <N, V> j0<N, V> copyOf(v0<N, V> v0Var) {
        j0<N, V> j0Var = (j0<N, V>) ValueGraphBuilder.from(v0Var).d(v0Var.i().size()).b();
        Iterator<N> it = v0Var.i().iterator();
        while (it.hasNext()) {
            j0Var.k(it.next());
        }
        for (EndpointPair<N> endpointPair : v0Var.b()) {
            N nG = endpointPair.g();
            N nH = endpointPair.h();
            V vR = v0Var.r(endpointPair.g(), endpointPair.h(), null);
            java.util.Objects.requireNonNull(vR);
            j0Var.x(nG, nH, vR);
        }
        return j0Var;
    }

    static int d(int i) {
        Preconditions.checkArgument(i > 0, "Not true that %s is positive.", i);
        return i;
    }

    static long e(long j) {
        Preconditions.checkArgument(j > 0, "Not true that %s is positive.", j);
        return j;
    }

    private static <N> boolean f(b0<N> b0Var, Map<Object, NodeVisitState> map, N n, N n2) {
        NodeVisitState nodeVisitState = map.get(n);
        if (nodeVisitState == NodeVisitState.COMPLETE) {
            return false;
        }
        NodeVisitState nodeVisitState2 = NodeVisitState.PENDING;
        if (nodeVisitState == nodeVisitState2) {
            return true;
        }
        map.put(n, nodeVisitState2);
        for (N n3 : b0Var.a((Object) n)) {
            if (a(b0Var, n3, n2) && f(b0Var, map, n3, n)) {
                return true;
            }
        }
        map.put(n, NodeVisitState.COMPLETE);
        return false;
    }

    public static <N> boolean hasCycle(b0<N> b0Var) {
        int size = b0Var.b().size();
        if (size == 0) {
            return false;
        }
        if (!b0Var.d() && size >= b0Var.i().size()) {
            return true;
        }
        HashMap mapNewHashMapWithExpectedSize = Maps.newHashMapWithExpectedSize(b0Var.i().size());
        Iterator<N> it = b0Var.i().iterator();
        while (it.hasNext()) {
            if (f(b0Var, mapNewHashMapWithExpectedSize, it.next(), null)) {
                return true;
            }
        }
        return false;
    }

    public static boolean hasCycle(k0<?, ?> k0Var) {
        if (k0Var.d() || !k0Var.q() || k0Var.b().size() <= k0Var.t().b().size()) {
            return hasCycle(k0Var.t());
        }
        return true;
    }

    public static <N> h0<N> inducedSubgraph(b0<N> b0Var, Iterable<? extends N> iterable) {
        m0 m0Var = iterable instanceof Collection ? (h0<N>) GraphBuilder.from(b0Var).d(((Collection) iterable).size()).b() : (h0<N>) GraphBuilder.from(b0Var).b();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            m0Var.k(it.next());
        }
        for (N n : m0Var.i()) {
            for (N n2 : b0Var.a((Object) n)) {
                if (m0Var.i().contains(n2)) {
                    m0Var.u(n, n2);
                }
            }
        }
        return m0Var;
    }

    public static <N, E> i0<N, E> inducedSubgraph(k0<N, E> k0Var, Iterable<? extends N> iterable) {
        n0 n0Var = iterable instanceof Collection ? (i0<N, E>) NetworkBuilder.from(k0Var).g(((Collection) iterable).size()).c() : (i0<N, E>) NetworkBuilder.from(k0Var).c();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            n0Var.k(it.next());
        }
        for (E e2 : n0Var.i()) {
            for (E e3 : k0Var.o(e2)) {
                N nA = k0Var.s(e3).a(e2);
                if (n0Var.i().contains(nA)) {
                    n0Var.y(e2, nA, e3);
                }
            }
        }
        return n0Var;
    }

    public static <N, V> j0<N, V> inducedSubgraph(v0<N, V> v0Var, Iterable<? extends N> iterable) {
        o0 o0Var = iterable instanceof Collection ? (j0<N, V>) ValueGraphBuilder.from(v0Var).d(((Collection) iterable).size()).b() : (j0<N, V>) ValueGraphBuilder.from(v0Var).b();
        Iterator<? extends N> it = iterable.iterator();
        while (it.hasNext()) {
            o0Var.k(it.next());
        }
        for (N n : o0Var.i()) {
            for (N n2 : v0Var.a((Object) n)) {
                if (o0Var.i().contains(n2)) {
                    V vR = v0Var.r(n, n2, null);
                    java.util.Objects.requireNonNull(vR);
                    o0Var.x(n, n2, vR);
                }
            }
        }
        return o0Var;
    }

    public static <N> Set<N> reachableNodes(b0<N> b0Var, N n) {
        Preconditions.checkArgument(b0Var.i().contains(n), "Node %s is not an element of this graph.", n);
        return ImmutableSet.copyOf(Traverser.forGraph(b0Var).b(n));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <N> b0<N> transitiveClosure(b0<N> b0Var) {
        m0 m0VarB = GraphBuilder.from(b0Var).a(true).b();
        if (b0Var.d()) {
            for (N n : b0Var.i()) {
                Iterator it = reachableNodes(b0Var, n).iterator();
                while (it.hasNext()) {
                    m0VarB.u(n, it.next());
                }
            }
        } else {
            HashSet hashSet = new HashSet();
            for (N n2 : b0Var.i()) {
                if (!hashSet.contains(n2)) {
                    Set setReachableNodes = reachableNodes(b0Var, n2);
                    hashSet.addAll(setReachableNodes);
                    int i = 1;
                    for (Object obj : setReachableNodes) {
                        int i2 = i + 1;
                        Iterator it2 = Iterables.limit(setReachableNodes, i).iterator();
                        while (it2.hasNext()) {
                            m0VarB.u(obj, it2.next());
                        }
                        i = i2;
                    }
                }
            }
        }
        return m0VarB;
    }

    public static <N> b0<N> transpose(b0<N> b0Var) {
        return !b0Var.d() ? b0Var : b0Var instanceof a ? ((a) b0Var).a : new a(b0Var);
    }

    public static <N, E> k0<N, E> transpose(k0<N, E> k0Var) {
        return !k0Var.d() ? k0Var : k0Var instanceof b ? ((b) k0Var).a : new b(k0Var);
    }

    public static <N, V> v0<N, V> transpose(v0<N, V> v0Var) {
        return !v0Var.d() ? v0Var : v0Var instanceof c ? ((c) v0Var).a : new c(v0Var);
    }
}
