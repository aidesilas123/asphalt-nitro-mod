package com.google.common.util.concurrent;

import com.google.common.collect.Sets;
import com.google.common.util.concurrent.m;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: compiled from: AggregateFutureState.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class q<OutputT> extends m.j<OutputT> {
    private static final b h;
    private static final Logger i = Logger.getLogger(q.class.getName());
    private volatile Set<Throwable> j = null;
    private volatile int k;

    /* JADX INFO: compiled from: AggregateFutureState.java */
    private static abstract class b {
        private b() {
        }

        abstract void a(q<?> qVar, Set<Throwable> set, Set<Throwable> set2);

        abstract int b(q<?> qVar);
    }

    /* JADX INFO: compiled from: AggregateFutureState.java */
    private static final class c extends b {
        final AtomicReferenceFieldUpdater<q<?>, Set<Throwable>> a;
        final AtomicIntegerFieldUpdater<q<?>> b;

        c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicIntegerFieldUpdater;
        }

        @Override // com.google.common.util.concurrent.q.b
        void a(q<?> qVar, Set<Throwable> set, Set<Throwable> set2) {
            this.a.compareAndSet(qVar, set, set2);
        }

        @Override // com.google.common.util.concurrent.q.b
        int b(q<?> qVar) {
            return this.b.decrementAndGet(qVar);
        }
    }

    /* JADX INFO: compiled from: AggregateFutureState.java */
    private static final class d extends b {
        private d() {
            super();
        }

        @Override // com.google.common.util.concurrent.q.b
        void a(q<?> qVar, Set<Throwable> set, Set<Throwable> set2) {
            synchronized (qVar) {
                if (((q) qVar).j == set) {
                    ((q) qVar).j = set2;
                }
            }
        }

        @Override // com.google.common.util.concurrent.q.b
        int b(q<?> qVar) {
            int iH;
            synchronized (qVar) {
                iH = q.H(qVar);
            }
            return iH;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        b cVar;
        Throwable th = null;
        Object[] objArr = 0;
        try {
            cVar = new c(AtomicReferenceFieldUpdater.newUpdater(q.class, Set.class, "j"), AtomicIntegerFieldUpdater.newUpdater(q.class, CampaignEx.JSON_KEY_AD_K));
        } catch (Throwable th2) {
            d dVar = new d();
            th = th2;
            cVar = dVar;
        }
        h = cVar;
        if (th != null) {
            i.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    q(int i2) {
        this.k = i2;
    }

    static /* synthetic */ int H(q qVar) {
        int i2 = qVar.k - 1;
        qVar.k = i2;
        return i2;
    }

    abstract void I(Set<Throwable> set);

    final void J() {
        this.j = null;
    }

    final int K() {
        return h.b(this);
    }

    final Set<Throwable> L() {
        Set<Throwable> set = this.j;
        if (set != null) {
            return set;
        }
        Set<Throwable> setNewConcurrentHashSet = Sets.newConcurrentHashSet();
        I(setNewConcurrentHashSet);
        h.a(this, null, setNewConcurrentHashSet);
        Set<Throwable> set2 = this.j;
        Objects.requireNonNull(set2);
        return set2;
    }
}
