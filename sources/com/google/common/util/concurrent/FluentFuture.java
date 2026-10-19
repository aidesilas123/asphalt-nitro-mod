package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.m;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FluentFuture<V> extends d0<V> {

    static abstract class a<V> extends FluentFuture<V> implements m.i<V> {
        a() {
        }

        @Override // com.google.common.util.concurrent.m, com.google.common.util.concurrent.h0
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final boolean cancel(boolean z) {
            return super.cancel(z);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final V get() throws ExecutionException, InterruptedException {
            return (V) super.get();
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return (V) super.get(j, timeUnit);
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
        public final boolean isDone() {
            return super.isDone();
        }
    }

    FluentFuture() {
    }

    @Deprecated
    public static <V> FluentFuture<V> from(FluentFuture<V> fluentFuture) {
        return (FluentFuture) Preconditions.checkNotNull(fluentFuture);
    }

    public static <V> FluentFuture<V> from(h0<V> h0Var) {
        return h0Var instanceof FluentFuture ? (FluentFuture) h0Var : new y(h0Var);
    }
}
