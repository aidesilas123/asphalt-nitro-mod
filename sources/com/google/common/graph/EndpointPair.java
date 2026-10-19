package com.google.common.graph;

import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.collect.Iterators;
import com.google.common.collect.o3;
import com.json.o2;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class EndpointPair<N> implements Iterable<N> {
    private final N a;
    private final N b;

    private static final class b<N> extends EndpointPair<N> {
        private b(N n, N n2) {
            super(n, n2);
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean e() {
            return true;
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            return e() == endpointPair.e() && l().equals(endpointPair.l()) && n().equals(endpointPair.n());
        }

        public int hashCode() {
            return Objects.hashCode(l(), n());
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.EndpointPair
        public N l() {
            return g();
        }

        @Override // com.google.common.graph.EndpointPair
        public N n() {
            return h();
        }

        public String toString() {
            String strValueOf = String.valueOf(l());
            String strValueOf2 = String.valueOf(n());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 6 + strValueOf2.length());
            sb.append("<");
            sb.append(strValueOf);
            sb.append(" -> ");
            sb.append(strValueOf2);
            sb.append(">");
            return sb.toString();
        }
    }

    private static final class c<N> extends EndpointPair<N> {
        private c(N n, N n2) {
            super(n, n2);
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean e() {
            return false;
        }

        @Override // com.google.common.graph.EndpointPair
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof EndpointPair)) {
                return false;
            }
            EndpointPair endpointPair = (EndpointPair) obj;
            if (e() != endpointPair.e()) {
                return false;
            }
            return g().equals(endpointPair.g()) ? h().equals(endpointPair.h()) : g().equals(endpointPair.h()) && h().equals(endpointPair.g());
        }

        public int hashCode() {
            return g().hashCode() + h().hashCode();
        }

        @Override // com.google.common.graph.EndpointPair, java.lang.Iterable
        public /* bridge */ /* synthetic */ Iterator iterator() {
            return super.iterator();
        }

        @Override // com.google.common.graph.EndpointPair
        public N l() {
            throw new UnsupportedOperationException("Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.");
        }

        @Override // com.google.common.graph.EndpointPair
        public N n() {
            throw new UnsupportedOperationException("Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don't.");
        }

        public String toString() {
            String strValueOf = String.valueOf(g());
            String strValueOf2 = String.valueOf(h());
            StringBuilder sb = new StringBuilder(strValueOf.length() + 4 + strValueOf2.length());
            sb.append(o2.i.f6490d);
            sb.append(strValueOf);
            sb.append(", ");
            sb.append(strValueOf2);
            sb.append(o2.i.f6491e);
            return sb.toString();
        }
    }

    private EndpointPair(N n, N n2) {
        this.a = (N) Preconditions.checkNotNull(n);
        this.b = (N) Preconditions.checkNotNull(n2);
    }

    static <N> EndpointPair<N> i(b0<?> b0Var, N n, N n2) {
        return b0Var.d() ? ordered(n, n2) : unordered(n, n2);
    }

    static <N> EndpointPair<N> j(k0<?, ?> k0Var, N n, N n2) {
        return k0Var.d() ? ordered(n, n2) : unordered(n, n2);
    }

    public static <N> EndpointPair<N> ordered(N n, N n2) {
        return new b(n, n2);
    }

    public static <N> EndpointPair<N> unordered(N n, N n2) {
        return new c(n2, n);
    }

    public final N a(N n) {
        if (n.equals(this.a)) {
            return this.b;
        }
        if (n.equals(this.b)) {
            return this.a;
        }
        String strValueOf = String.valueOf(this);
        String strValueOf2 = String.valueOf(n);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 36 + strValueOf2.length());
        sb.append("EndpointPair ");
        sb.append(strValueOf);
        sb.append(" does not contain node ");
        sb.append(strValueOf2);
        throw new IllegalArgumentException(sb.toString());
    }

    public abstract boolean e();

    public abstract boolean equals(Object obj);

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final o3<N> iterator() {
        return Iterators.forArray(this.a, this.b);
    }

    public final N g() {
        return this.a;
    }

    public final N h() {
        return this.b;
    }

    public abstract N l();

    public abstract N n();
}
