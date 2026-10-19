package com.google.common.cache;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class RemovalListeners {
    private RemovalListeners() {
    }

    public static <K, V> h<K, V> asynchronous(final h<K, V> hVar, final Executor executor) {
        Preconditions.checkNotNull(hVar);
        Preconditions.checkNotNull(executor);
        return new h() { // from class: com.google.common.cache.a
        };
    }
}
