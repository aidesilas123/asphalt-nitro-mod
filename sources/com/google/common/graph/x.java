package com.google.common.graph;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractIterator;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Sets;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: EndpointPairIterator.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class x<N> extends AbstractIterator<EndpointPair<N>> {
    private final s<N> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Iterator<N> f3874d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    N f3875e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Iterator<N> f3876f;

    /* JADX INFO: compiled from: EndpointPairIterator.java */
    private static final class b<N> extends x<N> {
        private b(s<N> sVar) {
            super(sVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> b() {
            while (!this.f3876f.hasNext()) {
                if (!e()) {
                    return c();
                }
            }
            N n = this.f3875e;
            Objects.requireNonNull(n);
            return EndpointPair.ordered(n, this.f3876f.next());
        }
    }

    /* JADX INFO: compiled from: EndpointPairIterator.java */
    private static final class c<N> extends x<N> {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Set<N> f3877g;

        private c(s<N> sVar) {
            super(sVar);
            this.f3877g = Sets.newHashSetWithExpectedSize(sVar.i().size() + 1);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.AbstractIterator
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public EndpointPair<N> b() {
            do {
                Objects.requireNonNull(this.f3877g);
                while (this.f3876f.hasNext()) {
                    N next = this.f3876f.next();
                    if (!this.f3877g.contains(next)) {
                        N n = this.f3875e;
                        Objects.requireNonNull(n);
                        return EndpointPair.unordered(n, next);
                    }
                }
                this.f3877g.add(this.f3875e);
            } while (e());
            this.f3877g = null;
            return c();
        }
    }

    private x(s<N> sVar) {
        this.f3875e = null;
        this.f3876f = ImmutableSet.of().iterator();
        this.c = sVar;
        this.f3874d = sVar.i().iterator();
    }

    static <N> x<N> f(s<N> sVar) {
        return sVar.d() ? new b(sVar) : new c(sVar);
    }

    final boolean e() {
        Preconditions.checkState(!this.f3876f.hasNext());
        if (!this.f3874d.hasNext()) {
            return false;
        }
        N next = this.f3874d.next();
        this.f3875e = next;
        this.f3876f = this.c.a((Object) next).iterator();
        return true;
    }
}
