package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.json.o2;
import java.lang.Throwable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: AbstractCatchingFuture.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class l<V, X extends Throwable, F, T> extends FluentFuture.a<V> implements Runnable {
    h0<? extends V> h;
    Class<X> i;
    F j;

    /* JADX INFO: compiled from: AbstractCatchingFuture.java */
    private static final class a<V, X extends Throwable> extends l<V, X, s<? super X, ? extends V>, h0<? extends V>> {
        a(h0<? extends V> h0Var, Class<X> cls, s<? super X, ? extends V> sVar) {
            super(h0Var, cls, sVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.l
        /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
        public h0<? extends V> H(s<? super X, ? extends V> sVar, X x) throws Exception {
            h0<? extends V> h0VarApply = sVar.apply(x);
            Preconditions.checkNotNull(h0VarApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", sVar);
            return h0VarApply;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.common.util.concurrent.l
        /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
        public void I(h0<? extends V> h0Var) {
            D(h0Var);
        }
    }

    /* JADX INFO: compiled from: AbstractCatchingFuture.java */
    private static final class b<V, X extends Throwable> extends l<V, X, com.google.common.base.f<? super X, ? extends V>, V> {
        b(h0<? extends V> h0Var, Class<X> cls, com.google.common.base.f<? super X, ? extends V> fVar) {
            super(h0Var, cls, fVar);
        }

        @Override // com.google.common.util.concurrent.l
        void I(V v) {
            B(v);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.l
        /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
        public V H(com.google.common.base.f<? super X, ? extends V> fVar, X x) throws Exception {
            return fVar.apply(x);
        }
    }

    l(h0<? extends V> h0Var, Class<X> cls, F f2) {
        this.h = (h0) Preconditions.checkNotNull(h0Var);
        this.i = (Class) Preconditions.checkNotNull(cls);
        this.j = (F) Preconditions.checkNotNull(f2);
    }

    static <V, X extends Throwable> h0<V> F(h0<? extends V> h0Var, Class<X> cls, com.google.common.base.f<? super X, ? extends V> fVar, Executor executor) {
        b bVar = new b(h0Var, cls, fVar);
        h0Var.addListener(bVar, MoreExecutors.d(executor, bVar));
        return bVar;
    }

    static <X extends Throwable, V> h0<V> G(h0<? extends V> h0Var, Class<X> cls, s<? super X, ? extends V> sVar, Executor executor) {
        a aVar = new a(h0Var, cls, sVar);
        h0Var.addListener(aVar, MoreExecutors.d(executor, aVar));
        return aVar;
    }

    abstract T H(F f2, X x) throws Exception;

    abstract void I(T t);

    @Override // com.google.common.util.concurrent.m
    protected final void m() {
        x(this.h);
        this.h = null;
        this.i = null;
        this.j = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [F, java.lang.Class<X extends java.lang.Throwable>] */
    @Override // java.lang.Runnable
    public final void run() {
        h0<? extends V> h0Var = this.h;
        Class<X> cls = this.i;
        F f2 = this.j;
        if (((f2 == null) || ((h0Var == 0) | (cls == null))) || isCancelled()) {
            return;
        }
        ?? r3 = (Class<X>) null;
        this.h = null;
        try {
            th = h0Var instanceof com.google.common.util.concurrent.internal.a ? InternalFutures.tryInternalFastPathGetFailure((com.google.common.util.concurrent.internal.a) h0Var) : null;
        } catch (ExecutionException e2) {
            Throwable cause = e2.getCause();
            if (cause == null) {
                String strValueOf = String.valueOf(h0Var.getClass());
                String strValueOf2 = String.valueOf(e2.getClass());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 35 + strValueOf2.length());
                sb.append("Future type ");
                sb.append(strValueOf);
                sb.append(" threw ");
                sb.append(strValueOf2);
                sb.append(" without a cause");
                cause = new NullPointerException(sb.toString());
            }
            th = cause;
        } catch (Throwable th) {
            th = th;
        }
        Object done = th == null ? Futures.getDone(h0Var) : null;
        if (th == null) {
            B(m0.a(done));
            return;
        }
        if (!o0.a(th, cls)) {
            D(h0Var);
            return;
        }
        try {
            Object objH = H(f2, th);
            this.i = null;
            this.j = null;
            I(objH);
        } catch (Throwable th2) {
            try {
                C(th2);
            } finally {
                this.i = null;
                this.j = null;
            }
        }
    }

    @Override // com.google.common.util.concurrent.m
    protected String y() {
        String string;
        h0<? extends V> h0Var = this.h;
        Class<X> cls = this.i;
        F f2 = this.j;
        String strY = super.y();
        if (h0Var != null) {
            String strValueOf = String.valueOf(h0Var);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 16);
            sb.append("inputFuture=[");
            sb.append(strValueOf);
            sb.append("], ");
            string = sb.toString();
        } else {
            string = "";
        }
        if (cls == null || f2 == null) {
            if (strY == null) {
                return null;
            }
            String strValueOf2 = String.valueOf(string);
            return strY.length() != 0 ? strValueOf2.concat(strY) : new String(strValueOf2);
        }
        String strValueOf3 = String.valueOf(cls);
        String strValueOf4 = String.valueOf(f2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 29 + strValueOf3.length() + strValueOf4.length());
        sb2.append(string);
        sb2.append("exceptionType=[");
        sb2.append(strValueOf3);
        sb2.append("], fallback=[");
        sb2.append(strValueOf4);
        sb2.append(o2.i.f6491e);
        return sb2.toString();
    }
}
