package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.collect.n1;
import com.google.common.collect.o3;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
abstract class AggregateFuture<InputT, OutputT> extends q<OutputT> {
    private static final Logger l = Logger.getLogger(AggregateFuture.class.getName());
    private n1<? extends h0<? extends InputT>> m;
    private final boolean n;
    private final boolean o;

    enum ReleaseResourcesReason {
        OUTPUT_FUTURE_DONE,
        ALL_INPUT_FUTURES_PROCESSED
    }

    AggregateFuture(n1<? extends h0<? extends InputT>> n1Var, boolean z, boolean z2) {
        super(n1Var.size());
        this.m = (n1) Preconditions.checkNotNull(n1Var);
        this.n = z;
        this.o = z2;
    }

    private static boolean M(Set<Throwable> set, Throwable th) {
        while (th != null) {
            if (!set.add(th)) {
                return false;
            }
            th = th.getCause();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void O(int i, Future<? extends InputT> future) {
        try {
            N(i, Futures.getDone(future));
        } catch (ExecutionException e2) {
            R(e2.getCause());
        } catch (Throwable th) {
            R(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public void W(n1<? extends Future<? extends InputT>> n1Var) {
        int iK = K();
        Preconditions.checkState(iK >= 0, "Less than 0 remaining futures");
        if (iK == 0) {
            Y(n1Var);
        }
    }

    private void R(Throwable th) {
        Preconditions.checkNotNull(th);
        if (this.n && !C(th) && M(L(), th)) {
            X(th);
        } else if (th instanceof Error) {
            X(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void U(h0 h0Var, int i) {
        try {
            if (h0Var.isCancelled()) {
                this.m = null;
                cancel(false);
            } else {
                O(i, h0Var);
            }
        } finally {
            V(null);
        }
    }

    private static void X(Throwable th) {
        l.log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
    }

    private void Y(n1<? extends Future<? extends InputT>> n1Var) {
        if (n1Var != null) {
            int i = 0;
            o3<? extends Future<? extends InputT>> it = n1Var.iterator();
            while (it.hasNext()) {
                Future<? extends InputT> next = it.next();
                if (!next.isCancelled()) {
                    O(i, next);
                }
                i++;
            }
        }
        J();
        Q();
        Z(ReleaseResourcesReason.ALL_INPUT_FUTURES_PROCESSED);
    }

    @Override // com.google.common.util.concurrent.q
    final void I(Set<Throwable> set) {
        Preconditions.checkNotNull(set);
        if (isCancelled()) {
            return;
        }
        Throwable thA = a();
        Objects.requireNonNull(thA);
        M(set, thA);
    }

    abstract void N(int i, InputT inputt);

    abstract void Q();

    final void S() {
        Objects.requireNonNull(this.m);
        if (this.m.isEmpty()) {
            Q();
            return;
        }
        if (!this.n) {
            final n1<? extends h0<? extends InputT>> n1Var = this.o ? this.m : null;
            Runnable runnable = new Runnable() { // from class: com.google.common.util.concurrent.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.W(n1Var);
                }
            };
            o3<? extends h0<? extends InputT>> it = this.m.iterator();
            while (it.hasNext()) {
                it.next().addListener(runnable, MoreExecutors.directExecutor());
            }
            return;
        }
        final int i = 0;
        o3<? extends h0<? extends InputT>> it2 = this.m.iterator();
        while (it2.hasNext()) {
            final h0<? extends InputT> next = it2.next();
            next.addListener(new Runnable() { // from class: com.google.common.util.concurrent.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.U(next, i);
                }
            }, MoreExecutors.directExecutor());
            i++;
        }
    }

    void Z(ReleaseResourcesReason releaseResourcesReason) {
        Preconditions.checkNotNull(releaseResourcesReason);
        this.m = null;
    }

    @Override // com.google.common.util.concurrent.m
    protected final void m() {
        super.m();
        n1<? extends h0<? extends InputT>> n1Var = this.m;
        Z(ReleaseResourcesReason.OUTPUT_FUTURE_DONE);
        if (isCancelled() && (n1Var != null)) {
            boolean zE = E();
            o3<? extends h0<? extends InputT>> it = n1Var.iterator();
            while (it.hasNext()) {
                it.next().cancel(zE);
            }
        }
    }

    @Override // com.google.common.util.concurrent.m
    protected final String y() {
        n1<? extends h0<? extends InputT>> n1Var = this.m;
        if (n1Var == null) {
            return super.y();
        }
        String strValueOf = String.valueOf(n1Var);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 8);
        sb.append("futures=");
        sb.append(strValueOf);
        return sb.toString();
    }
}
