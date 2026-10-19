package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: ListeningExecutorService.java */
/* JADX INFO: loaded from: classes3.dex */
public interface j0 extends ExecutorService {
    @Override // java.util.concurrent.ExecutorService
    <T> h0<T> submit(Callable<T> callable);
}
