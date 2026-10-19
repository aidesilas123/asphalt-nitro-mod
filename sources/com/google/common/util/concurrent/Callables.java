package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes3.dex */
public final class Callables {
    private Callables() {
    }

    public static <T> r<T> asAsyncCallable(final Callable<T> callable, final j0 j0Var) {
        Preconditions.checkNotNull(callable);
        Preconditions.checkNotNull(j0Var);
        return new r() { // from class: com.google.common.util.concurrent.d
            @Override // com.google.common.util.concurrent.r
            public final h0 call() {
                return j0Var.submit(callable);
            }
        };
    }

    static /* synthetic */ Object b(Object obj) throws Exception {
        return obj;
    }

    public static <T> Callable<T> returning(final T t) {
        return new Callable() { // from class: com.google.common.util.concurrent.c
            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                Object obj = t;
                Callables.b(obj);
                return obj;
            }
        };
    }
}
