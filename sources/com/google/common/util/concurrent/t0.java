package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.json.o2;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

/* JADX INFO: compiled from: TrustedListenableFutureTask.java */
/* JADX INFO: loaded from: classes3.dex */
class t0<V> extends FluentFuture.a<V> implements RunnableFuture<V> {
    private volatile g0<?> h;

    /* JADX INFO: compiled from: TrustedListenableFutureTask.java */
    private final class a extends g0<h0<V>> {
        private final r<V> c;

        a(r<V> rVar) {
            this.c = (r) Preconditions.checkNotNull(rVar);
        }

        @Override // com.google.common.util.concurrent.g0
        void a(Throwable th) {
            t0.this.C(th);
        }

        @Override // com.google.common.util.concurrent.g0
        final boolean d() {
            return t0.this.isDone();
        }

        @Override // com.google.common.util.concurrent.g0
        String f() {
            return this.c.toString();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.g0
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void b(h0<V> h0Var) {
            t0.this.D(h0Var);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.g0
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public h0<V> e() throws Exception {
            return (h0) Preconditions.checkNotNull(this.c.call(), "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.c);
        }
    }

    /* JADX INFO: compiled from: TrustedListenableFutureTask.java */
    private final class b extends g0<V> {
        private final Callable<V> c;

        b(Callable<V> callable) {
            this.c = (Callable) Preconditions.checkNotNull(callable);
        }

        @Override // com.google.common.util.concurrent.g0
        void a(Throwable th) {
            t0.this.C(th);
        }

        @Override // com.google.common.util.concurrent.g0
        void b(V v) {
            t0.this.B(v);
        }

        @Override // com.google.common.util.concurrent.g0
        final boolean d() {
            return t0.this.isDone();
        }

        @Override // com.google.common.util.concurrent.g0
        V e() throws Exception {
            return this.c.call();
        }

        @Override // com.google.common.util.concurrent.g0
        String f() {
            return this.c.toString();
        }
    }

    t0(r<V> rVar) {
        this.h = new a(rVar);
    }

    t0(Callable<V> callable) {
        this.h = new b(callable);
    }

    static <V> t0<V> F(r<V> rVar) {
        return new t0<>(rVar);
    }

    static <V> t0<V> G(Runnable runnable, V v) {
        return new t0<>(Executors.callable(runnable, v));
    }

    static <V> t0<V> H(Callable<V> callable) {
        return new t0<>(callable);
    }

    @Override // com.google.common.util.concurrent.m
    protected void m() {
        g0<?> g0Var;
        super.m();
        if (E() && (g0Var = this.h) != null) {
            g0Var.c();
        }
        this.h = null;
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        g0<?> g0Var = this.h;
        if (g0Var != null) {
            g0Var.run();
        }
        this.h = null;
    }

    @Override // com.google.common.util.concurrent.m
    protected String y() {
        g0<?> g0Var = this.h;
        if (g0Var == null) {
            return super.y();
        }
        String strValueOf = String.valueOf(g0Var);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 7);
        sb.append("task=[");
        sb.append(strValueOf);
        sb.append(o2.i.f6491e);
        return sb.toString();
    }
}
