package com.google.common.util.concurrent;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.f0;
import com.google.common.util.concurrent.internal.InternalFutures;
import com.google.common.util.concurrent.m;
import com.google.common.util.concurrent.t;
import com.json.o2;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class Futures extends e0 {

    class a implements Runnable {
        final /* synthetic */ Future a;

        a(Future future) {
            this.a = future;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.cancel(false);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [O] */
    class b<O> implements Future<O> {
        final /* synthetic */ Future a;
        final /* synthetic */ com.google.common.base.f b;

        b(Future future, com.google.common.base.f fVar) {
            this.a = future;
            this.b = fVar;
        }

        private O a(I i) throws ExecutionException {
            try {
                return (O) this.b.apply(i);
            } catch (Throwable th) {
                throw new ExecutionException(th);
            }
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return this.a.cancel(z);
        }

        @Override // java.util.concurrent.Future
        public O get() throws ExecutionException, InterruptedException {
            return a(this.a.get());
        }

        @Override // java.util.concurrent.Future
        public O get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return a(this.a.get(j, timeUnit));
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.a.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.a.isDone();
        }
    }

    class c implements Runnable {
        final /* synthetic */ g a;
        final /* synthetic */ ImmutableList b;
        final /* synthetic */ int c;

        c(g gVar, ImmutableList immutableList, int i) {
            this.a = gVar;
            this.b = immutableList;
            this.c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.f(this.b, this.c);
        }
    }

    private static final class d<V> implements Runnable {
        final Future<V> a;
        final c0<? super V> b;

        d(Future<V> future, c0<? super V> c0Var) {
            this.a = future;
            this.b = c0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable thTryInternalFastPathGetFailure;
            Future<V> future = this.a;
            if ((future instanceof com.google.common.util.concurrent.internal.a) && (thTryInternalFastPathGetFailure = InternalFutures.tryInternalFastPathGetFailure((com.google.common.util.concurrent.internal.a) future)) != null) {
                this.b.a(thTryInternalFastPathGetFailure);
                return;
            }
            try {
                this.b.onSuccess(Futures.getDone(this.a));
            } catch (Error e2) {
                e = e2;
                this.b.a(e);
            } catch (RuntimeException e3) {
                e = e3;
                this.b.a(e);
            } catch (ExecutionException e4) {
                this.b.a(e4.getCause());
            }
        }

        public String toString() {
            return MoreObjects.toStringHelper(this).j(this.b).toString();
        }
    }

    public static final class e<V> {
        private final boolean a;
        private final ImmutableList<h0<? extends V>> b;

        private e(boolean z, ImmutableList<h0<? extends V>> immutableList) {
            this.a = z;
            this.b = immutableList;
        }

        /* synthetic */ e(boolean z, ImmutableList immutableList, a aVar) {
            this(z, immutableList);
        }
    }

    private static final class f<T> extends m<T> {
        private g<T> h;

        private f(g<T> gVar) {
            this.h = gVar;
        }

        /* synthetic */ f(g gVar, a aVar) {
            this(gVar);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public boolean cancel(boolean z) {
            g<T> gVar = this.h;
            if (!super.cancel(z)) {
                return false;
            }
            Objects.requireNonNull(gVar);
            gVar.g(z);
            return true;
        }

        @Override // com.google.common.util.concurrent.m
        protected void m() {
            this.h = null;
        }

        @Override // com.google.common.util.concurrent.m
        protected String y() {
            g<T> gVar = this.h;
            if (gVar == null) {
                return null;
            }
            int length = ((g) gVar).f3979d.length;
            int i = ((g) gVar).c.get();
            StringBuilder sb = new StringBuilder(49);
            sb.append("inputCount=[");
            sb.append(length);
            sb.append("], remaining=[");
            sb.append(i);
            sb.append(o2.i.f6491e);
            return sb.toString();
        }
    }

    private static final class g<T> {
        private boolean a;
        private boolean b;
        private final AtomicInteger c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h0<? extends T>[] f3979d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private volatile int f3980e;

        private g(h0<? extends T>[] h0VarArr) {
            this.a = false;
            this.b = true;
            this.f3980e = 0;
            this.f3979d = h0VarArr;
            this.c = new AtomicInteger(h0VarArr.length);
        }

        /* synthetic */ g(h0[] h0VarArr, a aVar) {
            this(h0VarArr);
        }

        private void e() {
            if (this.c.decrementAndGet() == 0 && this.a) {
                for (h0<? extends T> h0Var : this.f3979d) {
                    if (h0Var != null) {
                        h0Var.cancel(this.b);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void f(ImmutableList<m<T>> immutableList, int i) {
            h0<? extends T> h0Var = this.f3979d[i];
            Objects.requireNonNull(h0Var);
            h0<? extends T> h0Var2 = h0Var;
            this.f3979d[i] = null;
            for (int i2 = this.f3980e; i2 < immutableList.size(); i2++) {
                if (immutableList.get(i2).D(h0Var2)) {
                    e();
                    this.f3980e = i2 + 1;
                    return;
                }
            }
            this.f3980e = immutableList.size();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g(boolean z) {
            this.a = true;
            if (!z) {
                this.b = false;
            }
            e();
        }
    }

    private static final class h<V> extends m.j<V> implements Runnable {
        private h0<V> h;

        h(h0<V> h0Var) {
            this.h = h0Var;
        }

        @Override // com.google.common.util.concurrent.m
        protected void m() {
            this.h = null;
        }

        @Override // java.lang.Runnable
        public void run() {
            h0<V> h0Var = this.h;
            if (h0Var != null) {
                D(h0Var);
            }
        }

        @Override // com.google.common.util.concurrent.m
        protected String y() {
            h0<V> h0Var = this.h;
            if (h0Var == null) {
                return null;
            }
            String strValueOf = String.valueOf(h0Var);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 11);
            sb.append("delegate=[");
            sb.append(strValueOf);
            sb.append(o2.i.f6491e);
            return sb.toString();
        }
    }

    private Futures() {
    }

    private static <T> h0<? extends T>[] a(Iterable<? extends h0<? extends T>> iterable) {
        return (h0[]) (iterable instanceof Collection ? (Collection) iterable : ImmutableList.copyOf(iterable)).toArray(new h0[0]);
    }

    public static <V> void addCallback(h0<V> h0Var, c0<? super V> c0Var, Executor executor) {
        Preconditions.checkNotNull(c0Var);
        h0Var.addListener(new d(h0Var, c0Var), executor);
    }

    public static <V> h0<List<V>> allAsList(Iterable<? extends h0<? extends V>> iterable) {
        return new t.a(ImmutableList.copyOf(iterable), true);
    }

    @SafeVarargs
    public static <V> h0<List<V>> allAsList(h0<? extends V>... h0VarArr) {
        return new t.a(ImmutableList.copyOf(h0VarArr), true);
    }

    private static void b(Throwable th) {
        if (!(th instanceof Error)) {
            throw new u0(th);
        }
        throw new u((Error) th);
    }

    public static <V, X extends Throwable> h0<V> catching(h0<? extends V> h0Var, Class<X> cls, com.google.common.base.f<? super X, ? extends V> fVar, Executor executor) {
        return l.F(h0Var, cls, fVar, executor);
    }

    public static <V, X extends Throwable> h0<V> catchingAsync(h0<? extends V> h0Var, Class<X> cls, s<? super X, ? extends V> sVar, Executor executor) {
        return l.G(h0Var, cls, sVar, executor);
    }

    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls) throws Exception {
        return (V) FuturesGetChecked.d(future, cls);
    }

    public static <V, X extends Exception> V getChecked(Future<V> future, Class<X> cls, long j, TimeUnit timeUnit) throws Exception {
        return (V) FuturesGetChecked.e(future, cls, j, timeUnit);
    }

    public static <V> V getDone(Future<V> future) throws ExecutionException {
        Preconditions.checkState(future.isDone(), "Future was expected to be done: %s", future);
        return (V) Uninterruptibles.getUninterruptibly(future);
    }

    public static <V> V getUnchecked(Future<V> future) {
        Preconditions.checkNotNull(future);
        try {
            return (V) Uninterruptibles.getUninterruptibly(future);
        } catch (ExecutionException e2) {
            b(e2.getCause());
            throw new AssertionError();
        }
    }

    public static <V> h0<V> immediateCancelledFuture() {
        f0.a<Object> aVar = f0.a.h;
        return aVar != null ? aVar : new f0.a();
    }

    public static <V> h0<V> immediateFailedFuture(Throwable th) {
        Preconditions.checkNotNull(th);
        return new f0.b(th);
    }

    public static <V> h0<V> immediateFuture(V v) {
        return v == null ? (h0<V>) f0.a : new f0(v);
    }

    public static h0<Void> immediateVoidFuture() {
        return f0.a;
    }

    public static <T> ImmutableList<h0<T>> inCompletionOrder(Iterable<? extends h0<? extends T>> iterable) {
        h0[] h0VarArrA = a(iterable);
        a aVar = null;
        g gVar = new g(h0VarArrA, aVar);
        ImmutableList.a aVarBuilderWithExpectedSize = ImmutableList.builderWithExpectedSize(h0VarArrA.length);
        for (int i = 0; i < h0VarArrA.length; i++) {
            aVarBuilderWithExpectedSize.a(new f(gVar, aVar));
        }
        ImmutableList<h0<T>> immutableListK = aVarBuilderWithExpectedSize.k();
        for (int i2 = 0; i2 < h0VarArrA.length; i2++) {
            h0VarArrA[i2].addListener(new c(gVar, immutableListK, i2), MoreExecutors.directExecutor());
        }
        return immutableListK;
    }

    public static <I, O> Future<O> lazyTransform(Future<I> future, com.google.common.base.f<? super I, ? extends O> fVar) {
        Preconditions.checkNotNull(future);
        Preconditions.checkNotNull(fVar);
        return new b(future, fVar);
    }

    public static <V> h0<V> nonCancellationPropagating(h0<V> h0Var) {
        if (h0Var.isDone()) {
            return h0Var;
        }
        h hVar = new h(h0Var);
        h0Var.addListener(hVar, MoreExecutors.directExecutor());
        return hVar;
    }

    public static <O> h0<O> scheduleAsync(r<O> rVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        t0 t0VarF = t0.F(rVar);
        t0VarF.addListener(new a(scheduledExecutorService.schedule(t0VarF, j, timeUnit)), MoreExecutors.directExecutor());
        return t0VarF;
    }

    public static h0<Void> submit(Runnable runnable, Executor executor) {
        t0 t0VarG = t0.G(runnable, null);
        executor.execute(t0VarG);
        return t0VarG;
    }

    public static <O> h0<O> submit(Callable<O> callable, Executor executor) {
        t0 t0VarH = t0.H(callable);
        executor.execute(t0VarH);
        return t0VarH;
    }

    public static <O> h0<O> submitAsync(r<O> rVar, Executor executor) {
        t0 t0VarF = t0.F(rVar);
        executor.execute(t0VarF);
        return t0VarF;
    }

    public static <V> h0<List<V>> successfulAsList(Iterable<? extends h0<? extends V>> iterable) {
        return new t.a(ImmutableList.copyOf(iterable), false);
    }

    @SafeVarargs
    public static <V> h0<List<V>> successfulAsList(h0<? extends V>... h0VarArr) {
        return new t.a(ImmutableList.copyOf(h0VarArr), false);
    }

    public static <I, O> h0<O> transform(h0<I> h0Var, com.google.common.base.f<? super I, ? extends O> fVar, Executor executor) {
        return p.F(h0Var, fVar, executor);
    }

    public static <I, O> h0<O> transformAsync(h0<I> h0Var, s<? super I, ? extends O> sVar, Executor executor) {
        return p.G(h0Var, sVar, executor);
    }

    public static <V> e<V> whenAllComplete(Iterable<? extends h0<? extends V>> iterable) {
        return new e<>(false, ImmutableList.copyOf(iterable), null);
    }

    @SafeVarargs
    public static <V> e<V> whenAllComplete(h0<? extends V>... h0VarArr) {
        return new e<>(false, ImmutableList.copyOf(h0VarArr), null);
    }

    public static <V> e<V> whenAllSucceed(Iterable<? extends h0<? extends V>> iterable) {
        return new e<>(true, ImmutableList.copyOf(iterable), null);
    }

    @SafeVarargs
    public static <V> e<V> whenAllSucceed(h0<? extends V>... h0VarArr) {
        return new e<>(true, ImmutableList.copyOf(h0VarArr), null);
    }

    public static <V> h0<V> withTimeout(h0<V> h0Var, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return h0Var.isDone() ? h0Var : s0.I(h0Var, j, timeUnit, scheduledExecutorService);
    }
}
