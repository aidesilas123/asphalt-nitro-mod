package com.google.common.util.concurrent;

import com.google.common.collect.d1;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: compiled from: ForwardingFuture.java */
/* JADX INFO: loaded from: classes3.dex */
public abstract class z<V> extends d1 implements Future<V> {
    protected z() {
    }

    protected abstract Future<? extends V> C();

    public boolean cancel(boolean z) {
        return C().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() throws ExecutionException, InterruptedException {
        return C().get();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return C().get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return C().isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return C().isDone();
    }
}
