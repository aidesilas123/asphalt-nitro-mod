package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.FluentFuture;
import com.json.o2;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: AbstractTransformFuture.java */
/* JADX INFO: loaded from: classes3.dex */
abstract class p<I, O, F, T> extends FluentFuture.a<O> implements Runnable {
    h0<? extends I> h;
    F i;

    /* JADX INFO: compiled from: AbstractTransformFuture.java */
    private static final class a<I, O> extends p<I, O, s<? super I, ? extends O>, h0<? extends O>> {
        a(h0<? extends I> h0Var, s<? super I, ? extends O> sVar) {
            super(h0Var, sVar);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.p
        /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
        public h0<? extends O> H(s<? super I, ? extends O> sVar, I i) throws Exception {
            h0<? extends O> h0VarApply = sVar.apply(i);
            Preconditions.checkNotNull(h0VarApply, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", sVar);
            return h0VarApply;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.p
        /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
        public void I(h0<? extends O> h0Var) {
            D(h0Var);
        }
    }

    /* JADX INFO: compiled from: AbstractTransformFuture.java */
    private static final class b<I, O> extends p<I, O, com.google.common.base.f<? super I, ? extends O>, O> {
        b(h0<? extends I> h0Var, com.google.common.base.f<? super I, ? extends O> fVar) {
            super(h0Var, fVar);
        }

        @Override // com.google.common.util.concurrent.p
        void I(O o) {
            B(o);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.common.util.concurrent.p
        /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
        public O H(com.google.common.base.f<? super I, ? extends O> fVar, I i) {
            return fVar.apply(i);
        }
    }

    p(h0<? extends I> h0Var, F f2) {
        this.h = (h0) Preconditions.checkNotNull(h0Var);
        this.i = (F) Preconditions.checkNotNull(f2);
    }

    static <I, O> h0<O> F(h0<I> h0Var, com.google.common.base.f<? super I, ? extends O> fVar, Executor executor) {
        Preconditions.checkNotNull(fVar);
        b bVar = new b(h0Var, fVar);
        h0Var.addListener(bVar, MoreExecutors.d(executor, bVar));
        return bVar;
    }

    static <I, O> h0<O> G(h0<I> h0Var, s<? super I, ? extends O> sVar, Executor executor) {
        Preconditions.checkNotNull(executor);
        a aVar = new a(h0Var, sVar);
        h0Var.addListener(aVar, MoreExecutors.d(executor, aVar));
        return aVar;
    }

    abstract T H(F f2, I i) throws Exception;

    abstract void I(T t);

    @Override // com.google.common.util.concurrent.m
    protected final void m() {
        x(this.h);
        this.h = null;
        this.i = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        h0<? extends I> h0Var = this.h;
        F f2 = this.i;
        if ((isCancelled() | (h0Var == null)) || (f2 == null)) {
            return;
        }
        this.h = null;
        if (h0Var.isCancelled()) {
            D(h0Var);
            return;
        }
        try {
            try {
                Object objH = H(f2, Futures.getDone(h0Var));
                this.i = null;
                I(objH);
            } catch (Throwable th) {
                try {
                    C(th);
                } finally {
                    this.i = null;
                }
            }
        } catch (Error e2) {
            C(e2);
        } catch (CancellationException unused) {
            cancel(false);
        } catch (RuntimeException e3) {
            C(e3);
        } catch (ExecutionException e4) {
            C(e4.getCause());
        }
    }

    @Override // com.google.common.util.concurrent.m
    protected String y() {
        String string;
        h0<? extends I> h0Var = this.h;
        F f2 = this.i;
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
        if (f2 == null) {
            if (strY == null) {
                return null;
            }
            String strValueOf2 = String.valueOf(string);
            return strY.length() != 0 ? strValueOf2.concat(strY) : new String(strValueOf2);
        }
        String strValueOf3 = String.valueOf(f2);
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 11 + strValueOf3.length());
        sb2.append(string);
        sb2.append("function=[");
        sb2.append(strValueOf3);
        sb2.append(o2.i.f6491e);
        return sb2.toString();
    }
}
