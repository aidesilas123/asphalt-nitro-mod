package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: ForwardingFluentFuture.java */
/* JADX INFO: loaded from: classes3.dex */
final class y<V> extends FluentFuture<V> {
    private final h0<V> h;

    y(h0<V> h0Var) {
        this.h = (h0) Preconditions.checkNotNull(h0Var);
    }

    @Override // com.google.common.util.concurrent.m, com.google.common.util.concurrent.h0
    public void addListener(Runnable runnable, Executor executor) {
        this.h.addListener(runnable, executor);
    }

    @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.h.cancel(z);
    }

    @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return this.h.get();
    }

    @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return this.h.get(j, timeUnit);
    }

    @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
    public boolean isCancelled() {
        return this.h.isCancelled();
    }

    @Override // com.google.common.util.concurrent.m, java.util.concurrent.Future
    public boolean isDone() {
        return this.h.isDone();
    }

    @Override // com.google.common.util.concurrent.m
    public String toString() {
        return this.h.toString();
    }
}
