package com.google.common.util.concurrent;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import java.io.Closeable;
import java.io.IOException;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes3.dex */
public final class ClosingFuture<V> {
    private static final Logger a = Logger.getLogger(ClosingFuture.class.getName());
    private final AtomicReference<State> b = new AtomicReference<>(State.OPEN);
    private final j c = new j(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final FluentFuture<V> f3958d;

    enum State {
        OPEN,
        SUBSUMED,
        WILL_CLOSE,
        CLOSING,
        CLOSED,
        WILL_CREATE_VALUE_AND_CLOSER
    }

    class a implements Runnable {
        final /* synthetic */ Closeable a;

        a(Closeable closeable) {
            this.a = closeable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.a.close();
            } catch (IOException | RuntimeException e2) {
                ClosingFuture.a.log(Level.WARNING, "thrown by close()", e2);
            }
        }
    }

    static /* synthetic */ class b {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[State.values().length];
            a = iArr;
            try {
                iArr[State.SUBSUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[State.WILL_CREATE_VALUE_AND_CLOSER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[State.WILL_CLOSE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[State.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[State.CLOSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[State.OPEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    class c implements c0<Closeable> {
        final /* synthetic */ Executor b;

        c(Executor executor) {
            this.b = executor;
        }

        @Override // com.google.common.util.concurrent.c0
        public void a(Throwable th) {
        }

        @Override // com.google.common.util.concurrent.c0
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onSuccess(Closeable closeable) {
            ClosingFuture.this.c.a.a(closeable, this.b);
        }
    }

    class d implements Callable<V> {
        final /* synthetic */ k a;

        d(k kVar) {
            this.a = kVar;
        }

        @Override // java.util.concurrent.Callable
        public V call() throws Exception {
            return (V) this.a.a(ClosingFuture.this.c.a);
        }

        public String toString() {
            return this.a.toString();
        }
    }

    class e implements r<V> {
        final /* synthetic */ h a;

        e(h hVar) {
            this.a = hVar;
        }

        @Override // com.google.common.util.concurrent.r
        public h0<V> call() throws Exception {
            j jVar = new j(null);
            try {
                ClosingFuture<V> closingFutureA = this.a.a(jVar.a);
                closingFutureA.h(ClosingFuture.this.c);
                return ((ClosingFuture) closingFutureA).f3958d;
            } finally {
                ClosingFuture.this.c.d(jVar, MoreExecutors.directExecutor());
            }
        }

        public String toString() {
            return this.a.toString();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [U] */
    class f<U> implements i<V, U> {
        final /* synthetic */ s a;

        f(s sVar) {
            this.a = sVar;
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ClosingFuture closingFuture = ClosingFuture.this;
            State state = State.WILL_CLOSE;
            State state2 = State.CLOSING;
            closingFuture.i(state, state2);
            ClosingFuture.this.j();
            ClosingFuture.this.i(state2, State.CLOSED);
        }
    }

    public interface h<V> {
        ClosingFuture<V> a(q qVar) throws Exception;
    }

    public interface i<T, U> {
    }

    private static final class j extends IdentityHashMap<Closeable, Executor> implements Closeable {
        private final q a;
        private volatile boolean b;
        private volatile CountDownLatch c;

        private j() {
            this.a = new q(this);
        }

        /* synthetic */ j(c cVar) {
            this();
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.b) {
                return;
            }
            synchronized (this) {
                if (this.b) {
                    return;
                }
                this.b = true;
                for (Map.Entry<Closeable, Executor> entry : entrySet()) {
                    ClosingFuture.k(entry.getKey(), entry.getValue());
                }
                clear();
                if (this.c != null) {
                    this.c.countDown();
                }
            }
        }

        void d(Closeable closeable, Executor executor) {
            Preconditions.checkNotNull(executor);
            if (closeable == null) {
                return;
            }
            synchronized (this) {
                if (this.b) {
                    ClosingFuture.k(closeable, executor);
                } else {
                    put(closeable, executor);
                }
            }
        }
    }

    public interface k<V> {
        V a(q qVar) throws Exception;
    }

    public static class l {
        private static final com.google.common.base.f<ClosingFuture<?>, FluentFuture<?>> a = new a();
        private final j b;
        private final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected final ImmutableList<ClosingFuture<?>> f3963d;

        class a implements com.google.common.base.f<ClosingFuture<?>, FluentFuture<?>> {
            a() {
            }

            @Override // com.google.common.base.f
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public FluentFuture<?> apply(ClosingFuture<?> closingFuture) {
                return ((ClosingFuture) closingFuture).f3958d;
            }
        }

        private l(boolean z, Iterable<? extends ClosingFuture<?>> iterable) {
            this.b = new j(null);
            this.c = z;
            this.f3963d = ImmutableList.copyOf(iterable);
            Iterator<? extends ClosingFuture<?>> it = iterable.iterator();
            while (it.hasNext()) {
                it.next().h(this.b);
            }
        }

        /* synthetic */ l(boolean z, Iterable iterable, c cVar) {
            this(z, iterable);
        }
    }

    public static final class m<V1, V2> extends l {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ClosingFuture<V1> f3964e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ClosingFuture<V2> f3965f;

        private m(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2) {
            super(true, ImmutableList.of((ClosingFuture<V2>) closingFuture, closingFuture2), null);
            this.f3964e = closingFuture;
            this.f3965f = closingFuture2;
        }

        /* synthetic */ m(ClosingFuture closingFuture, ClosingFuture closingFuture2, c cVar) {
            this(closingFuture, closingFuture2);
        }
    }

    public static final class n<V1, V2, V3> extends l {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ClosingFuture<V1> f3966e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ClosingFuture<V2> f3967f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ClosingFuture<V3> f3968g;

        private n(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3) {
            super(true, ImmutableList.of((ClosingFuture<V3>) closingFuture, (ClosingFuture<V3>) closingFuture2, closingFuture3), null);
            this.f3966e = closingFuture;
            this.f3967f = closingFuture2;
            this.f3968g = closingFuture3;
        }

        /* synthetic */ n(ClosingFuture closingFuture, ClosingFuture closingFuture2, ClosingFuture closingFuture3, c cVar) {
            this(closingFuture, closingFuture2, closingFuture3);
        }
    }

    public static final class o<V1, V2, V3, V4> extends l {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ClosingFuture<V1> f3969e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ClosingFuture<V2> f3970f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ClosingFuture<V3> f3971g;
        private final ClosingFuture<V4> h;

        private o(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4) {
            super(true, ImmutableList.of((ClosingFuture<V4>) closingFuture, (ClosingFuture<V4>) closingFuture2, (ClosingFuture<V4>) closingFuture3, closingFuture4), null);
            this.f3969e = closingFuture;
            this.f3970f = closingFuture2;
            this.f3971g = closingFuture3;
            this.h = closingFuture4;
        }

        /* synthetic */ o(ClosingFuture closingFuture, ClosingFuture closingFuture2, ClosingFuture closingFuture3, ClosingFuture closingFuture4, c cVar) {
            this(closingFuture, closingFuture2, closingFuture3, closingFuture4);
        }
    }

    public static final class p<V1, V2, V3, V4, V5> extends l {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ClosingFuture<V1> f3972e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final ClosingFuture<V2> f3973f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final ClosingFuture<V3> f3974g;
        private final ClosingFuture<V4> h;
        private final ClosingFuture<V5> i;

        private p(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4, ClosingFuture<V5> closingFuture5) {
            super(true, ImmutableList.of((ClosingFuture<V5>) closingFuture, (ClosingFuture<V5>) closingFuture2, (ClosingFuture<V5>) closingFuture3, (ClosingFuture<V5>) closingFuture4, closingFuture5), null);
            this.f3972e = closingFuture;
            this.f3973f = closingFuture2;
            this.f3974g = closingFuture3;
            this.h = closingFuture4;
            this.i = closingFuture5;
        }

        /* synthetic */ p(ClosingFuture closingFuture, ClosingFuture closingFuture2, ClosingFuture closingFuture3, ClosingFuture closingFuture4, ClosingFuture closingFuture5, c cVar) {
            this(closingFuture, closingFuture2, closingFuture3, closingFuture4, closingFuture5);
        }
    }

    public static final class q {
        private final j a;

        q(j jVar) {
            this.a = jVar;
        }

        public <C extends Closeable> C a(C c, Executor executor) {
            Preconditions.checkNotNull(executor);
            if (c != null) {
                this.a.d(c, executor);
            }
            return c;
        }
    }

    private ClosingFuture(h<V> hVar, Executor executor) {
        Preconditions.checkNotNull(hVar);
        t0 t0VarF = t0.F(new e(hVar));
        executor.execute(t0VarF);
        this.f3958d = t0VarF;
    }

    private ClosingFuture(k<V> kVar, Executor executor) {
        Preconditions.checkNotNull(kVar);
        t0 t0VarH = t0.H(new d(kVar));
        executor.execute(t0VarH);
        this.f3958d = t0VarH;
    }

    private ClosingFuture(h0<V> h0Var) {
        this.f3958d = FluentFuture.from(h0Var);
    }

    @Deprecated
    public static <C extends Closeable> ClosingFuture<C> eventuallyClosing(h0<C> h0Var, Executor executor) {
        Preconditions.checkNotNull(executor);
        ClosingFuture<C> closingFuture = new ClosingFuture<>(Futures.nonCancellationPropagating(h0Var));
        Futures.addCallback(h0Var, new c(executor), MoreExecutors.directExecutor());
        return closingFuture;
    }

    public static <V> ClosingFuture<V> from(h0<V> h0Var) {
        return new ClosingFuture<>(h0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(j jVar) {
        i(State.OPEN, State.SUBSUMED);
        jVar.d(this.c, MoreExecutors.directExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(State state, State state2) {
        Preconditions.checkState(l(state, state2), "Expected state to be %s, but it was %s", state, state2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        a.log(Level.FINER, "closing {0}", this);
        this.c.close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void k(Closeable closeable, Executor executor) {
        if (closeable == null) {
            return;
        }
        try {
            executor.execute(new a(closeable));
        } catch (RejectedExecutionException e2) {
            Logger logger = a;
            Level level = Level.WARNING;
            if (logger.isLoggable(level)) {
                logger.log(level, String.format("while submitting close to %s; will close inline", executor), (Throwable) e2);
            }
            k(closeable, MoreExecutors.directExecutor());
        }
    }

    private boolean l(State state, State state2) {
        return this.b.compareAndSet(state, state2);
    }

    public static <V> ClosingFuture<V> submit(k<V> kVar, Executor executor) {
        return new ClosingFuture<>(kVar, executor);
    }

    public static <V> ClosingFuture<V> submitAsync(h<V> hVar, Executor executor) {
        return new ClosingFuture<>(hVar, executor);
    }

    public static l whenAllComplete(ClosingFuture<?> closingFuture, ClosingFuture<?>... closingFutureArr) {
        return whenAllComplete(Lists.asList(closingFuture, closingFutureArr));
    }

    public static l whenAllComplete(Iterable<? extends ClosingFuture<?>> iterable) {
        return new l(false, iterable, null);
    }

    public static l whenAllSucceed(ClosingFuture<?> closingFuture, ClosingFuture<?> closingFuture2, ClosingFuture<?> closingFuture3, ClosingFuture<?> closingFuture4, ClosingFuture<?> closingFuture5, ClosingFuture<?> closingFuture6, ClosingFuture<?>... closingFutureArr) {
        return whenAllSucceed(FluentIterable.of(closingFuture, closingFuture2, closingFuture3, closingFuture4, closingFuture5, closingFuture6).a(closingFutureArr));
    }

    public static l whenAllSucceed(Iterable<? extends ClosingFuture<?>> iterable) {
        return new l(true, iterable, null);
    }

    public static <V1, V2> m<V1, V2> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2) {
        return new m<>(closingFuture, closingFuture2, null);
    }

    public static <V1, V2, V3> n<V1, V2, V3> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3) {
        return new n<>(closingFuture, closingFuture2, closingFuture3, null);
    }

    public static <V1, V2, V3, V4> o<V1, V2, V3, V4> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4) {
        return new o<>(closingFuture, closingFuture2, closingFuture3, closingFuture4, null);
    }

    public static <V1, V2, V3, V4, V5> p<V1, V2, V3, V4, V5> whenAllSucceed(ClosingFuture<V1> closingFuture, ClosingFuture<V2> closingFuture2, ClosingFuture<V3> closingFuture3, ClosingFuture<V4> closingFuture4, ClosingFuture<V5> closingFuture5) {
        return new p<>(closingFuture, closingFuture2, closingFuture3, closingFuture4, closingFuture5, null);
    }

    public static <V, U> i<V, U> withoutCloser(s<V, U> sVar) {
        Preconditions.checkNotNull(sVar);
        return new f(sVar);
    }

    protected void finalize() {
        if (this.b.get().equals(State.OPEN)) {
            a.log(Level.SEVERE, "Uh oh! An open ClosingFuture has leaked and will close: {0}", this);
            m();
        }
    }

    public FluentFuture<V> m() {
        if (!l(State.OPEN, State.WILL_CLOSE)) {
            switch (b.a[this.b.get().ordinal()]) {
                case 1:
                    throw new IllegalStateException("Cannot call finishToFuture() after deriving another step");
                case 2:
                    throw new IllegalStateException("Cannot call finishToFuture() after calling finishToValueAndCloser()");
                case 3:
                case 4:
                case 5:
                    throw new IllegalStateException("Cannot call finishToFuture() twice");
                case 6:
                    throw new AssertionError();
            }
        }
        a.log(Level.FINER, "will close {0}", this);
        this.f3958d.addListener(new g(), MoreExecutors.directExecutor());
        return this.f3958d;
    }

    public String toString() {
        return MoreObjects.toStringHelper(this).d("state", this.b.get()).j(this.f3958d).toString();
    }
}
