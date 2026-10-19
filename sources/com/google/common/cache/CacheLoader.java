package com.google.common.cache;

import com.google.common.base.Preconditions;
import com.google.common.base.m;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CacheLoader<K, V> {

    class a extends CacheLoader<K, V> {
        final /* synthetic */ Executor b;

        a(Executor executor) {
            this.b = executor;
        }
    }

    private static final class b<K, V> extends CacheLoader<K, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final com.google.common.base.f<K, V> a;

        public b(com.google.common.base.f<K, V> fVar) {
            this.a = (com.google.common.base.f) Preconditions.checkNotNull(fVar);
        }
    }

    private static final class c<V> extends CacheLoader<Object, V> implements Serializable {
        private static final long serialVersionUID = 0;
        private final m<V> a;

        public c(m<V> mVar) {
            this.a = (m) Preconditions.checkNotNull(mVar);
        }
    }

    protected CacheLoader() {
    }

    public static <K, V> CacheLoader<K, V> asyncReloading(CacheLoader<K, V> cacheLoader, Executor executor) {
        Preconditions.checkNotNull(cacheLoader);
        Preconditions.checkNotNull(executor);
        return cacheLoader.new a(executor);
    }

    public static <K, V> CacheLoader<K, V> from(com.google.common.base.f<K, V> fVar) {
        return new b(fVar);
    }

    public static <V> CacheLoader<Object, V> from(m<V> mVar) {
        return new c(mVar);
    }
}
