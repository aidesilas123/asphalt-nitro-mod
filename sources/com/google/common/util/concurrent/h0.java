package com.google.common.util.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: ListenableFuture.java */
/* JADX INFO: loaded from: classes3.dex */
public interface h0<V> extends Future<V> {
    void addListener(Runnable runnable, Executor executor);
}
