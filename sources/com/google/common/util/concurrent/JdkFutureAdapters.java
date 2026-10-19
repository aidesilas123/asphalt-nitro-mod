package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class JdkFutureAdapters {

    /* JADX INFO: Access modifiers changed from: private */
    static class a<V> extends z<V> implements h0<V> {
        private static final ThreadFactory a;
        private static final Executor b;
        private final Executor c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final v f3981d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final AtomicBoolean f3982e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private final Future<V> f3983f;

        static {
            ThreadFactory threadFactoryB = new r0().e(true).f("ListenableFutureAdapter-thread-%d").b();
            a = threadFactoryB;
            b = Executors.newCachedThreadPool(threadFactoryB);
        }

        a(Future<V> future) {
            this(future, b);
        }

        a(Future<V> future, Executor executor) {
            this.f3981d = new v();
            this.f3982e = new AtomicBoolean(false);
            this.f3983f = (Future) Preconditions.checkNotNull(future);
            this.c = (Executor) Preconditions.checkNotNull(executor);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void E() {
            try {
                Uninterruptibles.getUninterruptibly(this.f3983f);
            } catch (Throwable unused) {
            }
            this.f3981d.b();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.d1
        /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
        public Future<V> P() {
            return this.f3983f;
        }

        @Override // com.google.common.util.concurrent.h0
        public void addListener(Runnable runnable, Executor executor) {
            this.f3981d.a(runnable, executor);
            if (this.f3982e.compareAndSet(false, true)) {
                if (this.f3983f.isDone()) {
                    this.f3981d.b();
                } else {
                    this.c.execute(new Runnable() { // from class: com.google.common.util.concurrent.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.a.E();
                        }
                    });
                }
            }
        }
    }

    private JdkFutureAdapters() {
    }

    public static <V> h0<V> listenInPoolThread(Future<V> future) {
        return future instanceof h0 ? (h0) future : new a(future);
    }

    public static <V> h0<V> listenInPoolThread(Future<V> future, Executor executor) {
        Preconditions.checkNotNull(executor);
        return future instanceof h0 ? (h0) future : new a(future, executor);
    }
}
